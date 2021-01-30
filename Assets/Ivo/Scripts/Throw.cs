using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Throw : MonoBehaviour
{
    public GameObject objectToThrow;

    public float thrust = 1.0f;

    public Transform cam;

    GameObject clone;

    void FixedUpdate()
    {
        if (Input.GetKeyDown(KeyCode.Mouse0))
        {
            clone = Instantiate(objectToThrow, cam.position, cam.rotation);

            clone.transform.position = cam.position;

            clone.GetComponent<Rigidbody>().AddForce(cam.forward * thrust);
        }
    }
}
