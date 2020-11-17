using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tabela : MonoBehaviour
{

    public Camera fpsCam;
    public float range = 100f;
    public GameObject ui;
    public GameObject ui2;
    public GameObject ui3;

    RaycastHit hit;

    void Start()
    {
        ui.SetActive(false);
        ui2.SetActive(false);
        ui3.SetActive(false);
    }
    void Update()
    {
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            if (hit.collider.name == "Tabela_1")
            {
                ui.SetActive(true);
            }
            else
            {
                ui.SetActive(false);
            }
            if (hit.collider.name == "Tabela_2")
            {
                ui2.SetActive(true);
            }
            else 
            {
                ui2.SetActive(false);
            }
            if (hit.collider.name == "Tabela_3")
            {
                ui3.SetActive(true);
            }
            else
            {
                ui3.SetActive(false);
            }
        }
        else
        {
            ui.SetActive(false);
            ui2.SetActive(false);
            ui3.SetActive(false);
        }
    }
}