using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Picker : MonoBehaviour
{
    public float health = 100f;
    public GameObject GunObject;

    public void TakeDamage(float amount)
    {
        health -= amount;
        if (health <= 0f)
        {
            Pick();
        }
    }

    void Pick()
    {
        Destroy(gameObject);

        GunObject.SetActive(true);
    }
}