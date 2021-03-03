using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class FinishDavidScene1 : MonoBehaviour
{
    public GameObject loadMenu;
    public Slider slider;

    private void Start()
    {
        loadMenu.SetActive(false);
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Finish")
        {
            loadMenu.SetActive(true);
            StartCoroutine(LoadASYN("DavidScene_2"));
        }
    }


    IEnumerator LoadASYN(string levelName)
    {

        AsyncOperation opeartaion = SceneManager.LoadSceneAsync(levelName);

        while (!opeartaion.isDone)
        {
            float progress = Mathf.Clamp01(opeartaion.progress / .9f);

            slider.value = progress;

            yield return null;
        }
    }
}
