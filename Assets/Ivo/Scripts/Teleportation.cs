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
    public GameObject spaceStantion;
    public GameObject mouseCursur;
    public GameObject infoUILeft;
    public float range = 15.0f;
    

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            //tpObject.transform.position = tpLocation.transform.position;
        }
        Ray();
    }
    
    void Ray()
    {
        RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "coliderTpToShip")
            {
                if (Input.GetKeyDown(KeyCode.E))
                {
                    spaceStantion.SetActive(true);
                    spaceShip.SetActive(true);
                    tpObject.transform.position = tpLocation.transform.position;
                    //camerka1.SetActive(false);
                    //camerka2.SetActive(true);
                }
            }
            else if(hit.collider.name == "UiLeft")
            {
                infoUILeft.SetActive(true);
                Debug.Log("MouseHit");
                if(Input.GetButton("Fire1"))
                {
                    Debug.Log("MouseHit");
                    camerka2.SetActive(true);
                    camerka1.SetActive(true);
                    mouseCursur.SetActive(false);
                    //SceneManager.LoadScene("DavidScene_2");
                }
            }
            else if (hit.collider.name == "console")
            {
                consoleIDPanel.SetActive(true);
                if (Input.GetKeyDown(KeyCode.E))
                {
                    mouseCursur.SetActive(true);
                    consolePanelslUI.SetActive(true);
                    Destroy(consoleIDPanel);
                }
            } 
            else
            {
                consoleIDPanel.SetActive(false);
            }
        }   
    }
}
