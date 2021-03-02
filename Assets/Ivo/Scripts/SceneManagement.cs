using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneManagement : MonoBehaviour
{
    public GameObject loadingMenu;
    public Slider slider;

    public void ReLoad()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void Quit()
    {
        Application.Quit();
    }

    public void LoadScene(string levelName)
    {
        StartCoroutine(LoadASYN(levelName));
    }

    IEnumerator LoadASYN(string levelName)
    {
        try
        {
            loadingMenu.SetActive(true);

        }
        catch (System.Exception)
        {
        }

        AsyncOperation opeartaion = SceneManager.LoadSceneAsync(levelName);

        while (!opeartaion.isDone)
        {
            float progress = Mathf.Clamp01(opeartaion.progress / .9f);

            slider.value = progress;

            yield return null;
        }
    }
}
