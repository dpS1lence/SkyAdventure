using Knife.Effects;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class Laser : MonoBehaviour
    {
        [SerializeField] private float maxDistance = 15f;
        [SerializeField] private GameObject impactPrefab;
        [SerializeField] private float thresholdByNormal = 0.05f;
        [SerializeField] private LineRenderer laser;
        [SerializeField] private Transform laserScalePivot;
        [SerializeField] private ParticleSystem particles;
        [SerializeField] private float bulletSize = 0.5f;
        [SerializeField] private LayerMask layerMask = ~0;

        private Vector3 targetPoint;

        private IHittable hittable;
        private Ray r;
        private RaycastHit hit;

        private void OnEnable()
        {
            r = new Ray(transform.position, transform.forward);

            if (Physics.Raycast(r, out hit, maxDistance, layerMask, QueryTriggerInteraction.Ignore))
            {
                hittable = hit.collider.GetComponent<IHittable>();
                targetPoint = hit.point;
            }
            else
            {
                hittable = null;
                targetPoint = r.GetPoint(maxDistance);
            }

            laser.SetPosition(0, transform.position);
            laser.SetPosition(1, targetPoint);

            if(laserScalePivot != null)
            {
                var scale = laserScalePivot.localScale;
                scale.z = Vector3.Distance(targetPoint, transform.position);
                laserScalePivot.localScale = scale;
            }

            if (hittable != null)
            {
                DamageData damage = new DamageData();
                damage.amount = 10;
                damage.point = hit.point;
                damage.normal = hit.normal;
                damage.direction = r.direction;
                damage.size = bulletSize;
                damage.damageType = DamageTypes.Bullet;

                hittable.TakeDamage(new DamageData[1] { damage });
            }

            if (particles != null)
            {
                StartCoroutine(SpawnLineParticles());
            }

            if (impactPrefab && hit.collider != null)
            {
                GameObject impact = Instantiate(impactPrefab, hit.point + hit.normal * thresholdByNormal, Quaternion.identity);

                Destroy(impact, 10f);
            }

            Destroy(gameObject, 1f);
        }

        private IEnumerator SpawnLineParticles()
        {
            particles.transform.position = transform.position;
            particles.Clear();
            particles.Play();
            yield return null;
            particles.transform.position = targetPoint;
        }

        private void Update()
        {
            laser.SetPosition(0, transform.position);
        }
    }
}