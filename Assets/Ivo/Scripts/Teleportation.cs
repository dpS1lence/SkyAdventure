using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Teleportation : MonoBehaviour
{
    public GameObject tpLocation;
    public GameObject tpObject;
    public GameObject spaceShip;
    public GameObject camerka1;
    public GameObject camerka2;
    public GameObject fpsCam;
    public GameObject consoleIDPanel;
    public GameObject consolePanelslUI;
    public float range = 10.0f;
    

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "collllll")
            {
                if (Input.GetKeyDown(KeyCode.E))
                {
                    spaceShip.SetActive(true);
                    tpObject.transform.position = tpLocation.transform.position;
                    camerka1.SetActive(false);
                    camerka2.SetActive(true);
                }
            }

            if (hit.collider.name == "UiLeft")
            {
                if(Input.GetMouseButtonDown(0))
                {
                    SceneManager.LoadScene("DavidScene_2");
                }
            }
            if (hit.collider.name == "console")
            {
                consoleIDPanel.SetActive(true);
                if (Input.GetKeyDown(KeyCode.E))
                {
                    consolePanelslUI.SetActive(true);
                    Destroy(consoleIDPanel);
                }
            }

        }

    }
    
    
}
