using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class circle : MonoBehaviour
{
    public GameObject circle1;
    public GameObject circle2;
    public GameObject fpsCam;
    public float range = 15f;
    
void Update()
{
    RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "consol")
            {
                if (Input.GetKeyDown(KeyCode.E))
                {
                    circle1.SetActive(false);
                    circle2.SetActive(true);
                }
            }
        }
}
    private void OnTriggerEnter(Collider other) 
    {
        if(other.name == "Circle1")
        {
            SceneManager.LoadScene("Maze");
        }
    }
}
