using System.Collections;
using System.Collections.Generic;

namespace Knife.Effects
{
    /// <summary>
    /// Simple Hittable object interface
    /// </summary>
    public interface IHittable
    {
        void TakeDamage(DamageData[] damage);
    }
}