using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerTp : MonoBehaviour
{
    public GameObject ui;
    public GameObject objToTp;
    public Camera PCam;
    public float range2 = 2.0f;

    public Transform tpLoc;

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

        Physics.Raycast(PCam.transform.position, PCam.transform.forward, out hit, range2);

        if (hit.collider != null)
        {
            if (hit.collider.name == "other")
            {
                Debug.Log("secondHit");
                ui.SetActive(true);
                if(Input.GetKeyDown(KeyCode.B))
                {
                    objToTp.transform.position = tpLoc.transform.position;
                    ui.SetActive(false);
                }
            }
            
        }
        else 
        {
            ui.SetActive(false);
        }

    }

    void OnColisionExit()
    {
        ui.SetActive(false);
    }
    
}

    