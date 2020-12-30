using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickaxeDestroyer : MonoBehaviour
{
    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "destroyer")
        {
            Destroy(gameObject);
        }

    }

}