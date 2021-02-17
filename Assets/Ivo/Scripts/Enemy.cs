using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{

    public Transform player;

    public double range;
    public GameObject uiDead;
    public GameObject uiRemove;


    // Update is called once per frame
    void Update()
    {

        if (Vector3.Distance(gameObject.transform.position, player.position) < range)
        {
            //close to player
            GetComponent<NavMeshAgent>().destination = player.transform.position;

        }
        else
        {
            //staying on place
            GetComponent<NavMeshAgent>().destination = gameObject.transform.position;
        }
    }


    //caught player
    private void OnTriggerEnter(Collider other)
    {
        
    }
}
