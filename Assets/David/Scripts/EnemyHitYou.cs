using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHitYou : MonoBehaviour
{
    public GameObject fpsCam;
    public float range = 30.0f;

    // Start is called before the first frame update
    void Start()
    {

    }
    private void Update() 
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            Debug.Log(hit.collider.name);
            if (hit.collider.tag == "FPS")
            {
                Debug.Log("hit");
            }  
        }
    }
}
