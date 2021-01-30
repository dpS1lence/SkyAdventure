using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Chest" || collision.collider.tag == "Head")
        {
            //stun enemy
        }
    }

    private void Update()
    {
        Invoke("OnDestroy", 5);
    }

    private void OnDestroy()
    {
        Debug.Log("destroyed bullet");
        Destroy(gameObject);
    }
}
