using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class scriptForGoblin : MonoBehaviour
{
    public float damage = 30f;

    void OnCollisionEnter(Collision other) 
    {
        if (other.collider.name == "goblinColider")
        {
            Debug.Log("hitChest");
            enemyPlayer target = other.transform.GetComponent<enemyPlayer>();
            target.TakeDamage(damage);
        }
    }
}
