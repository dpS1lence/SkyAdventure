using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHitYou : MonoBehaviour
{
    private void OnCollisionEnter(Collision other) 
    {
        Debug.Log(other.collider.name);
        /*if(other.collider.tag == "enemy hands")
        {
            Debug.Log("gdfjagdfjgajdfg");
        }*/
    }
}
