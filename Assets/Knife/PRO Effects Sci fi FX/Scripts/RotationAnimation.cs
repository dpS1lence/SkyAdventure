using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class RotationAnimation : MonoBehaviour
    {
        [SerializeField] private float animationDuration = 1f;
        [SerializeField] private AnimationCurve animationCurve;

        [SerializeField] private Quaternion startRotation;
        [SerializeField] private Quaternion endRotation;

        private float elapsedTime = 0;

        private void OnEnable()
        {
            elapsedTime = 0;
        }

        private void Update()
        {
            elapsedTime += Time.deltaTime;
            transform.localRotation = Quaternion.Lerp(startRotation, endRotation, animationCurve.Evaluate(elapsedTime / animationDuration));
        }

        [ContextMenu("Save Start Rotation")]
        private void SaveStartRotation()
        {
            startRotation = transform.localRotation;
        }

        [ContextMenu("Save End Rotation")]
        private void SaveEndRotation()
        {
            endRotation = transform.localRotation;
        }

        [ContextMenu("Load Start Rotation")]
        private void LoadStartRotation()
        {
            transform.localRotation = startRotation;
        }

        [ContextMenu("Load End Rotation")]
        private void LoadEndRotation()
        {
            transform.localRotation = endRotation;
        }
    }
}