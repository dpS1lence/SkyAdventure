using UnityEngine;
using UnityEngine.UI;

public class Gun : MonoBehaviour
{
    /*public float damage = 20;
    public float range = 100;
    public float fireRate = 10;
    public float fireTime = 0.2F;
    public float impactForce = 100;

    public int maxAmmo = 30;
    int currentAmmo;
    public float reloadTime = 2;
    public Animator anim;

    private float nextTimeToFire = 0;

    public Camera cam;
    public ParticleSystem muzzle;
    public GameObject metalParticle;
    public GameObject fleshParticle;
    public GameObject fireSound;
    public GameObject metalImpactSound;
    public GameObject fleshImpactSound;

    public Text currentAmmoText;
    public Text maxAmmoText;

    bool canShoot = true;

    void Start()
    {
        currentAmmo = maxAmmo;
    }

    public void Update()
    {
        currentAmmoText.text = currentAmmo.ToString();
        maxAmmoText.text = maxAmmo.ToString();

        if (currentAmmo > 0)
        {
            if (Input.GetButton("Fire1") && Time.time > nextTimeToFire && canShoot == true)
            {
                nextTimeToFire = Time.time + 1 / fireRate;
                Shoot();
            }
            else
            {
                anim.SetBool("shooting", false);
            }
        }

        if (currentAmmo <= 0 || Input.GetKeyDown(KeyCode.R) && currentAmmo < maxAmmo)
        {
            canShoot = false;
            anim.SetBool("reloading", true);
            Invoke("Reload", reloadTime);
        }
    }

    void Shoot()
    {
        anim.SetBool("shooting", true);
        RaycastHit hit;

        GameObject cloneFireSound = Instantiate(fireSound, muzzle.transform.position, Quaternion.identity);

        muzzle.Play();
        currentAmmo--;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit, range))
        {
            Target target = hit.transform.GetComponent<Target>();

            Enemy enemy = hit.transform.GetComponent<Enemy>();

            GameObject impact;
            GameObject cloneMetalSound = null;
            GameObject fleshImpactSound = null;

        

            if (hit.rigidbody != null)
            {
                hit.rigidbody.AddForce(-hit.normal * impactForce);
            }

            if (hit.collider.tag == "enemy")
            {
                impact = Instantiate(fleshParticle, hit.point, Quaternion.LookRotation(hit.normal));
                fleshImpactSound = Instantiate(metalImpactSound, hit.point, Quaternion.LookRotation(hit.normal));
                Destroy(fleshImpactSound, 1f);
            }
            else
            {
                impact = Instantiate(metalParticle, hit.point, Quaternion.LookRotation(hit.normal));
                cloneMetalSound = Instantiate(metalImpactSound, hit.point, Quaternion.LookRotation(hit.normal));
                Destroy(cloneMetalSound, 1f);
            }

            Destroy(impact, 2f);
            Destroy(cloneFireSound, 1f);
        }
    }

    void Reload()
    {
        canShoot = true;
        currentAmmo = maxAmmo;
        anim.SetBool("reloading", false);
    }*/
}