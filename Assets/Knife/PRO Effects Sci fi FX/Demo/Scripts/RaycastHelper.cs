using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class RaycastHelper : MonoBehaviour
    {
        private void DrawGizmos(bool selected)
        {
            Ray r = new Ray(transform.position, transform.forward);
            RaycastHit hit;

            Vector3 endPoint;

            if (Physics.Raycast(r, out hit))
            {
                endPoint = hit.point;
            }
            else
            {
                endPoint = r.GetPoint(1000);
            }

            if (selected)
                Gizmos.color = Color.red;
            else
                Gizmos.color = Color.green;

            Gizmos.DrawLine(transform.position, endPoint);
        }

        private void OnDrawGizmos()
        {
            DrawGizmos(false);
        }

        private void OnDrawGizmosSelected()
        {
            DrawGizmos(true);
        }
    }
}