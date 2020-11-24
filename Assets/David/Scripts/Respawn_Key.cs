using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Respawn_Key : MonoBehaviour
{

    public GameObject uiMenu;
    public GameObject camera1;
    public GameObject mainCamera;
    public GameObject camera3;
    public ParticleSystem particle1;
    public Animation animation1;
    public Animation animation2;

    public Transform currentPosition;
    public Transform wantedPosition;

    void Start()
    {
        uiMenu.SetActive(false);
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.M))
        {
            Respawn();
        }
    }

    void Respawn()
    {
        camera1.SetActive(true);
        mainCamera.SetActive(false);
        animation1.Play();
        animation2.Play();
        particle1.Play();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "ColliderRespawn")
        {
            currentPosition.transform.position = wantedPosition.transform.position;
            camera1.SetActive(false);
            mainCamera.SetActive(true);
        }
    }

}
