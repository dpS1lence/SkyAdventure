using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemyCs : MonoBehaviour
{

    public float health = 50f;
    public GameObject goblin;
    public Animator goblinAnim;

    public void TakeDamage (float amount)
    {
        Debug.Log("TakaDamage");
        health -= amount;
        if(health <= 0f)
        {
            Debug.Log("health");
            Stun();
        }
    }
    
    public void Stun()
    {
        //GetComponent<Enemy>().enabled = false;
        //goblinAnim.gameObject.GetComponent<Animator>().enabled = false;

    }

}
