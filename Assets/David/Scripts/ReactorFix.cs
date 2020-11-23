using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReactorFix : MonoBehaviour
{

    public GameObject lightBlink;
    public GameObject cameraff;
    public GameObject elementUi;
    public float range3 = 2.0f;
    int counter = 0;

    void Start()
    {
        lightBlink.SetActive(false);
        elementUi.SetActive(false);
    }

    void Update()
    {
        ReactorB();
    }


    void ReactorB()
    {
        RaycastHit hit;

        Physics.Raycast(cameraff.transform.position, cameraff.transform.forward, out hit, range3);

        if (hit.collider != null)
        {
            if (hit.collider.tag == "reactor")
            {
                elementUi.SetActive(true);
                if(Input.GetKeyDown(KeyCode.Alpha1))
                {
                    Debug.Log("1");
                    counter = counter + 1;
                    
                }
                else if(Input.GetKeyDown(KeyCode.Alpha2))
                {
                    Debug.Log("2");
                    counter = counter + 1;
                        
                }
                else if(Input.GetKeyDown(KeyCode.Alpha3))
                {
                    Debug.Log("3");
                    counter = counter + 1;
                            
                }
                else if(Input.GetKeyDown(KeyCode.Alpha4))
                {
                    Debug.Log("4");
                    counter = counter + 1;
                }
                if(counter == 4)
                {
                    lightBlink.SetActive(true);
                }
            }
            
        }
        else
        {
            elementUi.SetActive(false);
        }

    }



}
