using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIwRaycast : MonoBehaviour
{
    public Camera fpsCam;
    public GameObject uiEl;
    public float range = 100f;
    public float show = 100f;
    public FirstPersonAIO movement;
    public GameObject objToTp;
    public Transform tpLoc;

    RaycastHit hit;

    void Start()
    {
        uiEl.SetActive(false);
    }
    void Update()
    {
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "other")
            {
                uiEl.SetActive(true);
                if (Input.GetKeyDown(KeyCode.E))
                {
                    objToTp.transform.position = tpLoc.transform.position;
                }
            }
            else
            {
                uiEl.SetActive(false);
            }
        }
    }

}