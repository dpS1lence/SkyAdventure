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
    public GameObject tntmain;
    public float range = 30.0f;
    public GameObject uIMenu1;
    public GameObject uIMenu2;
    public GameObject miniMap;
    public GameObject miniMaptext;
    public GameObject miniMapMap;
    public GameObject cameraminimap;
    public GameObject positionMiniMap;
    public GameObject positionPos;
    public GameObject audioaaa;
    public GameObject audioaaaa;
    int a = 0;

    // Start is called before the first frame update
    void Start()
    {
        uIMenu1.SetActive(false);
        uIMenu2.SetActive(false);
        tnt2.SetActive(false);
        miniMap.SetActive(false);
        tntExplosionParticles.SetActive(false);
    }
    private void Update() 
    {
        RaycastHit hit;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            //Debug.Log(hit.collider.name);
            if (hit.collider.tag == "tnt1")
            {
                uIMenu1.SetActive(true);
                if(Input.GetKeyDown(KeyCode.E))
                {
                    audioaaa.SetActive(true);
                    uIMenu1.SetActive(true);
                    tnt1.SetActive(false); 
                    a += 1;             
                }
            }
            else
            {
                uIMenu1.SetActive(false);
            }
            if(Input.GetKeyDown(KeyCode.M))
            {
                miniMap.SetActive(true);
                miniMaptext.SetActive(false);
                miniMapMap.SetActive(false);
            }
            if(a >= 1)
            {
                if (hit.collider.tag == "tntmain" && Input.GetKeyDown(KeyCode.E))
                {
                    tnt2.SetActive(true); 
                    tntmain.SetActive(false);
                    audioaaaa.SetActive(true);                    
                }

                if (hit.collider.tag == "tnt2")
                {
                    uIMenu2.SetActive(true);
                    if(Input.GetKeyDown(KeyCode.E))
                    {
                        tntExplosionParticles.SetActive(true);
                        Destroy(tntExplosionParticles2, 2);
                        tnt2.SetActive(false);
                        Destroy(rocks);       
                        cameraminimap.transform.position = positionMiniMap.transform.position;      
                    }
                }  
                else
                {
                    uIMenu2.SetActive(false);
                }
            }
            
                      
        }
    }
    
}
