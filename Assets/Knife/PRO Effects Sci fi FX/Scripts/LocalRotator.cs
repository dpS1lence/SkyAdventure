using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    /// <summary>
    /// Helper behaviour that can rotate transform
    /// </summary>
    public class LocalRotator : MonoBehaviour
    {
        public float MaxAngle = 15;
        public AnimationCurve Curve;
        public float LoopLength;
        public float Offset;
        public Vector3 Axis = Vector3.up;
        public bool lateUpdate = false;

        public float Speed { get; set; } = 1;

        Quaternion startRotation;
        float elapsedTime;

        private void Start()
        {
            startRotation = transform.localRotation;
            elapsedTime = Offset;
        }

        private void Update()
        {
            if (!lateUpdate)
                UpdateRotator();
        }

        private void UpdateRotator()
        {
            elapsedTime += Time.deltaTime * Speed;

            elapsedTime = Mathf.Repeat(elapsedTime, LoopLength);

            float fraction = elapsedTime / LoopLength;
            float value = Curve.Evaluate(fraction);

            transform.localRotation = startRotation * Quaternion.Euler(Axis * value * MaxAngle);
        }

        private void LateUpdate()
        {
            if (lateUpdate)
                UpdateRotator();
        }
    }
}