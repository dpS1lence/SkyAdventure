using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class Pausing : MonoBehaviour
{
    public GameObject pauseMenu;
    public GameObject player;

    bool paused = false;

    void Update()
    {
        pauseMenu.SetActive(paused);
        player.SetActive(!paused);
        Cursor.visible = paused;
        Cursor.lockState = CursorLockMode.None;

        if (Input.GetKeyDown(KeyCode.Escape) || Input.GetKeyDown(KeyCode.P))
        {
            paused = !paused;
        }
    }

    public void ExitPause()
    {
        paused = false;
    }
}
