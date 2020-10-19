using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class HeatDecalFade : MonoBehaviour
    {
        [SerializeField] private float delay = 2f;
        [SerializeField] private float fadeTime = 5f;
        [SerializeField] private AnimationCurve fadeCurve;
        [SerializeField] private string propertyName = "_EmissiveIntensity";
        [SerializeField] private Renderer[] renderers;

        private MaterialPropertyBlock materialPropertyBlock;

        private void OnEnable()
        {
            if(materialPropertyBlock == null)
                materialPropertyBlock = new MaterialPropertyBlock();

            StartCoroutine(FadeAnimation());
        }

        private IEnumerator FadeAnimation()
        {
            yield return new WaitForSeconds(delay);

            float time = 0;
            while(time < fadeTime)
            {
                time += Time.deltaTime;

                float fraction = time / fadeTime;
                float value = fadeCurve.Evaluate(fraction);

                foreach(var r in renderers)
                {
                    r.GetPropertyBlock(materialPropertyBlock);
                    materialPropertyBlock.SetFloat(propertyName, value);
                    r.SetPropertyBlock(materialPropertyBlock);
                }

                yield return null;
            }

            yield break;
        }
    }
}