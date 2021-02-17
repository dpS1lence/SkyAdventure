using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class miniMap : MonoBehaviour
{
    public Transform player;
    private void LateUpdate() 
    {
        Vector3 newPossition = player.position;
        newPossition.y = transform.position.y;
        transform.position = newPossition;

        transform.rotation = Quaternion.Euler(90f, player.eulerAngles.y, 0f);
    }
}
