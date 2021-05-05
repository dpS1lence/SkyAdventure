using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class Settings : MonoBehaviour
{
    bool FS = false;
    public Text text;
    public Slider sl;

    public AudioMixer mixer;
    public Slider sl1;

    public void changeFS()
    {
        Screen.fullScreen = FS;

        Debug.Log(FS);

        FS = !FS;
    }

    public void Update()
    {
        float input = sl.value;

        QualitySettings.SetQualityLevel((int)input, true);

        switch (input)
        {
            case 1:
                text.text = "Много ниски";
                break;
            case 2:
                text.text = "Ниски";
                break;
            case 3:
                text.text = "Високи";
                break;
            case 4:
                text.text = "Много високи";
                break;
        }


        mixer.SetFloat("volume", sl1.value);
    }
}
