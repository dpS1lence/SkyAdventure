using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GettingItem : MonoBehaviour
{
    public GameObject SM;
    public Camera cam;
    public GameObject player;

    public Animator anim;
    public float animationLenght = 1f;
    public float range = 100f;

    public GameObject cutsceneCam;

    bool hasItem = false;
    bool canOpen = false;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && hasItem == false)
        {
            Debug.Log("Shot");
            InstateRaycast();
        }
    }

    void InstateRaycast()
    {
        RaycastHit hit;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit, range))
        {
            Debug.Log(hit.collider.name);

            if (hit.collider.tag == "item")
            {
                hasItem = true;

                Debug.Log("Item");

                cutsceneCam.SetActive(true);
                player.GetComponent<FirstPersson>().enabled = false;
                anim.SetBool("open", true);
                Destroy(hit.collider.gameObject);
                StartCoroutine(FinishCut());
            }
            else if (hit.collider.name == "key")
            {
                Destroy(hit.collider.gameObject);
                canOpen = true;
            }
            else if (hit.collider.name == "chest" && canOpen == true)
            {
                hit.collider.gameObject.GetComponent<Animator>().SetBool("open", true);
                Debug.Log("Open Chest");
                //open
            }
            else if (hit.collider.name == "door_01")
            {
                Debug.Log("exit");
                SM.GetComponent<SceneManagement>().LoadScene("SpaceShip");
            }
        }
    }


    IEnumerator FinishCut()
    {
        yield return new WaitForSeconds(animationLenght);

        player.GetComponent<FirstPersson>().enabled = true;
        cutsceneCam.SetActive(false);
    }
}
