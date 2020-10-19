using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class RigidbodiesForceField : MonoBehaviour
    {
        [SerializeField] private SphereCollider sphereCollider;
        [SerializeField] private float force = 1000f;
        [SerializeField] private float orbitTorque = 1000f;
        [SerializeField] private AnimationCurve forceByDistance = AnimationCurve.Linear(0, 0, 1, 1);
        [SerializeField] private float workingTime = 3f;
        [SerializeField] private bool continuous;
        [SerializeField] private float enableDelay = 0f;
        [SerializeField] [Range(0f, 2f)] private float antiGravityFactor = 0f;

        private List<Rigidbody> bodies = new List<Rigidbody>();

        private float elapsedTime;

        private void OnTriggerEnter(Collider other)
        {
            if (continuous)
            {
                var body = other.attachedRigidbody;
                if (body != null && !body.isKinematic)
                {
                    bodies.Add(body);
                }
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (continuous)
            {
                var body = other.attachedRigidbody;
                if (body != null && !body.isKinematic)
                {
                    bodies.Remove(body);
                }
            }
        }

        private void OnEnable()
        {
            elapsedTime = 0;
            StartCoroutine(Enable());
        }

        private IEnumerator Enable()
        {
            yield return new WaitForSeconds(enableDelay);
            if (!continuous)
            {
                Collider[] colliders = Physics.OverlapSphere(transform.position, sphereCollider.radius);
                Quaternion rotate = Quaternion.AngleAxis(90, Vector3.up);

                foreach (var c in colliders)
                {
                    var body = c.attachedRigidbody;
                    if (body != null && !body.isKinematic)
                    {
                        var direction = transform.position - body.position;

                        float distance = direction.magnitude;

                        float distanceFactor = forceByDistance.Evaluate(distance / sphereCollider.radius);

                        body.AddForce(direction.normalized * distanceFactor * force);

                        var orbitTorqueDirection = rotate * direction.normalized;

                        body.AddForce(orbitTorqueDirection * orbitTorque * Time.deltaTime);
                    }
                }
            }
        }

        private void FixedUpdate()
        {
            if (continuous)
            {
                elapsedTime += Time.deltaTime;
                if (elapsedTime > enableDelay)
                {
                    if (elapsedTime - enableDelay < workingTime)
                    {
                        Quaternion rotate = Quaternion.AngleAxis(90, Vector3.up);

                        foreach (var b in bodies)
                        {
                            if (b == null)
                                continue;

                            var direction = transform.position - b.position;

                            float distance = direction.magnitude;

                            float distanceFactor = forceByDistance.Evaluate(distance / sphereCollider.radius);

                            b.AddForce(direction.normalized * distanceFactor * force * Time.deltaTime);

                            var orbitTorqueDirection = rotate * direction.normalized;

                            b.AddForce(orbitTorqueDirection * orbitTorque * Time.deltaTime);
                            b.AddForce(-Physics.gravity * antiGravityFactor * distanceFactor, ForceMode.Acceleration);
                        }
                    }
                }
            }
        }
    }
}