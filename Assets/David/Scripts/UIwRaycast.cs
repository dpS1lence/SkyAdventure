using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIwRaycast : MonoBehaviour
{
    public Camera fpsCam;
    public GameObject uiEl;
    public float range = 100f;
    public float show = 100f;

    RaycastHit hit;

    void Start()
    {
        uiEl.SetActive(false);
    }
    void Update()
    {
        if (hit.collider.name == "other")
        {
            Debug.Log("hitted");
            Shoot();
        }
    }

    void Shoot()
    {
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            uiEl.SetActive(true);
        }
    }
}