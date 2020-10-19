using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class AutoAim : MonoBehaviour, ITargetContainer, ISmoothPhysics
    {
        public Transform target { get; set; }
        public Vector3 targetPosition { get; set; }
        public LockData lockTarget { get; set; }

        [SerializeField] private float smoothTime = 8f;
        [SerializeField] private bool physics = false;
        [SerializeField] private bool smoothPhysics = false;
        [SerializeField] private float delay = 0f;
        [SerializeField] private float duration = 1000;
        [SerializeField] private float threshold = 1f;
        [SerializeField] private AnimationCurve smoothByDistanceCurve;
        [SerializeField] private bool skipTargetOnMiss = true;

        private float elapsedTime = 0;
        private bool skipTarget = false;

        private void OnEnable()
        {
            elapsedTime = 0;
            skipTarget = false;
        }

        private void Update()
        {
            if (!physics && !smoothPhysics)
            {
                Rotate(Time.deltaTime);
            }
        }

        private void Rotate(float deltaTime)
        {
            if (skipTarget)
                return;

            elapsedTime += deltaTime;

            if (elapsedTime >= delay)
            {
                if (elapsedTime - delay < duration)
                {
                    Vector3 targetPoint;

                    if (target)
                    {
                        if (lockTarget == null)
                        {
                            targetPoint = target.position;
                        }
                        else
                        {
                            targetPoint = lockTarget.WorldPoint;
                        }
                    }
                    else
                    {
                        targetPoint = targetPosition;
                    }

                    Vector3 direction = (targetPoint - transform.position);

                    if (skipTargetOnMiss)
                    {
                        float dotResult = Vector3.Dot(direction.normalized, transform.forward);

                        if (dotResult <= 0.5f)
                        {
                            skipTarget = true;
                        }
                    }

                    if (!skipTarget)
                    {
                        float distance = direction.magnitude;

                        float smooth = smoothTime * smoothByDistanceCurve.Evaluate(distance);

                        Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);

                        if (distance >= threshold)
                        {
                            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * smooth);
                        }
                        else
                        {
                            transform.rotation = targetRotation;
                        }
                    }
                }
            }
        }

        private void FixedUpdate()
        {
            if(physics && !smoothPhysics)
            {
                Rotate(Time.deltaTime);
            }
        }

        public void UpdateSmoothly(float deltaTime)
        {
            Rotate(deltaTime);
        }
    }
}