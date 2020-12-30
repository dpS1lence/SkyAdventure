using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Target : MonoBehaviour
{
    public float health = 100f;

    public void TakeDamage(float amount)
    {
        health -= amount;
        if (health <= 0f)
        {
            Invoke("Die", (float)0.3);
        }
    }

    void Die()
    {
        Destroy(gameObject);
    }
}