using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class SmoothPhysics : MonoBehaviour
    {
        [SerializeField] private MonoBehaviour[] targets;
        [SerializeField] [Range(1, 128)] private int iterations = 16;

        private List<ISmoothPhysics> smoothPhysicsTargets = new List<ISmoothPhysics>();

        private void OnEnable()
        {
            smoothPhysicsTargets.Clear();
            foreach(var t in targets)
            {
                var targetSmoothPhysics = t as ISmoothPhysics;
                if(targetSmoothPhysics != null)
                    smoothPhysicsTargets.Add(targetSmoothPhysics);
            }
        }

        private void FixedUpdate()
        {
            float deltaTime = Time.deltaTime / iterations;

            for (int i = 0; i < iterations; i++)
            {
                for (int j = 0; j < smoothPhysicsTargets.Count; j++)
                {
                    smoothPhysicsTargets[j].UpdateSmoothly(deltaTime);
                }
            }
        }
    }

    public interface ISmoothPhysics
    {
        void UpdateSmoothly(float deltaTime);
    }
}