using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerColision : MonoBehaviour
{
    void OnCollisionEnter(Collision collisionInfo)
    {
        if (collisionInfo.collider.name == "colider")
        {
            SceneManager.LoadScene("Mineshaft");
        }
    }
}