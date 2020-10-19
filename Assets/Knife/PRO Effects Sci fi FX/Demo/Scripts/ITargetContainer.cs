using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public interface ITargetContainer
    {
        LockData lockTarget { get; set; }
        Transform target { get; set; }
        Vector3 targetPosition { get; set; }
    }
}