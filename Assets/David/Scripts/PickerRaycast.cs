using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickerRaycast : MonoBehaviour
{
    public float damage = 100f;
    public float range = 100f;
    public Camera fpsCam;
    private bool objectIsHitted = false;

    void Update()
    {
        if (Input.GetKey(KeyCode.E))
        {
            Debug.Log("Shoot");

            Shoot();
        }
    }

    void Shoot()
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            Picker picker = hit.transform.GetComponent<Picker>();
            Debug.Log("Shoot_1");

            if (picker != null)
            {
                Debug.Log("Shoot_2");
                picker.TakeDamage(damage);
            }
        }
    }
}