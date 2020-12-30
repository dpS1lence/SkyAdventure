using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoaderSpaceShip : MonoBehaviour
{
    void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.name == "colider")
        {
            Debug.Log("em_nice");
            SceneManager.LoadScene("Mineshaft");
        }

    }
}
