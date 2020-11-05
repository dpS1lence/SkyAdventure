using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{
    public Transform cam1;
    public Transform cam2;
    public Transform target;
    bool switchCam = false;

    void LateUpdate()
    {
        cam1.position = target.position;
        cam1.rotation = target.rotation;

        cam2.position = target.position;
        cam2.rotation = target.rotation;

        if (Input.GetKeyDown(KeyCode.F))
        {
            switchCam = !switchCam;

            cam1.gameObject.SetActive(false);
            cam2.gameObject.SetActive(true);
        }
    }
}
