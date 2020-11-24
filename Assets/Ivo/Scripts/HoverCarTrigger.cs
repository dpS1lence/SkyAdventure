using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HoverCarTrigger : MonoBehaviour
{
    public Transform playerCamera;
    public GameObject player;
    public GameObject hoverCar;
    public GameObject hoverCarCamera;

    public float range = 2;

    public float spawnOffsetZ;
    public float spawnOffsetX;
    public float spawnOffsetY;

    bool inCar = false;


    private void Start()
    {
        hoverCarCamera.SetActive(false);
        hoverCar.GetComponent<HoverCarControl>().enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (inCar == true)
            {
                InstateRaycast();
            }
            else
            {
                LeaveCar();
            }
        }
    }

    public void InstateRaycast()
    {
        RaycastHit hit;

        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, range);

        if (hit.collider != null)
        {
            if (hit.collider.tag == "hoverCar")
            {
                hoverCar.GetComponent<HoverCarControl>().enabled = true;
                hoverCarCamera.SetActive(true);
                player.SetActive(false);
                hoverCar.SetActive(true);
            }

        }

    }

    public void LeaveCar()
    {
        Vector3 spawnPosition = new Vector3(hoverCar.transform.position.x + spawnOffsetX, hoverCar.transform.position.y + spawnOffsetY, hoverCar.transform.position.z + spawnOffsetZ);

        player.transform.position = spawnPosition;


        player.SetActive(true);
        hoverCarCamera.SetActive(false);
        hoverCar.GetComponent<HoverCarControl>().enabled = false;
    }
}
