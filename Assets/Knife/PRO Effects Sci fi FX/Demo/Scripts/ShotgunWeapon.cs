using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Shotgun weapon.
    /// </summary>
    public class ShotgunWeapon : Weapon
    {
        /// <summary>
        /// Bullets count (frags).
        /// </summary>
        [Tooltip("Bullets count (frags)")] public int Bullets = 10;
        /// <summary>
        /// Random angle of each bullet.
        /// </summary>
        [Tooltip("Random angle of each bullet")] public float RandomAngle = 5f;

        Dictionary<IHittable, List<DamageData>> damages = new Dictionary<IHittable, List<DamageData>>();

        protected override void Shot()
        {
            PlayFX();
            handsAnimator.Play("Shot", 0, 0);

            damages.Clear();
            for (int i = 0; i < Bullets; i++)
            {
                Vector3 direction = Camera.main.transform.forward;
                direction = Quaternion.AngleAxis(Random.Range(-RandomAngle, RandomAngle), Camera.main.transform.up) * direction;
                direction = Quaternion.AngleAxis(Random.Range(-RandomAngle, RandomAngle), Camera.main.transform.right) * direction;

                Ray r = new Ray(Camera.main.transform.position, direction);
                RaycastHit hitInfo;

                if (Physics.Raycast(r, out hitInfo, 1000, ShotMask, QueryTriggerInteraction.Ignore))
                {

                    var hittable = hitInfo.collider.GetComponent<IHittable>();
                    if (hittable != null)
                    {
                        DamageData damage = new DamageData()
                        {
                            amount = Damage,
                            direction = r.direction,
                            normal = hitInfo.normal,
                            point = hitInfo.point,
                            size = BulletSize,
                            damageType = DamageType
                        };

                        List<DamageData> damageDatasPerHittable;
                        if (!damages.TryGetValue(hittable, out damageDatasPerHittable))
                        {
                            damageDatasPerHittable = new List<DamageData>();
                            damages.Add(hittable, damageDatasPerHittable);
                        }
                        damageDatasPerHittable.Add(damage);
                    }

                }

                DebugShot(r, hitInfo);
            }

            foreach (var kv in damages)
            {
                kv.Key.TakeDamage(kv.Value.ToArray());
            }
        }
    }
}