using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class TrailRendererFixedUpdate : MonoBehaviour, ISmoothPhysics
    {
        [SerializeField] private TrailRenderer trailRenderer;
        [SerializeField] private bool smoothPhysics = false;

        private Vector3 oldPosition;

        public void UpdateSmoothly(float deltaTime)
        {
            AddCurrentPosition();
        }

        private void AddCurrentPosition()
        {
            float distance = Vector3.Distance(transform.position, oldPosition);
            if(!Mathf.Approximately(distance, 0))
            {
                trailRenderer.AddPosition(transform.position);
            }
        }

        private void FixedUpdate()
        {
            if(!smoothPhysics)
                AddCurrentPosition();
        }
    }
}