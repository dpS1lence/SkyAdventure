using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniMapCamera : MonoBehaviour
{
    public GameObject SceneManager;
    public GameObject player;
    bool yes = false;


    private void Update()
    {
        if (player.GetComponent<tnt>().k == 1)
        {
            yes = true;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (yes)
        {
            SceneManager.GetComponent<SceneManagement>().LoadScene("Maze");
        }
    }
}
