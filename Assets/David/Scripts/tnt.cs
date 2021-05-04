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
    public GameObject objectP;
    public GameObject raycastCam;
    public GameObject tntmain;
    public GameObject counterCam;
    public float range = 30.0f;
    public float range2 = 6.0f;
    public GameObject uIMenu1;
    public GameObject uIMenu2;
    public GameObject uIMenuGold;
    public GameObject miniMap;
    public GameObject miniMaptext;
    public GameObject miniMapMap;
    public GameObject cameraminimap;
    public GameObject positionMiniMap;
    public GameObject positionPos;
    public GameObject audioaaa;
    public GameObject audioaaaa;
    public GameObject enemy;
    public GameObject enemyCol;
    public GameObject tntUiMenuInfo;
    public Animation torchIdle;
    public Animation torchHit;


    int a = 0;

    bool showInfo = false;

    // Start is called before the first frame update
    void Start()
    {
        tntUiMenuInfo.SetActive(false);
        uIMenu1.SetActive(false);
        uIMenu2.SetActive(false);
        tnt2.SetActive(false);
        miniMap.SetActive(false);
        tntExplosionParticles.SetActive(false);
    }
    private void Update() 
    {
        if(Input.GetMouseButtonDown(0))
        {
            //torchHit.Play();
        }
        
        RaycastHit hit;
        enemyCol.transform.position = enemy.transform.position;
        //counterCam.transform.position = enemy.transform.position;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            //Debug.Log(hit.collider.name);
            if (hit.collider.tag == "tnt1")
            {
                uIMenu1.SetActive(true);
                if(Input.GetKeyDown(KeyCode.E))
                {
                    tntUiMenuInfo.SetActive(true);
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

            if (hit.collider.name == "Gold")
            {
                uIMenuGold.SetActive(true);
                if(Input.GetKeyDown(KeyCode.E))
                {
                    uIMenu2.SetActive(false);
                    showInfo = true;
                }
            }
            else{
                uIMenuGold.SetActive(false);
            }          
        }
        if (Physics.Raycast(raycastCam.transform.position, raycastCam.transform.forward, out hit, range2))
        {
            Debug.Log(hit.collider.name);
            if (hit.collider.tag == "Enemy")
            {
                Debug.Log("hit1");
                Debug.Log(hit.collider.name);
                uIMenu1.SetActive(true);
                if(Input.GetMouseButtonDown(0))
                {
                    //torchHit.Play();
                    Debug.Log("hit2");
                    //enemy.SetActive(false); 


                    enemyCol.SetActive(true);
                }
            }
        }

        if (showInfo)
        {
            Information();
        }
        
    }


    public int k = 0;

    public GameObject info;

    public Transform text;

    Transform currentWeapon = null;

    public GameObject backArrow;
    public GameObject nextArrow;
    public GameObject thickArrow;

    void Information()
    {
        Time.timeScale = 0;
        info.SetActive(true);
        miniMap.SetActive(false);

        if (k <= 0)
        {
            k = 0;
            backArrow.SetActive(false);
            thickArrow.SetActive(false);
            nextArrow.SetActive(true);
        }
        else if (k == text.childCount - 1)
        {
            nextArrow.SetActive(false);
            thickArrow.SetActive(true);
        }
        else
        {
            nextArrow.SetActive(true);
            backArrow.SetActive(true);
            thickArrow.SetActive(false);
        }

        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            k--;
        }
        else if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            k++;

            if (k >= text.childCount)
            {
                k = 0;
                info.SetActive(false);
                miniMap.SetActive(false);
                showInfo = false;
                Time.timeScale = 1;

                for (int i = 0; i < text.childCount; i++)
                {
                    text.GetChild(i).gameObject.SetActive(false);
                }
            }
        }

        currentWeapon = text.GetChild(k);
        currentWeapon.gameObject.SetActive(true);

        try
        {
            text.transform.GetChild(k + 1).gameObject.SetActive(false);
        }
        catch (System.Exception)
        {
        }

        try
        {
            text.transform.GetChild(k - 1).gameObject.SetActive(false);
        }
        catch (System.Exception)
        {
        }

    }
}
