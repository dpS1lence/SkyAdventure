using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GettingItem : MonoBehaviour
{
    public Camera cam;

    public Animator anim;

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            Debug.Log("Shot");
            InstateRaycast();
        }
    }

    void InstateRaycast()
    {
        RaycastHit hit;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit))
        {
            Debug.Log("Raycast");

            if (hit.collider.tag == "item")
            {
                Debug.Log("Item");
                anim.SetBool("open", true);
            }
        }
    }
}
