using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Player Hands behaviour
    /// </summary>
    public class Hands : MonoBehaviour
    {
        /// <summary>
        /// Hand weapons list.
        /// </summary>
        [Tooltip("Hand weapons list")] public GameObject[] WeaponsObjects;
        /// <summary>
        /// Player camera.
        /// </summary>
        [Tooltip("Player camera")] public Camera Cam;
        /// <summary>
        /// Index array in circle weapon selector of each weapon.
        /// </summary>
        [Tooltip("Index array in circle weapon selector of each weapon")] public int[] Indices;
        /// <summary>
        /// Weapon selector.
        /// </summary>
        [Tooltip("Weapon selector")] public WeaponSelector weaponSelector;

        [SerializeField] private PlayerController player;

        float startFov;

        private int currentWeaponIndex = -1;

        private IWeapon[] weapons;

        void Start()
        {
            weapons = new IWeapon[WeaponsObjects.Length];
            for (int i = 0; i < weapons.Length; i++)
            {
                weapons[i] = WeaponsObjects[i].GetComponent<IWeapon>();
            }

            startFov = Cam.fieldOfView;
            for (int i = 0; i < weapons.Length; i++)
            {
                weapons[i].SetActive(false);
            }
            weaponSelector.OnSelectedEvent += OnWeaponSelected;
        }

        private void OnWeaponSelected(int index)
        {
            for (int i = 0; i < Indices.Length; i++)
            {
                if(index == Indices[i])
                {
                    index = i;
                    break;
                }
            }
            Deploy(index);
        }

        void Update()
        {
            
            foreach (IWeapon weapon in weapons)
            {
                if (weapon.isActive)
                {
                    Cam.fieldOfView = weapon.CurrentFov;
                    return;
                }
            }
            Cam.fieldOfView = startFov;
        }

        private void Deploy(int index)
        {
            for (int i = 0; i < weapons.Length; i++)
            {
                if (i == index)
                    continue;

                weapons[i].SetActive(false);
                weapons[i].OnFire -= OnFire;
            }
            weapons[index].OnFire += OnFire;
            weapons[index].SetActive(true);
        }

        private void OnFire(Vector2 recoilDelta)
        {
            player.Look.ApplyDelta(recoilDelta);
        }
    }
}