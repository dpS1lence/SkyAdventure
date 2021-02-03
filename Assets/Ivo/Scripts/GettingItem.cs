using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GettingItem : MonoBehaviour
{
    public Camera cam;
    public GameObject player;
    public GameObject UI;

    public Animator anim;
    public float animationLenght = 1f;

    public GameObject cutsceneCam;

    public GameObject text;

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

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit))
        {
            Debug.Log("Raycast");

            if (hit.collider.tag == "item")
            {
                hasItem = true;

                Debug.Log("Item");

                UI.SetActive(false);
                cutsceneCam.SetActive(true);
                player.GetComponent<FpsController>().enabled = false;
                anim.SetBool("open", true);
                Destroy(hit.collider.gameObject);
                StartCoroutine(FinishCut());
            }
            else if (hit.collider.name == "key")
            {
                text.SetActive(true);
                Destroy(text, 1.3f);

                Destroy(hit.collider.gameObject);
                canOpen = true;
            }
            else if (hit.collider.name == "chest" && canOpen == true)
            {
                hit.collider.gameObject.GetComponent<Animator>().SetBool("open", true);
                Debug.Log("Open Chest");
                //open
            }
        }
    }


    IEnumerator FinishCut()
    {
        yield return new WaitForSeconds(animationLenght);

        player.GetComponent<FpsController>().enabled = true;
        cutsceneCam.SetActive(false);
        UI.SetActive(true);
    }
}
