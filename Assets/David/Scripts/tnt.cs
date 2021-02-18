﻿using System.Collections;
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

    bool showInfo = false;

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

            if (hit.collider.name == "Gold" && Input.GetKeyDown(KeyCode.E))
            {
                showInfo = true;
            }          
        }

        if (showInfo)
        {
            Information();
        }
    }


    int k = 0;

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

        if (k <= 0)
        {
            k = 0;
            backArrow.SetActive(false);
        }
        else if (k >= text.childCount)
        {
            nextArrow.SetActive(false);
            thickArrow.SetActive(true);
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
