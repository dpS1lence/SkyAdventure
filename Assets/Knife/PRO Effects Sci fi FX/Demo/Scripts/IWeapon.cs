using System;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    public interface IWeapon
    {
        event Action<Vector2> OnFire;
        float CurrentFov { get; }
        void SetActive(bool value);
        bool isActive { get; }
        void Freeze(bool value);
    }
}