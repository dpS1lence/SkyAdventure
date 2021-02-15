using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class tnt : MonoBehaviour
{

    public GameObject tnt1;
    public GameObject tnt2;
    public GameObject rocks;
    public GameObject tntExplosionParticles;
    public GameObject tntExplosionParticles2;
    public GameObject player;
    public GameObject fpsCam;
    public float range = 30.0f;

    // Start is called before the first frame update
    void Start()
    {
        tnt2.SetActive(false);
        tntExplosionParticles.SetActive(false);
    }
    private void Update() 
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            Debug.Log(hit.collider.name);
            if (hit.collider.tag == "tnt1")
            {
                if(Input.GetKeyDown(KeyCode.E))
                {
                    tnt1.SetActive(false);
                    tnt2.SetActive(true);               
                }
            }
            if (hit.collider.tag == "tnt2")
            {
                if(Input.GetKeyDown(KeyCode.E))
                {
                    tntExplosionParticles.SetActive(true);
                    Destroy(tntExplosionParticles2, 2);
                    tnt2.SetActive(false);
                    Destroy(rocks);             
                }
            }            
        }
    }
}
