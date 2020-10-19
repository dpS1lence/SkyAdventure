using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects
{
    /// <summary>
    /// Component which emit 'bullet' and inflict damage to IHittable.
    /// </summary>
    [ExecuteInEditMode]
    public class AutoFire : MonoBehaviour
    {
        /// <summary>
        /// Represents bullet size, which sended in DamageData struct.
        /// </summary>
        [SerializeField] [Tooltip("Represents bullet size, which sended in DamageData struct")] private float bulletSize = 1f;
        /// <summary>
        /// Enabling GameObject when Fire is called.
        /// </summary>
        [SerializeField] [Tooltip("Enabling GameObject when Fire is called")] private GameObject enableOnFire = null;
        /// <summary>
        /// Flag to save current hit position.
        /// </summary>
        [SerializeField] [Tooltip("Flag to save current hit position")] private bool saveHitPoint = false;
        /// <summary>
        /// When flag is enabled transform is rotating to Saved Hit Point with LookAt.
        /// </summary>
        [SerializeField] [Tooltip("When flag is enabled transform is rotating to Saved Hit Point with LookAt")] private bool loadHitPoint = false;
        /// <summary>
        /// Position of saved hit point.
        /// </summary>
        [SerializeField] [Tooltip("Position of saved hit point")] private Vector3 savedHitPoint;
        /// <summary>
        /// Position of last hit point.
        /// </summary>
        [SerializeField] [Tooltip("Position of last hit point")] private Vector3 lastHitPoint;
        [SerializeField] private GameObject projectile;

        /// <summary>
        /// Bullet simulating that inflicts damage to collider that will be hitted by Raycast.
        /// </summary>
        public void Fire()
        {
            var hit = Raycast();

            if (projectile == null)
            {
                if (hit.collider != null)
                {
                    var hittable = hit.collider.GetComponent<IHittable>();
                    if (hittable != null)
                    {
                        hittable.TakeDamage(new DamageData[]
                        {
                        new DamageData()
                        {
                            amount = 10,
                            damageType = DamageTypes.Bullet,
                            direction = transform.forward,
                            normal = hit.normal,
                            point = hit.point,
                            size =  bulletSize
                        }
                        });
                    }
                }

                if (enableOnFire != null)
                {
                    enableOnFire.SetActive(false);
                    enableOnFire.SetActive(true);
                }
            }
            else
            {
                GameObject instance = Instantiate(projectile, transform.position, transform.rotation);

                instance.SetActive(true);
            }
        }

        private void OnValidate()
        {
            if(saveHitPoint)
            {
                savedHitPoint = lastHitPoint;
            }
        }

        private void Update()
        {
            if(loadHitPoint)
            {
                transform.LookAt(savedHitPoint);
            }
        }

        private void OnDrawGizmos()
        {
            Gizmos.color = Color.red;
            var hit = Raycast();

            if(hit.collider != null)
            {
                Gizmos.DrawLine(transform.position, hit.point);
                Gizmos.DrawWireSphere(hit.point, 0.1f);
            }
            else
            {
                var hitPoint = transform.position + transform.forward * 1000f;
                Gizmos.DrawLine(transform.position, hitPoint);
                Gizmos.DrawWireSphere(hitPoint, 0.1f);
            }
        }

        private RaycastHit Raycast()
        {
            Ray r = new Ray(transform.position, transform.forward);
            RaycastHit hitInfo;
            if(Physics.Raycast(r, out hitInfo))
            {
                lastHitPoint = hitInfo.point;
                return hitInfo;
            }
            return default(RaycastHit);
        }
    }
}