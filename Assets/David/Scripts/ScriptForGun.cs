using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptForGun : MonoBehaviour
{
    public GameObject cameraff;
    public float range3 = 2.0f;
    public GameObject enemy;

    void Start()
    {
    }

    void Update()
    {
        Shoot();
    }


    void Shoot()
    {
        RaycastHit hit;

        Physics.Raycast(cameraff.transform.position, cameraff.transform.forward, out hit, range3);

        if (hit.collider != null)
        {
            if (hit.collider.name == "ColiderChest")
            {
                if(Input.GetButtonDown("Fire1"))
                {
                    Destroy(enemy);
                }
            }
        }
    }
}
