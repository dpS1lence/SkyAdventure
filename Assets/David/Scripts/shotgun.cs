using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class shotgun : MonoBehaviour
{

    public Animator shotgunAnime;

    void Update()
    {
        if(Input.GetButton("Fire1"))
        {
            shotgunAnime.SetBool("shot", true);
            shotgunAnime.SetBool("shot", false);
        }
    }

}
