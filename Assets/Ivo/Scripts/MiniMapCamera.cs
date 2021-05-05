using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniMapCamera : MonoBehaviour
{
    public GameObject SceneManager;
    public GameObject player;
    public GameObject hoverCar;
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
            hoverCar.SetActive(true);
            //SceneManager.GetComponent<SceneManagement>().LoadScene("Maze");
        }
    }
}
