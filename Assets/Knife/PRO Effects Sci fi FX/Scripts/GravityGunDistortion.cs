using Knife.Effects.SimpleController;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    [RequireComponent(typeof(Animator))]
    public class GravityGunDistortion : MonoBehaviour
    {
        [SerializeField] private GravityGunWeapon gravityGunWeapon;

        private Animator animator;

        private void Start()
        {
            gravityGunWeapon.OnGrab += OnGrab;
            gravityGunWeapon.OnLeave += OnLeave;
            gravityGunWeapon.OnThrow += OnThrow;

            animator = GetComponent<Animator>();
        }

        private void OnThrow()
        {
            animator.Play("Gravity Gun Distortion OUT", 0, 0);
        }

        private void OnLeave()
        {
            animator.Play("Gravity Gun Distortion OUT ZERO", 0, 0);
        }

        private void OnGrab()
        {
            animator.Play("Gravity Gun Distortion IN", 0, 0);
        }
    }
}