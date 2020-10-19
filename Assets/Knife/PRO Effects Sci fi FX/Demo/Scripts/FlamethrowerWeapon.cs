using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Flamethrower weapon.
    /// </summary>
    public class FlamethrowerWeapon : Weapon
    {
        /// <summary>
        /// Flame effects particles.
        /// </summary>
        [SerializeField] [Tooltip("Flame effects particles")] private ParticleSystem[] fire;

        private bool isFire = false;

        protected override void Shot()
        {
            handsAnimator.SetBool("IsShooting", true);
            if (!isFire)
            {
                PlayFX();
                foreach (var f in fire)
                {
                    var e = f.emission;
                    e.enabled = true;
                }
            }
            isFire = true;
        }

        protected override void EndFire()
        {
            base.EndFire();
            handsAnimator.SetBool("IsShooting", false);
            if (isFire)
            {
                foreach (var f in fire)
                {
                    var e = f.emission;
                    e.enabled = false;
                }
            }
            isFire = false;
        }
    }
}