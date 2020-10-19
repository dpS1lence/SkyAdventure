using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class RandomProperty : MonoBehaviour
    {
        [SerializeField] private string propertyName;
        [SerializeField] private Renderer cachedRenderer;

        private MaterialPropertyBlock propertyBlock;

        private void OnEnable()
        {
            propertyBlock = new MaterialPropertyBlock();

            cachedRenderer.GetPropertyBlock(propertyBlock);

            propertyBlock.SetFloat(propertyName, Random.Range(0, 1000f));

            cachedRenderer.SetPropertyBlock(propertyBlock);
        }
    }
}