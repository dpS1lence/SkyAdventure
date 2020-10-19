using UnityEngine;

namespace Knife.Effects.SimpleController
{
    public interface ICollisionIgnore
    {
        void IgnoreCollision(Collider collider);
    }
}