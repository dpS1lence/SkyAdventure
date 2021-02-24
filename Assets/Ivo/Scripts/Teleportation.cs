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

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            spaceShip.SetActive(true);
            tpObject.transform.position = tpLocation.transform.position;
            camerka1.SetActive(false);
            camerka2.SetActive(true);
        }
    }
    
    
}
