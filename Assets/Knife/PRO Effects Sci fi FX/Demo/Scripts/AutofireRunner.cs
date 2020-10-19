using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects
{
    /// <summary>
    /// Component to simulate burst fire with interval.
    /// Simulating statrs from OnEnable event.
    /// </summary>
    public class AutofireRunner : MonoBehaviour
    {
        /// <summary>
        /// AutoFire components array that will be used.
        /// </summary>
        [SerializeField] [Tooltip("AutoFire components array that will be used")] private AutoFire[] autoFires;
        /// <summary>
        /// Interval between fire.
        /// </summary>
        [SerializeField] [Tooltip("Interval between fire")] private float interval = 0.05f;

        private void OnEnable()
        {
            StartCoroutine(AutofireWithInterval());
        }

        private void OnDisable()
        {
            StopAllCoroutines();
        }

        private IEnumerator AutofireWithInterval()
        {
            foreach(var af in autoFires)
            {
                af.Fire();
                yield return new WaitForSeconds(interval);
            }
        }
    }
}