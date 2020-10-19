using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// GrenadeWeapon component
    /// </summary>
    public class GrenadeWeapon : MonoBehaviour, IWeapon
    {
        /// <summary>
        /// Throwing grenade prefab.
        /// </summary>
        [SerializeField] [Tooltip("Throwing grenade prefab")] private GameObject grenadePrefab;
        /// <summary>
        /// Grenade spawn point.
        /// </summary>
        [SerializeField] [Tooltip("Grenade spawn point")] private Transform grenadeSpawnPoint;
        /// <summary>
        /// Player root transform.
        /// </summary>
        [SerializeField] [Tooltip("Player root transform")] private GameObject playerRoot;
        /// <summary>
        /// Hand grenade (disables after throwing).
        /// </summary>
        [SerializeField] [Tooltip("Hand grenade (disables after throwing)")] private GameObject handProp;
        /// <summary>
        /// Enable hand grenade delay in seconds.
        /// </summary>
        [SerializeField] [Tooltip("Enable hand grenade delay in seconds")] private float enableHandPropDelay = 1f;
        /// <summary>
        /// Player camera.
        /// </summary>
        [SerializeField] [Tooltip("Player camera")] private Camera playerCamera;
        [SerializeField] private float throwInterval = 1.5f;
        /// <summary>
        /// Default fov of player camera.
        /// </summary>
        [Tooltip("Default fov of player camera")] public float DefaultFov = 60f;
        /// <summary>
        /// Aiming fov of player camera.
        /// </summary>
        [Tooltip("Aiming fov of player camera")] public float AimFov = 35f;

        private Collider[] playerColliders;

        private float elapsedTime = 0f;
        private bool isHandPropDisabled = false;
        private Animator handsAnimator;
        private float currentFov;
        private bool isFreezed = false;

        private float lastThrowTime;

        public float CurrentFov => currentFov;

        public bool isActive => gameObject.activeSelf;
        private bool isAiming;

        public event Action<Vector2> OnFire;

        private void Start()
        {
            handsAnimator = GetComponent<Animator>();
            playerColliders = playerRoot.GetComponents<Collider>();
        }

        private void OnEnable()
        {
            isHandPropDisabled = false;
            handProp.SetActive(true);
            lastThrowTime = Time.time;
            currentFov = DefaultFov;
        }

        private void Shot()
        {
            handsAnimator.SetBool("Hold", true);
        }

        private void EndFire()
        {
            handsAnimator.SetBool("Hold", false);
            lastThrowTime = Time.time;
        }

        private void Update()
        {
            if (!isFreezed)
            {
                if (Time.time >= lastThrowTime + throwInterval)
                {
                    if (Input.GetMouseButtonDown(0))
                    {
                        Shot();
                    }

                    if (Input.GetMouseButtonUp(0))
                    {
                        EndFire();
                    }
                }
                if (Input.GetMouseButtonDown(1))
                {
                    isAiming = true;
                }
                if (Input.GetMouseButtonUp(1))
                {
                    isAiming = false;
                }
            }
            currentFov = Mathf.Lerp(currentFov, isAiming ? AimFov : DefaultFov, Time.deltaTime * 12f);
            if (isHandPropDisabled)
            {
                elapsedTime += Time.deltaTime;

                if (elapsedTime >= enableHandPropDelay)
                {
                    handProp.SetActive(true);
                    isHandPropDisabled = false;
                }
            }
        }

        private void SpawnGrenade()
        {
            var instance = Instantiate(grenadePrefab, grenadeSpawnPoint.position, Quaternion.LookRotation(playerCamera.transform.forward));
            var ignoreCollision = instance.GetComponent<ICollisionIgnore>();
            if (ignoreCollision != null)
            {
                foreach (var c in playerColliders)
                {
                    ignoreCollision.IgnoreCollision(c);
                }
            }

            handProp.SetActive(false);
            elapsedTime = 0;
            isHandPropDisabled = true;
        }

        public void SetActive(bool value)
        {
            gameObject.SetActive(value);
        }

        /// <summary>
        /// Freeze weapon control.
        /// </summary>
        /// <param name="value">is freezed</param>
        public void Freeze(bool value)
        {
            isFreezed = value;
        }
    }
}