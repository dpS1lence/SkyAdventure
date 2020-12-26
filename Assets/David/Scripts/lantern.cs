using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lantern : MonoBehaviour
{

    public GameObject lanternB;
    public GameObject gun;
    public GameObject uiMenu;


    // Start is called before the first frame update
    void Start()
    {
        gun.SetActive(false);
        lanternB.SetActive(true);
        uiMenu.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetAxis("Mouse ScrollWheel") > 0f )
        {
            gun.SetActive(false);
            lanternB.SetActive(true);
            uiMenu.SetActive(false);
        }
        if(Input.GetAxis("Mouse ScrollWheel") < 0f )
        {
            gun.SetActive(true);
            lanternB.SetActive(false);
            uiMenu.SetActive(true);
        }
        
    }
}
