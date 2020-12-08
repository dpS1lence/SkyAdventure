using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoaderSpaceShip : MonoBehaviour
{
    public string previousScene;

    void OnCollisionEnter(Collision collision)
    {
        Debug.Log("em_niceff");
        if (collision.collider.tag == "console")
        {
            Debug.Log("em_nice");
            SceneManager.LoadScene("DavidScene");
        }

    }
}
