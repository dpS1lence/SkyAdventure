using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class SceneLoader : MonoBehaviour
{

    public string previousScene;
    public GameObject fpsCam;
    public float damage = 10.0f;
    public float range = 2.0f;

    void Update () {
        Shoot();
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "spaceship")
        {
            SceneManager.LoadScene("SpaceShip");
        }
        else if (collision.collider.tag == "backdoor")
        {
            SceneManager.LoadScene(previousScene);
        }
        else if (collision.collider.tag == "console")
        {
            SceneManager.LoadScene("DavidScene_2");
        }
        
    }

    void Shoot()
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            Debug.Log("raycastaqedf");
            if(hit.collider.name == "deskColider")
            {
                Debug.Log("raycasta");
                SceneManager.LoadScene("DavidScene_2");
            }
        }
    }


}
