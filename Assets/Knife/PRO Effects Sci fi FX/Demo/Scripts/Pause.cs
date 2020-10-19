using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class Pause : MonoBehaviour
    {

        void Update()
        {
            if(Input.GetKeyDown(KeyCode.Pause))
            {
#if UNITY_EDITOR
                UnityEditor.EditorApplication.isPaused = !UnityEditor.EditorApplication.isPaused;
#endif
            }
        }
    }
}