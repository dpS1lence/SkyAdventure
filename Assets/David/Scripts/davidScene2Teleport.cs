using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class davidScene2Teleport : MonoBehaviour
{
    public GameObject ui;
    public GameObject objToTp;
    public Camera fPSCam;
    public float range2 = 20.0f;
    public GameObject tpLoc;

    void Start()
    {
        ui.SetActive(false);
    }

    void Update(){
        VRay();
    }


    void VRay()
    {

        RaycastHit hit;
        
        Physics.Raycast(fPSCam.transform.position, fPSCam.transform.forward, out hit, range2);

        if (hit.collider != null)
        {
            Debug.Log(hit.collider.name);
            if (hit.collider.tag == "uiCol")
            {
                ui.SetActive(true);
            }
            
        }
        else 
        {
            ui.SetActive(false);
        }

    }
}
