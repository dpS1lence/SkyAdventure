using Knife.Effects.SimpleController;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    [RequireComponent(typeof(LocalRotator))]
    public class LocalRotatorByWeaponShooting : MonoBehaviour
    {
        [SerializeField] private float smoothTime = 0.2f;
        [SerializeField] private Weapon weapon;

        private LocalRotator localRotator;
        private float speed;
        private float velocity;

        private void Start()
        {
            localRotator = GetComponent<LocalRotator>();
        }

        private void Update()
        {
            speed = Mathf.SmoothDamp(speed, weapon.IsShooting ? 1 : 0, ref velocity, smoothTime);

            localRotator.Speed = speed;
        }
    }
}