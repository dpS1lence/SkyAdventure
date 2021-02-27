using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class footstep : MonoBehaviour
{
    public AudioClip[] jumpSounds;
    public AudioClip[] walkSounds;
    AudioSource ses;
    public CharacterController chr;

    float timer;
    public float walkRange;
    public float sprintRange;

    bool isgr;
    float speed;

    private void Start()
    {
        ses = GetComponent<AudioSource>();
    }

    private void Update()
    {
        isgr = chr.isGrounded;
        speed = chr.velocity.magnitude;
        var grounded = isgr == true;
        var jumpbutton = Input.GetKeyDown(KeyCode.Space);
      
        if (grounded)
        {
            if (jumpbutton)
            {
                ses.PlayOneShot(jumpSounds[Random.Range(0, jumpSounds.Length)]);
                Debug.Log("jump");
            }

            if (speed > 0.1f)
            {
                if (speed >= 5) 
                {
                    timer -= Time.deltaTime;
                    if (timer <= 0)
                    {
                        timer = sprintRange;
                        ses.PlayOneShot(walkSounds[Random.Range(0, walkSounds.Length)]);
                    }
                }
                else
                {
                    timer -= Time.deltaTime;
                    if (timer <= 0)
                    {
                        timer = walkRange;
                        ses.PlayOneShot(walkSounds[Random.Range(0, walkSounds.Length)]);
                    }
                }
            }
                     
        }
    }  
}