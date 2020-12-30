using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIwRaycast : MonoBehaviour
{
    /*public Camera fpsCam;
    public GameObject uiEl;
    public float range = 100f;
    public float show = 100f;
    public FirstPersonAIO movement;
    public GameObject objToTp;
    public Transform tpLoc;
    public GameObject ui;

    RaycastHit hit;

    void Start()
    {
        uiEl.SetActive(false);
        ui.SetActive(false);
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
                    uiEl.SetActive(false);
                    StartCoroutine(WaitBeforeTp());
                }
            }
            else
            {
                uiEl.SetActive(false);
            }
        }
    }

    IEnumerator WaitBeforeTp()
    {
        ui.SetActive(true);

        //yield on a new YieldInstruction that waits for 5 seconds.
        yield return new WaitForSeconds(4);
        objToTp.transform.position = tpLoc.transform.position;
        ui.SetActive(false);
    }*/

}