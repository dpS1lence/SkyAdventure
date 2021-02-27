using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundPlayer : MonoBehaviour
{
    public GameObject steps;
    public GameObject jump;

    bool grounded;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {
            if (grounded)
            {
                steps.SetActive(true);

            }
            else
            {
                steps.SetActive(false);
            }
        }
        else
        {
            steps.SetActive(false);
        }

        /*if (Input.GetKey(KeyCode.Space))
        {
            jump.SetActive(true);
        }
        else
        {
            jump.SetActive(false);
        }*/
    }

    private void OnCollisionStay(Collision collision)
    {
        if (collision.collider.gameObject.layer == 9)
        {
            grounded = true;
        }
        else
        {
            grounded = false;
        }
    }
}
