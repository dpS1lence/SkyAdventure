using UnityEngine;

namespace Knife.Effects
{
    /// <summary>
    /// Simple damage data.
    /// </summary>
    public struct DamageData
    {
        /// <summary>
        /// Amount of damage.
        /// </summary>
        public float amount;
        /// <summary>
        /// Damage hit point.
        /// </summary>
        public Vector3 point;
        /// <summary>
        /// Damage hit normal.
        /// </summary>
        public Vector3 normal;
        /// <summary>
        /// Damage direction.
        /// </summary>
        public Vector3 direction;
        /// <summary>
        /// Damage 'bullet' size.
        /// </summary>
        public float size;
        /// <summary>
        /// Damage type.
        /// </summary>
        public DamageTypes damageType;
    }
}