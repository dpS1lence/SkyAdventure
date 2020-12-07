using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Console : MonoBehaviour
{
    public GameObject console;
    public GameObject cameraCam;
    public GameObject elementUiUp;
    public float range = 2.0f;
    int counter = 0;

    void Start()
    {
        console.SetActive(false);
        elementUiUp.SetActive(false);
    }

    void Update()
    {
        ReactorB();
    }


    void ReactorB()
    {
        RaycastHit hit;

        Physics.Raycast(cameraCam.transform.position, cameraCam.transform.forward, out hit, range);

        if (hit.collider != null)
        {
            if (hit.collider.tag == "console")
            {
                Debug.Log("das [it");
                elementUiUp.SetActive(true);
                if(Input.GetKeyDown(KeyCode.Q))
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
                    console.SetActive(true);
                }
            }
            
        }
        else
        {
            elementUiUp.SetActive(false);
        }

    }
}
