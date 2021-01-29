using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{

    public GameObject uiMenu;
    public GameObject uiMenu2;

    // Start is called before the first frame update
    void Start()
    {
        uiMenu2.SetActive(true);
        uiMenu.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.P))
        {
            uiMenu2.SetActive(false);
            uiMenu.SetActive(true);
        }
    }
}
