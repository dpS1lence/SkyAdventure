using Knife.Effects;
using Knife.Effects.SimpleController;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class Lightning : MonoBehaviour, ICustomActiveState
    {
        [SerializeField] private float maxDistance = 15f;
        [SerializeField] private GameObject impactPrefab;
        [SerializeField] private Light lightningLight;
        [SerializeField] private float damageDelay = 0.15f;
        [SerializeField] private float thresholdByNormal = 0.05f;
        [SerializeField] private bool updateEveryFrame = false;
        [SerializeField] private float applyDamageInterval = 0.05f;
        [SerializeField] private bool destroyAfterDamage = true;
        [SerializeField] private Animator[] lightningAnimators;
        [SerializeField] private GameObject[] additionalObjects;
        [SerializeField] private ParticleGroupEmitter effect;
        [SerializeField] private float disableDelay = 0.5f;
        [SerializeField] private LayerMask layerMask = ~0;
        [SerializeField] private float bulletSize = 1.5f;

        private Vector3 targetPoint;

        private IHittable hittable;
        private Ray r;
        private RaycastHit hit;
        private float elapsedTime = 0;
        private bool damaged = false;

        private Coroutine disablingCoroutine;
        private bool isEnabled = false;

        private void OnEnable()
        {
            damaged = false;
            Raycast();
            StartCoroutine(ApplyDamageDelayed());
        }

        private void Raycast()
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

            float distance = Vector3.Distance(transform.position, targetPoint);

            Vector3 scale = transform.localScale;
            scale.z = distance;
            lightningLight.range = distance * 2;

            transform.localScale = scale;
        }

        private IEnumerator ApplyDamageDelayed()
        {
            yield return new WaitForSeconds(damageDelay);
            damaged = true;
            ApplyDamage();
        }

        private void ApplyDamage()
        {
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

            if (impactPrefab && hit.collider != null)
            {
                GameObject impact = Instantiate(impactPrefab, hit.point + hit.normal * thresholdByNormal, Quaternion.LookRotation(hit.normal));

                Destroy(impact, 10f);
            }

            if (destroyAfterDamage)
            {
                Destroy(gameObject, 1f);
            }
        }

        private void Update()
        {
            if(updateEveryFrame && isEnabled)
            {
                if (damaged)
                {
                    Raycast();

                    elapsedTime += Time.deltaTime;

                    if (elapsedTime >= applyDamageInterval)
                    {
                        elapsedTime = 0;
                        ApplyDamage();
                    }
                }
            }

            transform.LookAt(targetPoint);
        }

        private IEnumerator DisableWithDelay()
        {
            foreach(var animator in lightningAnimators)
            {
                animator.SetBool("Enabled", false);
            }
            if (effect)
            {
                effect.EnableEmission(false);
                effect.Fade();
            }

            yield return new WaitForSeconds(disableDelay);
            gameObject.SetActive(false);

            foreach (var g in additionalObjects)
            {
                g.SetActive(false);
            }
        }

        public void SetCustomActive(bool value)
        {
            if (isEnabled == value)
                return;

            isEnabled = value;

            if (value)
            {
                if (disablingCoroutine != null)
                    StopCoroutine(disablingCoroutine);

                gameObject.SetActive(true);
                foreach (var animator in lightningAnimators)
                {
                    animator.SetBool("Enabled", true);
                }

                foreach (var g in additionalObjects)
                {
                    g.SetActive(true);
                }
                if (effect)
                {
                    effect.EnableEmission(true);
                    effect.Show();
                }
            }
            else
            {
                disablingCoroutine = StartCoroutine(DisableWithDelay());
            }
        }
    }
}