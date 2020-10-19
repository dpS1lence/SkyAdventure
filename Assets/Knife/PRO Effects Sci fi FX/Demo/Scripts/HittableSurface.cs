using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Hittable surface component
    /// </summary>
    public class HittableSurface : MonoBehaviour, IHittable
    {
        /// <summary>
        /// Decal prefabs array.
        /// </summary>
        [SerializeField] [Tooltip("Decal prefabs array")] private GameObject[] decalPrefabs;

        [SerializeField] private DecalGroup[] groups;

        /// <summary>
        /// Impact prefabs array.
        /// </summary>
        [SerializeField] [Tooltip("Impact prefabs array")] private GameObject[] impactPrefabs;
        /// <summary>
        /// Minimum random offset from surface to decal position.
        /// </summary>
        [SerializeField] [Tooltip("Minimum random offset from surface to decal position")] private float offsetMin = 0.02f;
        /// <summary>
        /// Maximum random offset from surface to decal position.
        /// </summary>
        [SerializeField] [Tooltip("Maximum random offset from surface to decal position")] private float offsetMax = 0.04f;
        /// <summary>
        /// Size of decals.
        /// </summary>
        [SerializeField] [Tooltip("Size of decals")] private float size = 0.2f;
        /// <summary>
        /// Size of impacts.
        /// </summary>
        [SerializeField] [Tooltip("Size of impacts")] private float impactSize = 1f;
        /// <summary>
        /// If flag is enabled all decals will be attached to surface as child objects.
        /// </summary>
        [SerializeField] [Tooltip("If flag is enabled all decals will be attached to surface as child objects")] private bool autoParent = false;
        /// <summary>
        /// Random rotation of decals along normal vector.
        /// </summary>
        [SerializeField] [Tooltip("Random rotation of decals along normal vector")] private bool randomRotation = true;

        /// <summary>
        /// IHittable.TakeDamage implementation. Spawns decals based on damage data.
        /// </summary>
        /// <param name="damage">array of damages</param>
        public void TakeDamage(DamageData[] damage)
        {
            foreach (var d in damage)
            {
                if (d.damageType == DamageTypes.Bullet)
                {
                    var point = d.point + d.normal * Random.Range(offsetMin, offsetMax);
                    /*if (decalPrefabs != null && decalPrefabs.Length > 0)
                    {
                        var decalInstance = Instantiate(decalPrefabs[Random.Range(0, decalPrefabs.Length)]);
                        var decal = decalInstance.GetComponent<IDecal>();

                        bool canRotate = decal == null || decal.CanRotate;

                        decalInstance.transform.position = point;
                        decalInstance.transform.rotation = Quaternion.LookRotation(d.normal);

                        if (randomRotation && canRotate)
                            decalInstance.transform.rotation = Quaternion.AngleAxis(Random.Range(0, 360), d.normal) * decalInstance.transform.rotation;

                        decalInstance.transform.localScale = Vector3.one * size * d.size;

                        if (autoParent)
                        {
                            decalInstance.transform.SetParent(transform);
                        }
                        Destroy(decalInstance, 10);
                    }*/

                    foreach(var g in groups)
                    {
                        if(g.NeedSpawn(d))
                        {
                            g.Spawn(d, transform);
                            break;
                        }
                    }

                    if (impactPrefabs != null && impactPrefabs.Length > 0)
                    {
                        var impactInstance = Instantiate(impactPrefabs[Random.Range(0, impactPrefabs.Length)]);
                        impactInstance.transform.position = point;
                        impactInstance.transform.up = d.normal;

                        if (randomRotation)
                            impactInstance.transform.rotation = Quaternion.AngleAxis(Random.Range(0, 360), d.normal) * impactInstance.transform.rotation;

                        //impactInstance.transform.localScale = Vector3.one * impactSize * d.size;
                        if (autoParent)
                        {
                            impactInstance.transform.SetParent(transform);
                        }
                        Destroy(impactInstance, 10);
                    }
                }
            }
        }

        [System.Serializable]
        private class DecalGroup
        {
            [SerializeField] private GameObject[] prefabs;
            [SerializeField] [Range(0f, 1f)] private float angleTreshold = 0f;
            /// <summary>
            /// Minimum random offset from surface to decal position.
            /// </summary>
            [SerializeField] [Tooltip("Minimum random offset from surface to decal position")] private float offsetMin = 0.02f;
            /// <summary>
            /// Maximum random offset from surface to decal position.
            /// </summary>
            [SerializeField] [Tooltip("Maximum random offset from surface to decal position")] private float offsetMax = 0.04f;
            /// <summary>
            /// If flag is enabled all decals will be attached to surface as child objects.
            /// </summary>
            [SerializeField] [Tooltip("If flag is enabled all decals will be attached to surface as child objects")] private bool autoParent = false;
            /// <summary>
            /// Size of decals.
            /// </summary>
            [SerializeField] [Tooltip("Size of decals")] private float size = 0.2f;
            [SerializeField] private bool randomRotation = true;
            [SerializeField] private bool upRotationAlongDirection = false;
            [SerializeField] [Range(0f, 5f)] private float scaleAlongDirectionFactor = 0f;

            public bool NeedSpawn(DamageData damage)
            {
                var normal = damage.normal;
                var direction = damage.direction;

                float dotProduct = -Vector3.Dot(direction, normal);

                return dotProduct < angleTreshold;
            }

            public void Spawn(DamageData damage, Transform surface)
            {
                if (damage.damageType == DamageTypes.Bullet)
                {
                    var point = damage.point + damage.normal * Random.Range(offsetMin, offsetMax);
                    if (prefabs != null && prefabs.Length > 0)
                    {
                        var decalInstance = Instantiate(prefabs[Random.Range(0, prefabs.Length)]);
                        var decal = decalInstance.GetComponent<IDecal>();

                        bool canRotate = decal == null || decal.CanRotate;

                        decalInstance.transform.position = point;
                        decalInstance.transform.rotation = Quaternion.LookRotation(damage.normal);

                        var up = Vector3.ProjectOnPlane(damage.direction, damage.normal).normalized;
                        if (canRotate)
                        {
                            if (randomRotation)
                            {
                                decalInstance.transform.rotation = Quaternion.AngleAxis(Random.Range(0, 360), damage.normal) * decalInstance.transform.rotation;
                            }
                            else if (upRotationAlongDirection)
                            {
                                decalInstance.transform.rotation = Quaternion.LookRotation(damage.normal, up);
                            }
                        }

                        decalInstance.transform.localScale = Vector3.one * size * damage.size;

                        var normal = damage.normal;
                        var direction = damage.direction;

                        float dotProduct = -Vector3.Dot(direction, normal);

                        var scale = decalInstance.transform.localScale;
                        scale.y += (1 - dotProduct) * scaleAlongDirectionFactor;
                        decalInstance.transform.localScale = scale;

                        if (autoParent)
                        {
                            decalInstance.transform.SetParent(surface);
                        }
                        Destroy(decalInstance, 10);
                    }
                }
            }
        }
    }
}