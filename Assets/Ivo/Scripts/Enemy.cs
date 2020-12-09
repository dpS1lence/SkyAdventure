using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{

    public Transform player;

    public float foundPlayer = 1;


    // Update is called once per frame
    void Update()
    {
        GetComponent<NavMeshAgent>().destination = player.transform.position;

        /*if (transform.position.x < foundPlayer || transform.position.z < foundPlayer)
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }*/
    }
}
