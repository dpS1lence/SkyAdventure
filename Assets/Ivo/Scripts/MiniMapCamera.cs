using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniMapCamera : MonoBehaviour
{
    public GameObject player;
    public Transform Camera;
    Vector3 position;
    bool yes = false;

    // Start is called before the first frame update
    void Start()
    {
        position = Camera.position;
    }

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
            Camera.position = position;
        }
    }
}
