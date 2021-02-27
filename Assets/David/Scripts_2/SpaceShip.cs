using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SpaceShip : MonoBehaviour
{
    public float timeRemaining = 10;
    public Text text;
    public Animator animator;
    public GameObject camera1;
    public GameObject camera2;
    public GameObject ship;
    public GameObject sound;
    public float range = 5.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(camera1.transform.position, camera1.transform.forward, out hit, range))
        {
            if (hit.collider.name == "deskColider")
            {
                sound.SetActive(true);
                if (timeRemaining > 0)
                {   
                    timeRemaining -= Time.deltaTime;
                }
                else{
                    camera1.SetActive(false);
                    camera2.SetActive(true);
                    ship.SetActive(false);
                    animator.SetBool("activate", true);
                }
            }
            text.text = timeRemaining.ToString();
        }
    }
}
