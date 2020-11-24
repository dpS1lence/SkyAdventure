using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadMaze : MonoBehaviour
{
    public Camera cam;
    public float range;

    void Update()
    {
        RaycastHit hit;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit, range))
        {
            if (hit.collider.tag == "Gate")
            {
                SceneManager.LoadScene("Maze");
            }
        }
    }
}
