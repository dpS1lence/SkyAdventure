using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    [RequireComponent(typeof(Renderer))]
    public class RendererFade : MonoBehaviour
    {
        private Renderer attachedRenderer;

        private Coroutine currentCoroutine;
        private MaterialPropertyBlock propertyBlock;

        private void Awake()
        {
            attachedRenderer = GetComponent<Renderer>();
            propertyBlock = new MaterialPropertyBlock();
            attachedRenderer.GetPropertyBlock(propertyBlock);
        }


        public void Fade(float time)
        {
            if (currentCoroutine != null)
                StopCoroutine(currentCoroutine);

            currentCoroutine = StartCoroutine(Blend(0, time));
        }

        public void Show(float time)
        {
            if (currentCoroutine != null)
                StopCoroutine(currentCoroutine);

            currentCoroutine = StartCoroutine(Blend(1, time));
        }

        private IEnumerator Blend(float targetAlpha, float time)
        {
            float elapsedTime = 0;
            Color c = attachedRenderer.sharedMaterial.color;
            float startAlpha = c.a;
            while (elapsedTime <= time)
            {
                elapsedTime += Time.deltaTime;

                float fraction = elapsedTime / time;

                fraction = Mathf.Clamp01(fraction);

                c.a = Mathf.Lerp(startAlpha, targetAlpha, fraction);

                propertyBlock.SetColor("_Color", c);
                attachedRenderer.SetPropertyBlock(propertyBlock);

                yield return null;
            }

            c.a = targetAlpha;
            propertyBlock.SetColor("_Color", c);
            attachedRenderer.SetPropertyBlock(propertyBlock);
        }
    }
}