using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterCollision : MonoBehaviour
{
    public GameObject uiElementWater;


    // Start is called before the first frame update
    void Start()
    {
        uiElementWater.SetActive(false);
    }
    
    void OnTriggerEnter(Collision collisionInfo)
    {
        if (collisionInfo.collider.tag == "water")
        {
            uiElementWater.SetActive(true);
        }
    }

    void OnTriggerExit()
    {
        uiElementWater.SetActive(false);
    }
}
