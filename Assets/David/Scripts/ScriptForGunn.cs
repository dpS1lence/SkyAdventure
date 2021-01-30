using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptForGunn : MonoBehaviour
{
public GameObject cameraff;
    public float range3 = 2.0f;
    public GameObject enemy;
    public float damage = 35.0f;
    public float head = 120.0f;
    public Animation baseballBat;

    void Update()
    {
        if(Input.GetButtonDown("Fire1"))
        {
            Debug.Log("Update");
            baseballBat.Play();
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
                enemyCs target = hit.transform.GetComponent<enemyCs>();
                target.TakeDamage(damage);
            }
            if(hit.collider.name == "ColiderHead")
            {
                enemyCs target = hit.transform.GetComponent<enemyCs>();
                Debug.Log(hit.collider.name);
                target.TakeDamage(head);
            }
        }
    }

}
