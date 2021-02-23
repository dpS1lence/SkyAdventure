using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemyDieTrash : MonoBehaviour
{
    public GameObject player;
    public GameObject fpsCam;
    public GameObject tntmain;
    public float range = 30.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetButtonDown("Fire1"))
        {
            Shoot();
        }
    }
    void Shoot()
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.tag == "Enemy")
            {
                Destroy(player);
            }
        }
    }
}
