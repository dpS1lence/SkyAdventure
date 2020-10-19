using Knife.ScifiEffects;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects
{
    /// <summary>
    /// Particle group emitter component.
    /// </summary>
    public class ParticleGroupEmitter : MonoBehaviour
    {
        /// <summary>
        /// Particle systems array.
        /// </summary>
        [SerializeField] [Tooltip("Particle systems array")] private ParticleSystem[] particleSystems;
        [SerializeField] [Tooltip("Fade renderers")] private RendererFade[] fadeRenderers;
        [SerializeField] private float fadeDuration = 0.5f;
        /// <summary>
        /// Particle count multiplier.
        /// </summary>
        [SerializeField] [Tooltip("Particle count multiplier")] private int countMultiplier = 1;

        [SerializeField] private bool emissionEnabled = false;

        public float SimulationSpeed
        {
            get
            {
                return simulationSpeed;
            }
            set
            {
                simulationSpeed = value;
                foreach (var ps in particleSystems)
                {
                    var main = ps.main;
                    main.simulationSpeed = simulationSpeed;
                }
            }
        }

        private float simulationSpeed = 1f;

        private void OnEnable()
        {
            EnableEmission(emissionEnabled);
        }

        /// <summary>
        /// Emits particles from particleSystems array with count multiplier.
        /// </summary>
        /// <param name="count">count multiplier</param>
        public void Emit(int count)
        {
            foreach(var ps in particleSystems)
            {
                if (ps.main.startDelay.constant == 0)
                    Emit(ps, count * countMultiplier);
                else
                    StartCoroutine(PlayDelayed(ps, count));
            }
        }

        public void EnableEmission(bool enabled)
        {
            foreach(var ps in particleSystems)
            {
                var emission = ps.emission;
                emission.enabled = enabled;
            }
        }

        public void Show()
        {
            if (fadeRenderers != null)
            {
                foreach (var fade in fadeRenderers)
                {
                    if (fade)
                        fade.Show(fadeDuration);
                }
            }
        }

        public void Fade()
        {
            if (fadeRenderers != null)
            {
                foreach (var fade in fadeRenderers)
                {
                    if (fade)
                        fade.Fade(fadeDuration);
                }
            }
        }

        public void ClearParticles()
        {
            foreach (var ps in particleSystems)
            {
                ps.Clear();
            }
        }

        private IEnumerator PlayDelayed(ParticleSystem particleSystem, int count)
        {
            yield return new WaitForSeconds(particleSystem.main.startDelay.constant);
            Emit(particleSystem, count);
        }

        private void Emit(ParticleSystem particleSystem, int count)
        {
            if (particleSystem.emission.burstCount == 0)
            {
                particleSystem.Emit(count * countMultiplier);
            }
            else
            {
                var burst = particleSystem.emission.GetBurst(0);
                switch(burst.count.mode)
                {
                    case ParticleSystemCurveMode.Constant:
                        particleSystem.Emit((int)burst.count.constant * countMultiplier * count);
                        break;
                    case ParticleSystemCurveMode.TwoConstants:
                        particleSystem.Emit((int)Random.Range(burst.count.constantMin, burst.count.constantMax) * countMultiplier * count);
                        break;
                }
            }
        }
    }
}