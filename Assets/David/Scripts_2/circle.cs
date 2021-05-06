using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class circle : MonoBehaviour
{
    public GameObject circle1;
    public GameObject circle2;
    public GameObject fpsCam;
    public GameObject portalParticles;
    public float range = 15f;
    
void Update()
{
    RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "Canvas")
            {
                if (Input.GetKeyDown(KeyCode.E))
                {
                    circle1.SetActive(false);
                    circle2.SetActive(true);
                    portalParticles.SetActive(true);
                }
            }
        }
}
    
}
