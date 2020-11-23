using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Respawn : MonoBehaviour
{
    public GameObject camera1;
    public GameObject mainCamera;
    public GameObject camera3;
    public ParticleSystem particle1;
    public Animation animation1;
    public Animation animation2;

    // Start is called before the first frame update
    void Start()
    {
        camera1.SetActive(true);
        mainCamera.SetActive(false);
        camera3.SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "ColliderRespawn")
        {
            camera1.SetActive(false);
            mainCamera.SetActive(true);
            camera3.SetActive(false);
        }
    }
}
