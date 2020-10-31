using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraSwitch : MonoBehaviour
{
    public Transform Player;
    public Camera FirstPersonCam;
    public Camera Camera2ndview;
    public GameObject ObjectToTp;
    public Transform PlayerTransform2Obj;
    public Camera CutSceneCam;
    public GameObject GmOForState;
    public float range = 10.0f;
    int state;
    //public Animation animationAs
    void Start()
    {
        
        state = GmOForState.GetComponent<StateCs>().state;
        Camera2ndview.gameObject.SetActive(false);
        CutSceneCam.gameObject.SetActive(false);

        FirstPersonCam.gameObject.SetActive(true);

    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if(state == 0)
        {
            if (Input.GetKeyDown(KeyCode.P))
            {
                CutSceneCam.gameObject.SetActive(false);
                ObjectToTp.transform.position = PlayerTransform2Obj.transform.position;
                FirstPersonCam.gameObject.SetActive(true);
            }
        }


        if (Input.GetKeyDown(KeyCode.E))
        {
            state = state + 1;
            //animationAs.Play();
        }
        if (Physics.Raycast(FirstPersonCam.transform.position, FirstPersonCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "HoverCar Prefab")
            {
                if (Input.GetKeyDown(KeyCode.E))
                {
                    if(state == 1)
                    {
                        FirstPersonCam.gameObject.SetActive(false);
                        CutSceneCam.gameObject.SetActive(true);
                    }
                }
            }
        }
        





        /*if (Input.GetKeyDown(KeyCode.G))
        {
            FirstPersonCam.gameObject.SetActive(false);
            CutSceneCam.gameObject.SetActive(false);
            HoverCarContr.gameObject.SetActive(true);
            Camera2ndview.gameObject.SetActive(true);
            //animationAs.Play();
        }*/
        

    }
}