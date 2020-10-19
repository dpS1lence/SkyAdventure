using Knife.ScifiEffects;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects
{
    public class RadialMover : MonoBehaviour, ISmoothPhysics
    {
        [SerializeField] private float radius = 0.1f;
        [SerializeField] private float fullRadiusTime = 0.5f;
        [SerializeField] private float animationDuration = 1f;
        [SerializeField] private bool fixedUpdate = false;
        [SerializeField] private bool smoothPhysics = false;
        [SerializeField] private bool randomStartOffset;
        [SerializeField] private bool randomDirection = false;

        private float elapsedTime = 0;
        private float offset;
        private float direction = 1f;

        public void UpdateSmoothly(float deltaTime)
        {
            if (smoothPhysics)
                UpdateTrail(deltaTime);
        }

        private void OnEnable()
        {
            elapsedTime = 0;

            if(randomStartOffset)
                offset = Random.value;

            if (randomDirection)
                direction = Random.value < 0.5f ? 1f : -1f;
        }

        private void FixedUpdate()
        {
            if (fixedUpdate && !smoothPhysics)
                UpdateTrail(Time.deltaTime);
        }

        private void Update()
        {
            if(!fixedUpdate && !smoothPhysics)
                UpdateTrail(Time.deltaTime);
        }

        private void UpdateTrail(float deltaTime)
        {
            if (!enabled)
                return;

            elapsedTime += deltaTime;

            float fraction = elapsedTime / fullRadiusTime;
            fraction = Mathf.Clamp01(fraction);

            float currentRadius = radius * fraction;

            float x = Mathf.Cos(direction * Time.time * animationDuration + offset) * currentRadius;
            float y = Mathf.Sin(direction * Time.time * animationDuration + offset) * currentRadius;

            var pos = transform.localPosition;
            pos.x = x;
            pos.y = y;
            transform.localPosition = pos;
        }
    }
}