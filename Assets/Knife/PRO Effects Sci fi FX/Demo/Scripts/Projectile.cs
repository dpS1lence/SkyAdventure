using System.Collections;
using System.Collections.Generic;
using Unity.Collections;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Projectile component.
    /// </summary>
    public class Projectile : MonoBehaviour, ICollisionIgnore
    {
        /// <summary>
        /// Damage amount.
        /// </summary>
        [SerializeField] [Tooltip("Damage amount")] private float damage = 5f;
        /// <summary>
        /// Explosion fragment size.
        /// </summary>
        [SerializeField] [Tooltip("Explosion fragment size")] private float fragSize = 1f;
        /// <summary>
        /// Damage type.
        /// </summary>
        [SerializeField] [Tooltip("Damage type")] private DamageTypes damageType = DamageTypes.Explosion;
        /// <summary>
        /// Initial velocity of projectile (direction is forward of tranform).
        /// </summary>
        [SerializeField] [Tooltip("Initial velocity of projectile (direction is forward of tranform)")] private float speed = 5f;
        /// <summary>
        /// Explosion prefab.
        /// </summary>
        [SerializeField] [Tooltip("Explosion prefab")] private GameObject explosionPrefab;
        /// <summary>
        /// Scale of explosion effects.
        /// </summary>
        [SerializeField] [Tooltip("Scale of explosion effects")] private float exlposionScale = 1f;
        /// <summary>
        /// Detaching transform on Destroy.
        /// </summary>
        [SerializeField] [Tooltip("Detaching transform on Destroy")] private Transform detachOnDestroy;
        /// <summary>
        /// Damage method.
        /// </summary>
        [SerializeField] [Tooltip("Damage method")] DamageMethod damageMethod;
        /// <summary>
        /// Explosion radius.
        /// </summary>
        [SerializeField] [Tooltip("Explosion radius")] private float explosionRadius = 10f;

        private Rigidbody body;
        private Collider projectileCollider;

        private void OnEnable()
        {
            body = GetComponent<Rigidbody>();
            body.velocity = transform.forward * speed;
            projectileCollider = GetComponentInChildren<Collider>();
        }

        /// <summary>
        /// ICollisionIgnore.IgnoreCollision implementation. Enable ignoring of collision between projectile collider and collider.
        /// </summary>
        /// <param name="collider">collider that should be ignored</param>
        public void IgnoreCollision(Collider collider)
        {
            Physics.IgnoreCollision(collider, projectileCollider);
        }

        private void OnCollisionEnter(Collision collision)
        {
            projectileCollider.enabled = false;
            if (explosionPrefab != null)
            {
                var instance = Instantiate(explosionPrefab, transform.position, transform.rotation);
                instance.transform.localScale *= exlposionScale;

                Destroy(instance, 10);
            }
            if (detachOnDestroy != null)
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
                    Destroy(gameObject);
                    break;
            }
        }
    }
}