using Knife.Effects;
using UnityEngine;

namespace Knife.ScifiEffects
{
    [System.Serializable]
    public class LockData
    {
        private Vector3 point;
        private Transform transform;
        private IHittable hittable;

        public IHittable Hittable { get => hittable; }
        public Transform Transform { get => transform; }
        public Vector3 LocalPoint { get => point; set => point = value; }
        public Vector3 WorldPoint
        {
            get
            {
                if (hasTarget)
                    return transform.TransformPoint(LocalPoint);
                else
                    return LocalPoint;
            }
            set
            {
                if (hasTarget)
                    LocalPoint = transform.InverseTransformPoint(value);
                else
                    LocalPoint = value;
            }
        }

        private bool hasTarget = false;

        public void Set(Transform transform, IHittable hittable)
        {
            this.transform = transform;
            this.hittable = hittable;
            hasTarget = true;
        }
    }
}