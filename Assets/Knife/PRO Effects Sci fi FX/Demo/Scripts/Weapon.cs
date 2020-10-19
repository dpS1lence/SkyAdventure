using Knife.ScifiEffects;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Knife.Effects.SimpleController
{

    /// <summary>
    /// Simple weapon behaviour without reloading and recoil.
    /// </summary>
    public class Weapon : MonoBehaviour, IWeapon
    {
        public enum FireType
        {
            Bullets,
            Constant
        }

        public event Action<Vector2> OnFire;

        [SerializeField] private FireType fireType = FireType.Bullets;
        [SerializeField] private float constantFireDelay = 0.1f;
        [SerializeField] private GameObject projectilePrefab;
        [SerializeField] private GameObject[] constantFire;
        [SerializeField] private Transform projectileSpawnPoint;
        [SerializeField] private Transform[] projectileSpawnPoints;
        [SerializeField] private bool useProjectilesPool;
        [SerializeField] private GameObject playerRoot;
        [SerializeField] private bool parentProjectile = false;

        [SerializeField] private float spreadAcceleration = 1f;
        [SerializeField] private float spreadDecceleration = 1f;
        [SerializeField] private AnimationCurve spreadCurve;
        [SerializeField] private AnimationCurve recoilCurve;
        [SerializeField] [Range(1, 32)] private int bulletsCountPerShot = 1;
        [SerializeField] private float spreadRayFactor = 0f;
        [SerializeField] private float bulletsInterval = 0;
        [SerializeField] private bool playFXOnce = false;
        [SerializeField] private float chargeTime = 0f;
        [SerializeField] private float chargeDisableDelay = 0f;
        [SerializeField] private ParticleGroupEmitter chargeEffectEmitter;
        [SerializeField] private ParticleGroupEmitter chargeEndEffectEmitter;
        [SerializeField] private bool targetLockerEnabled = false;
        [SerializeField] private bool lockHittableTarget = false;

        /// <summary>
        /// Shot emitters array.
        /// </summary>
        [SerializeField] [Tooltip("Shot emitters array")] private ParticleGroupEmitter[] shotEmitters;
        /// <summary>
        /// After fire particle player.
        /// </summary>
        [SerializeField] [Tooltip("After fire particle player")] private ParticleGroupPlayer afterFireSmoke;
        /// <summary>
        /// Size of bullets.
        /// </summary>
        [SerializeField] [Tooltip("Size of bullets")] private float bulletSize = 1f;
        /// <summary>
        /// Damage type.
        /// </summary>
        [SerializeField] [Tooltip("Damage type")] private DamageTypes damageType = DamageTypes.Bullet;
        /// <summary>
        /// Player camera.
        /// </summary>
        [Tooltip("Player camera")] public Camera playerCamera;
        /// <summary>
        /// Raycast shot mask.
        /// </summary>
        [Tooltip("Raycast shot mask")] public LayerMask ShotMask;
        /// <summary>
        /// Damage amount.
        /// </summary>
        [Tooltip("Damage amount")] public float Damage = 10f;

        /// <summary>
        /// Default fov of player camera.
        /// </summary>
        [Tooltip("Default fov of player camera")] public float DefaultFov = 60f;
        /// <summary>
        /// Aiming fov of player camera.
        /// </summary>
        [Tooltip("Aiming fov of player camera")] public float AimFov = 35f;
        /// <summary>
        /// Automatic fire flag.
        /// </summary>
        [Tooltip("Automatic fire flag")] public bool AutomaticFire;
        /// <summary>
        /// Automatic fire rate in bullets/seconds.
        /// </summary>
        [Tooltip("Automatic fire rate in bullets/seconds")] public float AutomaticFireRate = 10;

        protected Animator handsAnimator;

        private bool isShooting = false;
        private bool isShooted = false;
        private bool isFreezed = false;

        private Collider[] playerColliders;

        private float currentSpread;
        private ICustomActiveState[] constantFireCustomActiveState;

        bool isAiming = false;

        float currentFov;

        float lastFireTime;
        float fireInterval
        {
            get
            {
                return 1f / AutomaticFireRate;
            }
        }

        /// <summary>
        /// Current fov of camera.
        /// </summary>
        public float CurrentFov
        {
            get
            {
                return currentFov;
            }
        }

        /// <summary>
        /// Bullet size.
        /// </summary>
        public float BulletSize
        {
            get
            {
                return bulletSize;
            }

            set
            {
                bulletSize = value;
            }
        }

        /// <summary>
        /// Damage type.
        /// </summary>
        public DamageTypes DamageType
        {
            get
            {
                return damageType;
            }

            set
            {
                damageType = value;
            }
        }

        public bool isActive => gameObject.activeSelf;

        public bool IsShooting { get => isShooting; private set => isShooting = value; }

        private LockData lockedTarget;

        private List<GameObject> projectilesPool = new List<GameObject>();
        private int currentPoolInstanceIndex;

        private bool isConstantFireProcessing = false;
        private Coroutine constantFireCoroutine;

        void Start()
        {
            handsAnimator = GetComponent<Animator>();
            lastFireTime = -fireInterval;

            playerColliders = playerRoot.GetComponents<Collider>();
            constantFireCustomActiveState = new ICustomActiveState[constantFire.Length];
            for (int i = 0; i < constantFireCustomActiveState.Length; i++)
            {
                constantFireCustomActiveState[i] = constantFire[i].GetComponent<ICustomActiveState>();
            }

            if (useProjectilesPool)
            {
                for (int i = 0; i < 300; i++)
                {
                    GameObject projectileInstance = Instantiate(projectilePrefab);
                    projectileInstance.SetActive(false);
                    projectilesPool.Add(projectileInstance);
                }
            }
        }

        private void OnEnable()
        {
            currentFov = playerCamera.fieldOfView;
            isConstantFireProcessing = false;
            OnEnableHook();
        }

        private void OnDisable()
        {
            currentFov = DefaultFov;
            OnDisableHook();
        }

        protected virtual void OnEnableHook()
        {

        }

        protected virtual void OnDisableHook()
        {

        }

        void Update()
        {
            currentSpread -= Time.deltaTime * spreadDecceleration;
            if (currentSpread <= 0)
                currentSpread = 0;
            if (!isFreezed)
            {
                if (AutomaticFire)
                {
                    if (Input.GetMouseButton(0) && Time.time > lastFireTime + fireInterval)
                    {
                        //onAttackEvent.Call(new TargetAttackData(1000, playerCamera.transform.forward));
                        Shot();
                        isShooted = true;
                        lastFireTime = Time.time;
                    }
                    if (Input.GetMouseButtonUp(0) && isShooted)
                    {
                        isShooted = false;
                        EndFire();
                    }
                }
                else
                {
                    if (Input.GetMouseButtonDown(0) && Time.time > lastFireTime + fireInterval)
                    {
                        Shot();
                        EndFire();
                        lastFireTime = Time.time;
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
                OnUpdate();
            }
            currentFov = Mathf.Lerp(currentFov, isAiming ? AimFov : DefaultFov, Time.deltaTime * 12f);
        }

        protected virtual void OnUpdate()
        {

        }

        protected virtual void EndFire()
        {
            if (constantFireCoroutine != null)
                StopCoroutine(constantFireCoroutine);

            isConstantFireProcessing = false;
            IsShooting = false;
            lockedTarget = null;
            PlayAfterFireFX();
            switch (fireType)
            {
                case FireType.Bullets:
                    break;
                case FireType.Constant:
                    handsAnimator.SetBool("Fire", false);
                    for (int i = 0; i < constantFireCustomActiveState.Length; i++)
                    {
                        var cf = constantFireCustomActiveState[i];
                        if (cf == null)
                            constantFire[i].SetActive(false);
                        else
                            cf.SetCustomActive(false);
                    }
                    break;
            }
        }

        protected void PlayAfterFireFX()
        {
            if (afterFireSmoke != null)
                afterFireSmoke.Play();
        }

        protected void PlayFX()
        {
            if (afterFireSmoke != null)
                afterFireSmoke.Stop();
            if (shotEmitters != null)
            {
                foreach (var e in shotEmitters)
                    e.Emit(1);
            }
        }

        protected virtual void Shot()
        {
            IsShooting = true;
            switch (fireType)
            {
                case FireType.Bullets:
                    StartCoroutine(GunShot());
                    break;
                case FireType.Constant:
                    if(!isConstantFireProcessing)
                        constantFireCoroutine = StartCoroutine(ConstantShot());
                    break;
            }
        }

        private IEnumerator ConstantShot()
        {
            isConstantFireProcessing = true;
            handsAnimator.SetBool("Fire", true);
            yield return new WaitForSeconds(constantFireDelay);
            float spreadValue = spreadCurve.Evaluate(currentSpread);

            float recoilValue = recoilCurve.Evaluate(currentSpread);

            Vector2 recoilVector = new Vector2(Random.Range(-1f, 1f), Random.Range(0f, 1f)).normalized;

            for (int i = 0; i < constantFireCustomActiveState.Length; i++)
            {
                Ray r = new Ray(playerCamera.transform.position, playerCamera.transform.forward);
                RaycastHit hitInfo;

                Quaternion spreadRotation = Quaternion.AngleAxis(Random.Range(-spreadValue, spreadValue), playerCamera.transform.right) * Quaternion.AngleAxis(Random.Range(-spreadValue, spreadValue), playerCamera.transform.up);

                Quaternion rotation;

                if (Physics.Raycast(r, out hitInfo, 1000, ShotMask, QueryTriggerInteraction.Ignore))
                {
                    rotation = spreadRotation * Quaternion.LookRotation((hitInfo.point - projectileSpawnPoint.position).normalized, Vector3.up);

                    IHittable hittable = hitInfo.collider.GetComponent<IHittable>();
                    if (lockedTarget == null)
                    {
                        lockedTarget = new LockData();
                        if (hittable != null)
                        {
                            if (lockHittableTarget)
                            {
                                lockedTarget.Set(hitInfo.transform, hittable);
                            }
                        }
                        lockedTarget.WorldPoint = hitInfo.point;
                    }
                    else
                    {
                        if (lockedTarget == null)
                            lockedTarget = new LockData();
                        if (hittable == lockedTarget.Hittable || !lockHittableTarget)
                            lockedTarget.WorldPoint = hitInfo.point;
                    }
                }
                else
                {
                    if (lockedTarget == null)
                        lockedTarget = new LockData();
                    lockedTarget.WorldPoint = r.GetPoint(100000);
                    rotation = spreadRotation * Quaternion.LookRotation(r.direction, Vector3.up);
                }

                constantFire[i].transform.rotation = rotation;
                var cf = constantFireCustomActiveState[i];
                if (cf == null)
                    constantFire[i].SetActive(true);
                else
                    cf.SetCustomActive(true);
            }
            OnFire?.Invoke(recoilVector * recoilValue);
            isConstantFireProcessing = false;

            currentSpread += spreadAcceleration;
            if (currentSpread >= 1f)
                currentSpread = 1f;
        }

        private IEnumerator GunShot()
        {
            if (chargeEffectEmitter)
            {
                chargeEffectEmitter.EnableEmission(true);
                chargeEffectEmitter.Emit(1);
                //yield return new WaitForSeconds(chargeTime);
                float elapsedTime = 0;
                while(elapsedTime <= chargeTime)
                {
                    elapsedTime += Time.deltaTime;
                    handsAnimator.SetFloat("ChargeTime", elapsedTime / chargeTime);
                    yield return null;
                }
                handsAnimator.SetFloat("ChargeTime", 0);
                StartCoroutine(DisableChargeEffect());

                if(chargeEndEffectEmitter)
                {
                    chargeEndEffectEmitter.Emit(1);
                }
            }

            handsAnimator.Play("Shot", 0, 0);

            int bulletsCount;
            bool useProjectilesSpawnPointsArray;

            if (projectileSpawnPoints != null && projectileSpawnPoints.Length > 0)
            {
                bulletsCount = projectileSpawnPoints.Length;
                useProjectilesSpawnPointsArray = true;
            }
            else
            {
                bulletsCount = bulletsCountPerShot;
                useProjectilesSpawnPointsArray = false;
            }

            StartCoroutine(SpawnBullets(bulletsCount, useProjectilesSpawnPointsArray));

            currentSpread += spreadAcceleration;
            if (currentSpread >= 1f)
                currentSpread = 1f;
        }

        private IEnumerator DisableChargeEffect()
        {
            yield return new WaitForSeconds(chargeDisableDelay);
            chargeEffectEmitter.EnableEmission(false);
            chargeEffectEmitter.ClearParticles();
        }

        private IEnumerator SpawnBullets(int count, bool useProjectilesSpawnPointsArray)
        {
            Quaternion rotation;

            float spreadValue = spreadCurve.Evaluate(currentSpread);

            float recoilValue = recoilCurve.Evaluate(currentSpread);

            var forward = playerCamera.transform.forward;

            if (Mathf.Approximately(bulletsInterval, 0))
            {
                Vector2 recoilVector = new Vector2(Random.Range(-1f, 1f), Random.Range(0f, 1f)).normalized;
                OnFire?.Invoke(recoilVector * recoilValue);
                if(!playFXOnce)
                    PlayFX();
            }

            if (playFXOnce)
                PlayFX();

            for (int i = 0; i < count; i++)
            {
                Quaternion spreadRotation = Quaternion.AngleAxis(Random.Range(-spreadValue, spreadValue), playerCamera.transform.right) * Quaternion.AngleAxis(Random.Range(-spreadValue, spreadValue), playerCamera.transform.up);
                Quaternion forwardSpread = Quaternion.AngleAxis(Random.Range(-spreadValue * spreadRayFactor, spreadValue * spreadRayFactor), playerCamera.transform.right) * Quaternion.AngleAxis(Random.Range(-spreadValue * spreadRayFactor, spreadValue * spreadRayFactor), playerCamera.transform.up);

                forward = forwardSpread * forward;

                Ray r = new Ray(playerCamera.transform.position, forward);
                RaycastHit hitInfo;

                if (Physics.Raycast(r, out hitInfo, 1000, ShotMask, QueryTriggerInteraction.Ignore))
                {
                    rotation = spreadRotation * Quaternion.LookRotation((hitInfo.point - projectileSpawnPoint.position).normalized, Vector3.up);

                    IHittable hittable = hitInfo.collider.GetComponent<IHittable>();
                    if (lockedTarget == null)
                    {
                        lockedTarget = new LockData();
                        if (hittable != null)
                        {
                            if (lockHittableTarget)
                            {
                                lockedTarget.Set(hitInfo.transform, hittable);
                            }
                        }
                        lockedTarget.WorldPoint = hitInfo.point;
                    }
                    else
                    {
                        if (lockedTarget == null)
                        {
                            lockedTarget = new LockData();
                            if (hittable != null)
                            {
                                if (lockHittableTarget)
                                {
                                    lockedTarget.Set(hitInfo.transform, hittable);
                                }
                            }
                        } else
                        {
                            if (hittable != null && lockedTarget.Hittable == null)
                            {
                                if (lockHittableTarget)
                                {
                                    lockedTarget.Set(hitInfo.transform, hittable);
                                }
                            }
                        }
                        if (hittable == lockedTarget.Hittable || !lockHittableTarget)
                            lockedTarget.WorldPoint = hitInfo.point;
                    }
                }
                else
                {
                    if (lockedTarget == null)
                    {
                        lockedTarget = new LockData();
                        lockedTarget.WorldPoint = r.GetPoint(100000);
                    } else
                    {
                        if(!lockHittableTarget)
                        {
                            lockedTarget.WorldPoint = r.GetPoint(100000);
                        }
                    }
                    rotation = spreadRotation * Quaternion.LookRotation(r.direction, Vector3.up);
                }

                GameObject projectile;

                Vector3 projectilePosition;
                Quaternion projectileRotation;

                if (useProjectilesSpawnPointsArray)
                {
                    projectileSpawnPoint.rotation = rotation;

                    projectilePosition = projectileSpawnPoints[i].position;
                    projectileRotation = projectileSpawnPoints[i].rotation;
                }
                else
                {
                    projectilePosition = projectileSpawnPoint.position;
                    projectileRotation = rotation;
                }

                if (useProjectilesPool)
                {
                    projectile = Spawn();
                    projectile.transform.position = projectilePosition;
                    projectile.transform.rotation = projectileRotation;
                }
                else
                {
                    projectile = Instantiate(projectilePrefab, projectilePosition, projectileRotation);
                }

                if (parentProjectile)
                {
                    projectile.transform.SetParent(projectileSpawnPoint);
                }

                ICollisionIgnore collisionIgnore = projectile.GetComponent<ICollisionIgnore>();
                if (collisionIgnore != null)
                {
                    foreach (var c in playerColliders)
                        collisionIgnore.IgnoreCollision(c);
                }

                if (targetLockerEnabled)
                {
                    ITargetContainer targetContainer = projectile.GetComponent<ITargetContainer>();
                    if (targetContainer != null)
                    {
                        if (lockedTarget != null)
                        {
                            targetContainer.target = lockedTarget.Transform;
                            targetContainer.lockTarget = lockedTarget;
                        }

                        if (hitInfo.collider != null)
                            targetContainer.targetPosition = hitInfo.point;
                        else
                            targetContainer.targetPosition = r.GetPoint(10000);
                    }
                }

                if (bulletsInterval > 0)
                {
                    Vector2 recoilVector = new Vector2(Random.Range(-1f, 1f), Random.Range(0f, 1f)).normalized;
                    OnFire?.Invoke(recoilVector * recoilValue);

                    if(!playFXOnce)
                        PlayFX();

                    yield return new WaitForSeconds(bulletsInterval);
                }
                //DebugShot(r, hitInfo);
            }
        }

        private GameObject Spawn()
        {
            GameObject instance = projectilesPool[currentPoolInstanceIndex];
            currentPoolInstanceIndex++;
            if (currentPoolInstanceIndex >= projectilesPool.Count)
                currentPoolInstanceIndex = 0;
            instance.SetActive(true);
            return instance;
        }

        protected void DebugShot(Ray r, RaycastHit hitInfo)
        {
            if (hitInfo.collider != null)
            {
                Debug.DrawLine(r.origin, hitInfo.point, Color.green, 3f);
            }
            else
            {
                Debug.DrawLine(r.origin, r.GetPoint(1000), Color.red, 3f);
            }
        }

        /// <summary>
        /// Freeze weapon control.
        /// </summary>
        /// <param name="value">is freezed</param>
        public void Freeze(bool value)
        {
            isFreezed = value;
        }

        public void SetActive(bool value)
        {
            gameObject.SetActive(value);
        }
    }
}