using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ammo : MonoBehaviour
{

    public GameObject immageAmmo1;
    public GameObject immageAmmo2;
    public GameObject immageAmmo3;
    public GameObject immageAmmo4;
    public GameObject immageAmmo5;
    public GameObject immageAmmo6;
    public GameObject particleGunRay;
    public GameObject particleGunRay2;
    public GunShoot gunShoot;

    int ammoCheck = 0;


    // Start is called before the first frame update
    void Start()
    {
        immageAmmo1.SetActive(true);
        immageAmmo2.SetActive(true);
        immageAmmo3.SetActive(true);
        immageAmmo4.SetActive(true);
        immageAmmo5.SetActive(true);
        immageAmmo6.SetActive(true);
        particleGunRay.SetActive(true);
        particleGunRay2.SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        Ammo();
        
    }




    void Ammo(){
        if(Input.GetButtonDown("Fire1"))
        {
            ammoCheck = ammoCheck + 1;
        }
        if (ammoCheck == 1)
        {
            immageAmmo1.SetActive(false);
        }
        if (ammoCheck == 2)
        {
            immageAmmo2.SetActive(false);
        }
        if (ammoCheck == 3)
        {
            immageAmmo3.SetActive(false);
        }
        if (ammoCheck == 4)
        {
            immageAmmo4.SetActive(false);
        }
        if (ammoCheck == 5)
        {
            immageAmmo5.SetActive(false);
        }
        if (ammoCheck == 6)
        {
            immageAmmo6.SetActive(false);
            particleGunRay.SetActive(false);
            particleGunRay2.SetActive(false);
        }

        if(Input.GetKeyDown(KeyCode.Y))
        {
            ammoCheck = 0;
            immageAmmo1.SetActive(true);
            immageAmmo2.SetActive(true);
            immageAmmo3.SetActive(true);
            immageAmmo4.SetActive(true);
            immageAmmo5.SetActive(true);
            immageAmmo6.SetActive(true);
            particleGunRay.SetActive(true);
            particleGunRay2.SetActive(true);
        }
    }

}
