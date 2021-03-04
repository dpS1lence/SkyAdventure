using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class finalescene : MonoBehaviour
{
    public GameObject panelsParent;
    public GameObject consoleUi;
    public GameObject fpsCam;
    public float range = 40f;


    // Update is called once per frame
    void Update()
    {
        Ray();
    }
    void Ray()
    {
        RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            //Activate console
            if(hit.collider.name == "console")
            {
                consoleUi.SetActive(true);

                if(Input.GetKeyDown(KeyCode.E))
                {
                    panelsParent.SetActive(true);
                    consoleUi.SetActive(false);
                }
            }

            //tutorial
            if(hit.collider.name == "tutorial" && Input.GetButton("Fire1"))
            {
                SceneManager.LoadScene("DavidScene");
            }

            //forest
            if(hit.collider.name == "forest" && Input.GetButton("Fire1"))
            {
                SceneManager.LoadScene("DavidScene_2");
            }

            //maze
            if(hit.collider.name == "maze" && Input.GetButton("Fire1"))
            {
                SceneManager.LoadScene("Maze");
            }
        }   
    }
}
