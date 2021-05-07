using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniMapCamera : MonoBehaviour
{
    public GameObject SceneManager;
    public GameObject player;
    public GameObject hoverCar;
    public GameObject uiPanel1;
    public GameObject uiPanel2;
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
            uiPanel1.SetActive(false);
            uiPanel2.SetActive(false);
            hoverCar.SetActive(true);
            //SceneManager.GetComponent<SceneManagement>().LoadScene("Maze");
        }
    }
}
