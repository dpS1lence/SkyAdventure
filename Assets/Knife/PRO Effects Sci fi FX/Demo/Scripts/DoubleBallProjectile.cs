using Knife.Effects;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class DoubleBallProjectile : MonoBehaviour
    {
        [SerializeField] private float forwardSpeed = 15f;
        [SerializeField] private float expansionSpeed = 0.5f;
        [SerializeField] private AnimationCurve expansionCurve;
        [SerializeField] private float lifeTime = 5f;
        [SerializeField] private Transform leftBall;
        [SerializeField] private Transform rightBall;
        [SerializeField] private Transform lightningPivotTransform;
        [SerializeField] private int raysCount = 16;
        [SerializeField] private float baseWidth = 1f;
        [SerializeField] private GameObject explosionPrefab;
        [SerializeField] private LayerMask layerMask = ~0;
        [SerializeField] private float elapsedTime;
        [SerializeField] private float bulletSize = 2f;
        [SerializeField] private float raycastDistanceFactor = 1f;

        private Vector3 left, right, lineScale;
        private Vector3 deltaPosition;

        private Dictionary<Collider, List<RaycastHit>> hits = new Dictionary<Collider, List<RaycastHit>>();

        private void FixedUpdate()
        {
            elapsedTime += Time.deltaTime;

            deltaPosition = transform.forward * Time.deltaTime * forwardSpeed;

            CalculatePosition();
            if (Raycast())
            {
                DestroySelf();
            }
            else
            {
                Move();
                UpdateSystem();
            }

            if(elapsedTime >= lifeTime)
            {
                Die();
            }
        }

        private bool Raycast()
        {
            Vector3 worldLeft = transform.TransformPoint(left);
            Vector3 worldRight = transform.TransformPoint(right);

            bool isCollided = false;

            for (int i = 0; i < raysCount; i++)
            {
                float fraction = (float)i / (raysCount - 1);

                Vector3 rayOrigin = Vector3.Lerp(worldLeft, worldRight, fraction);

                Ray ray = new Ray(rayOrigin, transform.forward);
                RaycastHit hit;

                if(Physics.Raycast(ray, out hit, deltaPosition.magnitude * raycastDistanceFactor, layerMask, QueryTriggerInteraction.Ignore))
                {
                    Collide(hit);
                    isCollided = true;
                }
            }

            if(isCollided)
            {
                CollideEnd();
            }

            return isCollided;
        }

        private void CollideEnd()
        {
            List<DamageData> damages = new List<DamageData>();

            foreach (var kv in hits)
            {
                var hittable = kv.Key.GetComponent<IHittable>();

                if (hittable != null)
                {
                    damages.Clear();
                    foreach (var hit in kv.Value)
                    {
                        DamageData damage = new DamageData()
                        {
                            amount = 10,
                            damageType = DamageTypes.Bullet,
                            direction = transform.forward,
                            normal = hit.normal,
                            point = hit.point,
                            size = bulletSize
                        };

                        damages.Add(damage);
                    }

                    hittable.TakeDamage(damages.ToArray());
                }
            }
        }

        private void Collide(RaycastHit hit)
        {
            var explosionInstance = SpawnExplosion();

            explosionInstance.transform.position = hit.point;
            explosionInstance.transform.rotation = Quaternion.FromToRotation(Vector3.up, hit.normal);

            if(hit.collider != null)
            {
                List<RaycastHit> hitsList;
                if(!hits.TryGetValue(hit.collider, out hitsList))
                {
                    hitsList = new List<RaycastHit>();
                    hits.Add(hit.collider, hitsList);
                }

                hitsList.Add(hit);
            }
        }

        private void DestroySelf()
        {
            Destroy(gameObject);
        }

        private void Die()
        {
            SpawnExplosion();
            DestroySelf();
        }

        private GameObject SpawnExplosion()
        {
            var instance = Instantiate(explosionPrefab, transform.position, Quaternion.identity);
            Destroy(instance, 10f);
            return instance;
        }

        private void Move()
        {
            transform.position += deltaPosition;
        }

        private void UpdateSystem()
        {
            leftBall.localPosition = left;
            rightBall.localPosition = right;
            lightningPivotTransform.localScale = lineScale;
        }

        private void CalculatePosition()
        {
            CalculatePosition(out left, out right, out lineScale);
        }

        private void CalculatePosition(out Vector3 left, out Vector3 right, out Vector3 lineScale)
        {
            float width = baseWidth + expansionCurve.Evaluate(elapsedTime * expansionSpeed);

            left = -Vector3.right * width / 2;
            right = Vector3.right * width / 2;

            lineScale = new Vector3(width, 1, 1);
        }

        private void OnValidate()
        {
            if (leftBall == null || rightBall == null || lightningPivotTransform == null)
                return;

            CalculatePosition();
            UpdateSystem();
        }

        private void OnDrawGizmos()
        {
            Vector3 left, right, lineScale;

            CalculatePosition(out left, out right, out lineScale);

            Gizmos.matrix = transform.localToWorldMatrix;
            Gizmos.DrawLine(left, right);
        }
    }
}