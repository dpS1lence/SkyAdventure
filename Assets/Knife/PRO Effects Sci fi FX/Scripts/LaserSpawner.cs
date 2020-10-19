using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.ScifiEffects
{
    public class LaserSpawner : MonoBehaviour
    {
        [SerializeField] private GameObject prefab;
        [SerializeField] private float fireRate = 5f;

        public float FireInterval
        {
            get
            {
                return 1f / fireRate;
            }
        }

        private float nextFireTime;

        private void Update()
        {
            if(Time.time >= nextFireTime)
            {
                nextFireTime = Time.time + FireInterval;
                Fire();
            }
        }

        private void Fire()
        {
            GameObject instance = Instantiate(prefab, transform.position, transform.rotation);
            Destroy(instance, 5f);
        }
    }
}