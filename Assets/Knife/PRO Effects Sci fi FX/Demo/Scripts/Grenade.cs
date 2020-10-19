using System;
using System.Collections.Generic;
using Unity.Collections;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Grenade component.
    /// </summary>
    public class Grenade : MonoBehaviour, ICollisionIgnore
    {
        /// <summary>
        /// Damage amount.
        /// </summary>
        [SerializeField] [Tooltip("Damage amount")] private float damage = 5f;
        /// <summary>
        /// Initial velocity of grenade (direction is forward of tranform).
        /// </summary>
        [SerializeField] [Tooltip("Initial velocity of grenade (direction is forward of tranform)")] private float speed = 5f;
        /// <summary>
        /// Initial angular speed of grenade.
        /// </summary>
        [SerializeField] [Tooltip("Initial angular speed of grenade")] private Vector3 angularSpeed = new Vector3(60, 0, 0);
        /// <summary>
        /// Explosion fragment size.
        /// </summary>
        [SerializeField] [Tooltip("Explosion fragment size")] private float fragSize = 1f;
        /// <summary>
        /// Damage type.
        /// </summary>
        [SerializeField] [Tooltip("Damage type")] private DamageTypes damageType = DamageTypes.Explosion;
        /// <summary>
        /// Explode event.
        /// </summary>
        [SerializeField] [Tooltip("Explode event")] ExplodeEvent explodeEvent;
        /// <summary>
        /// Damage method.
        /// </summary>
        [SerializeField] [Tooltip("Damage method")] DamageMethod damageMethod;
        /// <summary>
        /// Explosion prefab.
        /// </summary>
        [SerializeField] [Tooltip("Explosion prefab")] private GameObject explosionPrefab;
        /// <summary>
        /// Explode timer.
        /// </summary>
        [SerializeField] [Tooltip("Explode timer")] private float explodeTime = 3f;
        /// <summary>
        /// Explosion radius.
        /// </summary>
        [SerializeField] [Tooltip("Explosion radius")] private float explosionRadius = 10f;
        /// <summary>
        /// Rotates transform forward along velocity.
        /// </summary>
        [SerializeField] [Tooltip("Rotates transform forward along velocity")] private bool rotateAlongVelocity = false;
        /// <summary>
        /// Detaching transform on Destroy.
        /// </summary>
        [SerializeField] [Tooltip("Detaching transform on Destroy")] private Transform detachOnDestroy;
        [SerializeField] private bool freezeOnTimerEnd = false;
        [SerializeField] private float destroyDelay = 0f;

        private Rigidbody body;
        private float elapsedTime = 0;
        private bool isExploded = false;
        private Collider grenadeCollider;

        private Vector3 oldPosition;
        private RaycastHit hit;
        private bool hasHit;

        private void OnEnable()
        {
            body = GetComponent<Rigidbody>();
            body.velocity = transform.forward * speed;

            float rotationMagnitude = angularSpeed.magnitude;
            Vector3 axis = transform.TransformDirection(angularSpeed.normalized).normalized;

            body.angularVelocity = axis * rotationMagnitude;
            grenadeCollider = GetComponent<Collider>();
            oldPosition = body.position;
        }

        /// <summary>
        /// ICollisionIgnore.IgnoreCollision implementation. Enable ignoring of collision between grenade collider and collider.
        /// </summary>
        /// <param name="collider">collider that should be ignored</param>
        public void IgnoreCollision(Collider collider)
        {
            Physics.IgnoreCollision(collider, grenadeCollider);
        }

        private void Update()
        {
            if (!isExploded && explodeEvent == ExplodeEvent.Time)
            {
                elapsedTime += Time.deltaTime;

                if (elapsedTime >= explodeTime)
                {
                    Explode(null);
                }
            }

            if(rotateAlongVelocity)
            {
                transform.rotation = Quaternion.LookRotation(body.velocity.normalized);
            }
        }

        private void FixedUpdate()
        {
            Raycast();

            oldPosition = body.position;
        }

        private void Raycast()
        {
            Ray r = new Ray(body.position, body.velocity.normalized);
            if (Physics.Raycast(r, out hit, body.velocity.magnitude * Time.deltaTime))
            {
                hasHit = true;
            }
            else
            {
                hasHit = false;
            }

            if(!hasHit)
            {
                Vector3 direction = body.position - oldPosition;
                r = new Ray(oldPosition, direction.normalized);

                if (Physics.Raycast(r, out hit, direction.magnitude))
                {
                    hasHit = true;
                }
                else
                {
                    hasHit = false;
                }
            }
        }

        private void OnCollisionEnter(Collision collision)
        {
            if(explodeEvent == ExplodeEvent.Collision)
            {
                if (!isExploded)
                {
                    Explode(collision);
                }
            }
        }

        private void Explode(Collision collision)
        {
            grenadeCollider.enabled = false;
            if (!hasHit)
            {
                Raycast();
            }

            if (freezeOnTimerEnd)
                body.isKinematic = true;

            if (explosionPrefab != null)
            {
                Vector3 position;
                Quaternion rotation;

                if(hasHit)
                {
                    position = hit.point;
                    rotation = Quaternion.FromToRotation(Vector3.up, hit.normal);
                }
                else
                {
                    position = transform.position;
                    rotation = Quaternion.identity;
                }

                var instance = Instantiate(explosionPrefab, position, rotation);

                if (collision != null)
                {
                    var collisionHandlers = instance.GetComponentsInChildren<ICollisionHandler>();
                    foreach (var ch in collisionHandlers)
                    {
                        ch.CollisionEnter(collision);
                    }
                    var autoPlacers = instance.GetComponentsInChildren<IAutoPlacer>();
                    foreach (var ap in autoPlacers)
                    {
                        ap.AutoPlace();
                    }
                }
                else
                {
                    var autoPlacers = instance.GetComponentsInChildren<IAutoPlacer>();
                    foreach (var ap in autoPlacers)
                    {
                        ap.AutoPlace();
                    }
                }

                Destroy(instance, 10);
            }

            if(detachOnDestroy != null)
            {
                detachOnDestroy.SetParent(null);
                Destroy(detachOnDestroy.gameObject, 5);
            }

            switch (damageMethod)
            {
                case DamageMethod.OverlapSphere:
                    var targets = Physics.OverlapSphere(transform.position, explosionRadius);

                    foreach (var target in targets)
                    {
                        var hittable = target.GetComponent<IHittable>();
                        if (hittable != null)
                        {
                            var center = target.bounds.center;

                            var ray = new Ray(transform.position, (center - transform.position).normalized);
                            RaycastHit hitInfo;
                            if (target.Raycast(ray, out hitInfo, Mathf.Infinity))
                            {
                                var point = hitInfo.point;
                                var normal = hitInfo.normal;

                                DamageData damage = new DamageData()
                                {
                                    amount = this.damage * (hitInfo.distance / explosionRadius),
                                    direction = ray.direction,
                                    normal = normal,
                                    point = point,
                                    size = fragSize,
                                    damageType = damageType
                                };

                                hittable.TakeDamage(new DamageData[] { damage });
                            }
                        }
                    }
                    Destroy(gameObject, destroyDelay);
                    break;
                case DamageMethod.Disable:
                    Destroy(gameObject, destroyDelay);
                    break;
            }
            isExploded = true;
        }

        public enum ExplodeEvent
        {
            Time,
            Collision
        }
    }
}