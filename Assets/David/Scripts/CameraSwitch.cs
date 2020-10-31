using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraSwitch : MonoBehaviour
{

    public Transform Player;

    public Camera FirstPersonCam;
    public Camera Camera2ndview;
    public GameObject HoverCarContr;
    public GameObject ObjectToTp;
    public Transform PlayerTransform2Obj;
    public Camera CutSceneCam;
    //public Animation animationAs;

    void Start()
    {
        Camera2ndview.gameObject.SetActive(false);
        CutSceneCam.gameObject.SetActive(false);
        HoverCarContr.gameObject.SetActive(false);

        FirstPersonCam.gameObject.SetActive(true);

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            FirstPersonCam.gameObject.SetActive(false);
            CutSceneCam.gameObject.SetActive(true);
            HoverCarContr.gameObject.SetActive(true);
            //animationAs.Play();
        }
        if (Input.GetKeyDown(KeyCode.G))
        {
            FirstPersonCam.gameObject.SetActive(false);
            CutSceneCam.gameObject.SetActive(false);
            HoverCarContr.gameObject.SetActive(true);
            Camera2ndview.gameObject.SetActive(true);
            //animationAs.Play();
        }
        if (Input.GetKeyDown(KeyCode.P))
        {
            CutSceneCam.gameObject.SetActive(false);
            HoverCarContr.gameObject.SetActive(false);
            ObjectToTp.transform.position = PlayerTransform2Obj.transform.position;
            FirstPersonCam.gameObject.SetActive(true);
        }

    }
}