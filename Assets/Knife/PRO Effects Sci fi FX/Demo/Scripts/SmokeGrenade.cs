using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Smoke grenade component.
    /// </summary>
    public class SmokeGrenade : MonoBehaviour, ICollisionIgnore
    {
        /// <summary>
        /// Activate timer.
        /// </summary>
        [SerializeField] [Tooltip("Activate timer")] private float activateTimer = 3f;
        /// <summary>
        /// Duration of smoke.
        /// </summary>
        [SerializeField] [Tooltip("Duration of smoke")] private float duration = 15f;
        /// <summary>
        /// Particle systems array.
        /// </summary>
        [SerializeField] [Tooltip("Particle systems array")] private ParticleSystem[] particles;
        /// <summary>
        /// Initial velocity of grenade (direction is forward of tranform).
        /// </summary>
        [SerializeField] [Tooltip("Initial velocity of grenade (direction is forward of tranform)")] private float speed = 5f;
        /// <summary>
        /// Initial angular speed of grenade.
        /// </summary>
        [SerializeField] [Tooltip("Initial angular speed of grenade")] private Vector3 angularSpeed = new Vector3(60, 0, 0);

        private Rigidbody body;
        private Collider grenadeCollider;
        private float elapsedTime = 0;

        private bool isActivated = false;
        private bool isEnded = false;

        private void OnEnable()
        {
            body = GetComponent<Rigidbody>();
            body.velocity = transform.forward * speed;
            body.angularVelocity = angularSpeed;
            grenadeCollider = GetComponent<Collider>();

            foreach (var p in particles)
            {
                p.gameObject.SetActive(false);
            }
        }

        /// <summary>
        /// ICollisionIgnore.IgnoreCollision implementation. Enable ignoring of collision between grenade collider and collider.
        /// </summary>
        /// <param name="collider">collider that should be ignored</param>
        public void IgnoreCollision(Collider collider)
        {
            Physics.IgnoreCollision(collider, grenadeCollider);
        }

        private void Update()
        {
            if (isEnded)
                return;

            if (isActivated)
            {
                elapsedTime += Time.deltaTime;

                if (elapsedTime >= duration)
                {
                    Deactivate();
                }
            }
            else
            {
                elapsedTime += Time.deltaTime;

                if (elapsedTime >= activateTimer)
                {
                    Activate();
                }
            }
        }

        private void Activate()
        {
            isActivated = true;
            elapsedTime = 0;

            foreach (var p in particles)
            {
                p.gameObject.SetActive(true);
            }
        }

        private void Deactivate()
        {
            isEnded = true;
            isActivated = false;

            foreach(var p in particles)
            {
                var emission = p.emission;
                emission.enabled = false;
            }
        }
    }
}