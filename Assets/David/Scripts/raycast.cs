using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class raycast : MonoBehaviour
{
    public float damage = 100f;
    public float range = 100f;
    public Camera fpsCam;
    private bool objectIsHitted = false;
    public Animation animationClip;

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            //transform.Rotate(new Vector3(0f, 0f, 50f));
            //transform.Rotate(new Vector4(0f, 0f, -50f));
            Debug.Log("Shoot");

            Shoot();
        }
    }

    void OnMouseDown()
    {
        animationClip.Play();
    }

    void Shoot()
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            Target target = hit.transform.GetComponent<Target>();
            Debug.Log("Shoot_1");

            if (target != null)
            {
                Debug.Log("Shoot_2");
                target.TakeDamage(damage);
            }
        }
    }
}