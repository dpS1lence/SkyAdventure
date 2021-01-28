using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Throw : MonoBehaviour
{
    public GameObject objectToThrow;

    public float thrust = 1.0f;

    public Rigidbody rb;

    public Transform camera;

    void Start()
    {
        rb = objectToThrow.GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {
        rb.AddForce(camera.forward * thrust);
    }
}
