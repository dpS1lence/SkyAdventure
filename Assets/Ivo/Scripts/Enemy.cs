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

    public GameObject deathScrene;
    public GameObject miniMap;
    public bool death;

    private void Start()
    {
        death = false;
    }

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
