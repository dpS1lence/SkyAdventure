using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Teleportation : MonoBehaviour
{
    public GameObject loadBar;
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
                    tpObject.SetActive(false);
                    tpObject.transform.position = tpLocation.transform.position;
                    tpObject.SetActive(true);
                    spaceStantion.SetActive(true);
                    spaceShip.SetActive(true);
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

                    StartCoroutine(NextSceneLoading());
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

    public GameObject SceneManager;

    IEnumerator NextSceneLoading()
    {
        yield return new WaitForSeconds(23);

        loadBar.SetActive(true);
        SceneManager.GetComponent<SceneManagement>().LoadScene("DavidScene_2");
    }
}
