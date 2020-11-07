using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerTp : MonoBehaviour
{
    public GameObject ui;
    public GameObject objToTp;

    public Transform tpLoc;

    void Start()
    {
        ui.SetActive(false);
    }

    void OnCollisionEnter(Collision collisionInfo)
    {
        Debug.Log("firstHit");
        if (collisionInfo.collider.name == "other")
        {
            Debug.Log("secondHit");
            ui.SetActive(true);
            objToTp.transform.position = tpLoc.transform.position;
        }
    }

    void OnColisionExit()
    {
        ui.SetActive(false);
    }
    
}

    