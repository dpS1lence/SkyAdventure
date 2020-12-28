using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{
    public Transform arms;
    public Transform player;

    public Animator anim;

    public int range;
    public double eyeSight;

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(player.position, transform.position) <= eyeSight)
        {
            GetComponent<NavMeshAgent>().destination = player.transform.position;
            anim.SetBool("run", true);
        }
        else
        {
            GetComponent<NavMeshAgent>().destination = transform.position;
            anim.SetBool("run", false);
        }

        InstateRaycast();
    }


    void InstateRaycast()
    {
        RaycastHit hit;

        if (Physics.Raycast(arms.transform.position, arms.transform.forward, out hit, range))
        {
            if (hit.collider.tag == "Player")
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            }
        }
    }
}
