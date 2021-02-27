using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundPlayer : MonoBehaviour
{
    public GameObject steps;
    public GameObject run;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {

            if (Input.GetKey(KeyCode.LeftShift))
            {
                run.SetActive(true);
                steps.SetActive(false);
            }
            else
            {
                steps.SetActive(true);
                run.SetActive(false);
            }
        }
        else
        {
            run.SetActive(false);
            steps.SetActive(false);
        }
    }
}
