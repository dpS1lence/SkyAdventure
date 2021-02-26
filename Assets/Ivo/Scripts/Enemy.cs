using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{

    public Transform player;

    public double range;

    public GameObject deathScrene;
    public GameObject miniMap;
    public bool death;

    public Animator animP;
    public Animator animE;

    private void Start()
    {
        death = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (!Input.GetKey(KeyCode.Mouse0))
        {
            animP.SetBool("hit", false);
            animE.SetBool("scared", false);

            //close to player
            GetComponent<NavMeshAgent>().destination = player.transform.position;
        }
        else
        {
            animP.SetBool("hit", true);
            animE.SetBool("scared", true);
            GetComponent<NavMeshAgent>().destination = transform.position;
        }


        if (death == true && Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            Time.timeScale = 1;
            deathScrene.SetActive(false);
        }
    }


    //caught player
    private void OnTriggerEnter(Collider other)
    {
       Time.timeScale = 0;
        deathScrene.SetActive(true);
        miniMap.SetActive(false);
        death = true;
    }
}
