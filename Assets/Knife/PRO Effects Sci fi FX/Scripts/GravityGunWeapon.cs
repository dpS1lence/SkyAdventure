using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    public class GravityGunWeapon : MonoBehaviour, IWeapon
    {
        public enum FireType
        {
            Bullets,
            Constant
        }

        public event Action<Vector2> OnFire;

        public event Action OnGrab;
        public event Action OnLeave;
        public event Action OnThrow;

        [SerializeField] private Transform attractPoint;
        [SerializeField] private float attractForce = 100;
        [SerializeField] private AnimationCurve attractByDistanceCurve = AnimationCurve.Linear(0f, 1f, 1f, 0.1f);
        [SerializeField] private AnimationCurve dragByDistanceCurve = AnimationCurve.Linear(0f, 0f, 1f, 1f);
        [SerializeField] private AnimationCurve angularDragByDistanceCurve = AnimationCurve.Linear(0f, 0f, 1f, 1f);
        [SerializeField] private float attractMaxDistance = 15;
        [SerializeField] private float throwForce = 3000f;
        [SerializeField] private float attachDistanceThreshold = 1f;
        [SerializeField] private float maximumMass = 15f;

        [SerializeField] private float activateInterval = 0.1f;

        [SerializeField] private ParticleGroupEmitter grabEmitter;
        [SerializeField] private ParticleGroupEmitter throwEmitter;

        /// <summary>
        /// Player camera.
        /// </summary>
        [Tooltip("Player camera")] public Camera playerCamera;
        /// <summary>
        /// Raycast mask.
        /// </summary>
        [Tooltip("Raycast mask")] public LayerMask RigidbodiesMask;

        /// <summary>
        /// Default fov of player camera.
        /// </summary>
        [Tooltip("Default fov of player camera")] public float DefaultFov = 60f;

        protected Animator handsAnimator;

        private bool isGrabbed = false;
        private bool isGrabbing = false;
        private bool isAttached = false;
        private bool isThrown = false;
        private bool isLeaved = false;
        private bool isFreezed = false;
        private float currentFov;
        private List<Vector3> grabbedBodyPositions = new List<Vector3>();
        private Rigidbody grabbedBody;
        private Collider[] grabbedBodyColliders;

        private Transform grabbedBodyParent;
        private float grabbedBodyDrag;
        private float grabbedBodyAngularDrag;

        private float lastActivationTime;

        private const int maxOldPositions = 15;

        /// <summary>
        /// Current fov of camera.
        /// </summary>
        public float CurrentFov
        {
            get
            {
                return currentFov;
            }
        }

        public bool isActive => gameObject.activeSelf;

        void Start()
        {
            handsAnimator = GetComponent<Animator>();
        }

        private void OnEnable()
        {
            currentFov = playerCamera.fieldOfView;
            OnEnableHook();
        }

        private void OnDisable()
        {
            currentFov = DefaultFov;
            OnDisableHook();
        }

        protected virtual void OnEnableHook()
        {

        }

        protected virtual void OnDisableHook()
        {

        }

        void Update()
        {
            if (!isFreezed)
            {
                if (Time.time >= lastActivationTime + activateInterval)
                {
                    if (Input.GetMouseButtonDown(1))
                    {
                        Grab();
                        lastActivationTime = Time.time;
                    }

                    if (Input.GetMouseButtonDown(0))
                    {
                        Throw();
                        lastActivationTime = Time.time;
                    }
                }
                if (Input.GetMouseButtonUp(1))
                {
                    Leave();
                }
            }
            currentFov = DefaultFov;
        }

        private void FixedUpdate()
        {
            if(isGrabbed)
            {
                if(grabbedBodyPositions.Count > maxOldPositions)
                {
                    grabbedBodyPositions.RemoveAt(0);
                }
                grabbedBodyPositions.Add(grabbedBody.position);

                Vector3 direction = grabbedBody.worldCenterOfMass - attractPoint.position;

                float distance = direction.magnitude;

                float distanceFraction = distance / attractMaxDistance;

                float attractValue = attractByDistanceCurve.Evaluate(distanceFraction);

                if (grabbedBody.mass < maximumMass)
                {
                    if (distance < attachDistanceThreshold)
                    {
                        grabbedBody.transform.SetParent(attractPoint);
                        isAttached = true;
                    }

                    grabbedBody.drag = dragByDistanceCurve.Evaluate(distanceFraction);
                    grabbedBody.angularDrag = angularDragByDistanceCurve.Evaluate(distanceFraction);

                    float velocity = attractValue * attractForce * Time.deltaTime;

                    grabbedBody.AddForce(velocity * -Vector3.ClampMagnitude(direction, 1f), ForceMode.Force);
                    grabbedBody.AddForce(-Physics.gravity * distanceFraction, ForceMode.Acceleration);
                }
            }
            else
            {
                if(isGrabbing)
                {
                    FindObjectToGrab();
                }
            }
        }

        protected void Leave()
        {
            if (isLeaved)
                return;

            if (!isThrown)
            {
                OnLeave?.Invoke();

                grabEmitter.EnableEmission(false);
                grabEmitter.Fade();
                handsAnimator.CrossFadeInFixedTime("Reset", 0.05f);
                handsAnimator.SetBool("IsGrabbed", false);
            }

            if (isGrabbed)
            {
                grabbedBody.transform.SetParent(grabbedBodyParent);
                grabbedBody.angularDrag = grabbedBodyAngularDrag;
                grabbedBody.drag = grabbedBodyDrag;

                Vector3 velocity = Vector3.zero;
                for (int i = 0; i < grabbedBodyPositions.Count - 1; i++)
                {
                    velocity += (grabbedBodyPositions[i + 1] - grabbedBodyPositions[i]) / Time.fixedDeltaTime;
                }
                velocity /= grabbedBodyPositions.Count;

                grabbedBody.velocity = velocity;

                grabbedBody = null;
                isGrabbed = false;
                isAttached = false;
            }

            isGrabbing = false;
            isLeaved = true;
        }

        protected void Grab()
        {
            OnGrab?.Invoke();

            isLeaved = false;
            isThrown = false;

            grabbedBodyPositions.Clear();
            handsAnimator.CrossFadeInFixedTime("Grab", 0.05f);

            grabbedBody = null;
            isGrabbed = false;
            isGrabbing = true;

            FindObjectToGrab();

            grabEmitter.Show();
            grabEmitter.EnableEmission(true);
            grabEmitter.Emit(1);
            handsAnimator.SetBool("IsGrabbed", true);
        }

        private void FindObjectToGrab()
        {
            Ray r = new Ray(playerCamera.transform.position, playerCamera.transform.forward);

            List<RaycastHit> hits = SphereCastAll(r, 0.2f, attractMaxDistance, RigidbodiesMask);

            // select only non-kinematic rigid bodies
            hits.RemoveAll(h =>
            {
                if (h.collider.attachedRigidbody != null)
                    return h.collider.attachedRigidbody.isKinematic || h.collider.attachedRigidbody.mass >= maximumMass;
                else
                    return true;
            });

            //if (Physics.SphereCast(r, 0.2f, out hit, attractMaxDistance, RigidbodiesMask))
            if (hits.Count > 0)
            {
                grabbedBody = hits[0].collider.attachedRigidbody;
                if (grabbedBody)
                {
                    grabbedBodyColliders = grabbedBody.GetComponentsInChildren<Collider>();
                    grabbedBodyParent = grabbedBody.transform.parent;
                    grabbedBodyDrag = grabbedBody.drag;
                    grabbedBodyAngularDrag = grabbedBody.angularDrag;
                    isGrabbed = true;
                }
            }
        }

        private List<RaycastHit> SphereCastAll(Ray r, float radius, float maxDistance, int mask)
        {
            List<RaycastHit> hits = Physics.SphereCastAll(r.origin, radius, r.direction, maxDistance, mask).ToList();

            return hits.OrderBy(h => Vector3.Distance(r.origin, h.point)).ToList();
        }

        private IEnumerator DisableGrabParticlesWithDelay()
        {
            grabEmitter.EnableEmission(false);
            yield return new WaitForSeconds(0.1f);
            grabEmitter.ClearParticles();
        }

        private void Throw()
        {
            OnThrow?.Invoke();
            isThrown = true;
            isGrabbing = false;

            StartCoroutine(DisableGrabParticlesWithDelay());
            throwEmitter.Emit(1);
            handsAnimator.Play("Throw", 0, 0);
            handsAnimator.SetBool("IsGrabbed", false);
            if (isAttached)
            {
                grabbedBody.transform.SetParent(grabbedBodyParent);
                grabbedBody.drag = grabbedBodyDrag;
                grabbedBody.angularDrag = grabbedBodyAngularDrag;

                Ray r = new Ray(playerCamera.transform.position, playerCamera.transform.forward);
                RaycastHit hit;

                Vector3 direction;

                foreach (var c in grabbedBodyColliders)
                {
                    c.enabled = false;
                }
                if (Physics.Raycast(r, out hit))
                {
                    direction = hit.point - attractPoint.position;
                }
                else
                {
                    direction = r.GetPoint(1000);
                }
                foreach (var c in grabbedBodyColliders)
                {
                    c.enabled = true;
                }

                grabbedBody.AddForce(direction.normalized * throwForce);

                grabbedBody = null;
                isGrabbed = false;
                isAttached = false;
            }
            else
            {
                Ray r = new Ray(playerCamera.transform.position, playerCamera.transform.forward);

                List<RaycastHit> hits = SphereCastAll(r, 0.35f, attractMaxDistance, RigidbodiesMask);

                if(hits.Count > 0)
                {
                    foreach(var h in hits)
                    {
                        var body = h.collider.attachedRigidbody;
                        if(body != null)
                        {
                            var point = h.point;
                            var direction = point - r.origin;

                            body.AddForceAtPosition(direction.normalized * throwForce, point);
                        }
                    }
                }

                /*RaycastHit hit;

                if (Physics.Raycast(r, out hit, attractMaxDistance, RigidbodiesMask))
                {
                    Rigidbody body = hit.collider.attachedRigidbody;

                    if (body)
                    {
                        body.AddForceAtPosition(r.direction * throwForce, hit.point);
                    }
                }*/
            }
        }

        /// <summary>
        /// Freeze weapon control.
        /// </summary>
        /// <param name="value">is freezed</param>
        public void Freeze(bool value)
        {
            isFreezed = value;
        }

        public void SetActive(bool value)
        {
            gameObject.SetActive(value);
        }
    }
}