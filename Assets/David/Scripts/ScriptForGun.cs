using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptForGun : MonoBehaviour
{
    public GameObject cameraff;
    public float range3 = 2.0f;
    public GameObject enemy;
    public float damage = 35.0f;

    void Start()
    {

    }

    void Update()
    {
        if(Input.GetButtonDown("Fire1"))
        {
            Debug.Log("Update");
            Shoot();
        }
    }


    void Shoot()
    {
        RaycastHit hit;

        Physics.Raycast(cameraff.transform.position, cameraff.transform.forward, out hit, range3);

        if (hit.collider != null)
        {
            Debug.Log("hitColider");
            if (hit.collider.name == "ColiderChest")
            {
                Debug.Log("hitChest");
                Target target = hit.transform.GetComponent<Target>();
                target.TakeDamage(damage);
            }
        }
    }
}
