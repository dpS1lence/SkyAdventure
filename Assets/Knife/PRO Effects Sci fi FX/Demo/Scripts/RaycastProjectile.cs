using Knife.Effects;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class RaycastProjectile : MonoBehaviour, ISmoothPhysics
    {
        [SerializeField] private float maximumDistance = Mathf.Infinity;
        [SerializeField] private float lifeTime = Mathf.Infinity;
        [SerializeField] private float speed = 50f;
        [SerializeField] private LayerMask layerMask;
        [SerializeField] private GameObject explosion;
        [SerializeField] private float thresholdByNormal = 0.05f;
        [SerializeField] [Range(0, 10)] private int bounceLimitMin = 1;
        [SerializeField] [Range(1, 10)] private int bounceLimitMax = 5;
        [SerializeField] [Range(0f, 1f)] private float bounceThreshold = 0.5f;
        [SerializeField] [Range(0f, 1f)] private float bounceChance = 0.5f;
        [SerializeField] private bool smoothPhysics = false;
        [SerializeField] private bool destroyOnHit = false;
        [SerializeField] private float destroyDelay = 0f;
        [SerializeField] private GameObject[] disablingComponents;
        [SerializeField] private float bulletSize = 1f;
        [SerializeField] private Behaviour[] disablingBehaviours;
        [SerializeField] private Transform raycastOrigin;
        [SerializeField] private float explosionScale = 1f;

        private int hits = 0;
        private int bounceLimit = 0;
        private bool isHitted = false;
        private float distance;
        private float elapsedTime = 0;

        private void OnEnable()
        {
            if (raycastOrigin == null)
                raycastOrigin = transform;

            isHitted = false;
            bounceLimit = Random.Range(bounceLimitMin, bounceLimitMax);
            hits = 0;

            for (int i = 0; i < disablingComponents.Length; i++)
            {
                disablingComponents[i].SetActive(true);
            }
            foreach(var b in disablingBehaviours)
            {
                b.enabled = true;
            }
        }

        private void Update()
        {
            elapsedTime += Time.deltaTime;

            if (elapsedTime >= lifeTime)
            {
                OnHit();
            }
        }

        private void FixedUpdate()
        {
            if(!smoothPhysics)
            {
                UpdateProjectile(Time.deltaTime);
            }
        }

        private void UpdateProjectile(float deltaTime)
        {
            if (isHitted)
                return;

            float deltaPosition = deltaTime * speed;

            Ray r = new Ray(raycastOrigin.position, raycastOrigin.forward);

            distance += deltaPosition;

            if(distance >= maximumDistance)
            {
                OnHit();
                return;
            }

            transform.position += deltaPosition * transform.forward;

            RaycastHit hitInfo;

            if (Physics.Raycast(r, out hitInfo, deltaPosition, layerMask, QueryTriggerInteraction.Ignore))
            {
                transform.position = hitInfo.point + hitInfo.normal * thresholdByNormal;

                IHittable hittable = hitInfo.collider.GetComponent<IHittable>();

                if (hittable != null)
                {
                    DamageData damage = new DamageData();
                    damage.amount = 10;
                    damage.point = hitInfo.point;
                    damage.normal = hitInfo.normal;
                    damage.direction = r.direction;
                    damage.size = bulletSize;
                    damage.damageType = DamageTypes.Bullet;

                    hittable.TakeDamage(new DamageData[1] { damage });
                }

                float dotResult = Vector3.Dot(transform.forward, hitInfo.normal);

                bool canBounce = Mathf.Abs(dotResult) <= bounceThreshold;
                bool randomBounce = Random.value <= bounceChance;

                GameObject instance = Instantiate(explosion, transform.position, Quaternion.identity);
                instance.transform.localScale *= explosionScale;
                Destroy(instance, 10);

                if (hits >= bounceLimit || !canBounce || !randomBounce)
                {
                    OnHit();
                }
                else
                {
                    Vector3 newForward = Vector3.Reflect(transform.forward, hitInfo.normal);
                    transform.position = hitInfo.point + newForward;

                    transform.rotation = Quaternion.LookRotation(newForward);
                }
                hits++;
            }
        }

        private void OnHit()
        {
            if (destroyOnHit)
                Destroy(gameObject, destroyDelay);

            for (int i = 0; i < disablingComponents.Length; i++)
            {
                disablingComponents[i].SetActive(false);
            }
            foreach (var b in disablingBehaviours)
            {
                b.enabled = false;
            }
            isHitted = true;
        }

        public void UpdateSmoothly(float deltaTime)
        {
            UpdateProjectile(deltaTime);
        }
    }
}