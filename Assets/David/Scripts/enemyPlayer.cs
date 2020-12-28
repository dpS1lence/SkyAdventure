using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemyPlayer : MonoBehaviour
{
    public float health = 100f;
    public GameObject player;

    public void TakeDamage (float amount)
    {
        Debug.Log("TakaDamage");
        health -= amount;
        if(health <= 0f)
        {
            Debug.Log("health");
            Die();
        }
    }

    void Die()
    {
        Debug.Log("Ded");
    }
}
