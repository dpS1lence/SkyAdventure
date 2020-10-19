using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using Knife.ScifiEffects;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// UI weapon selector component.
    /// </summary>
    public class WeaponSelector : MonoBehaviour
    {
        /// <summary>
        /// On weapon selected event.
        /// </summary>
        public event UnityAction<int> OnSelectedEvent;

        /// <summary>
        /// Buttons of weapons.
        /// </summary>
        [SerializeField] [Tooltip("Buttons of weapons")] private Button[] buttons;
        /// <summary>
        /// Animator of selector.
        /// </summary>
        [SerializeField] [Tooltip("Animator of selector")] private Animator animator;
        /// <summary>
        /// Control key for selector opening and closing.
        /// </summary>
        [SerializeField] [Tooltip("Control key for selector opening and closing")] private KeyCode openCloseKey = KeyCode.Tab;
        /// <summary>
        /// Default button color.
        /// </summary>
        [SerializeField] [Tooltip("Default button alpha")] private float defaultAlpha = 0.2f;
        /// <summary>
        /// Selected button color.
        /// </summary>
        [SerializeField] [Tooltip("Selected button alpha")] private float selectedAlpha = 1f;
        /// <summary>
        /// Preview of weapon.
        /// </summary>
        [SerializeField] [Tooltip("Preview of weapon")] private UIImageSpriteSequence weaponPreview;
        /// <summary>
        /// Description label of weapon.
        /// </summary>
        [SerializeField] [Tooltip("Description label of weapon")] private Text descriptionLabel;
        /// <summary>
        /// Disabling GameObjects on selector open.
        /// </summary>
        [SerializeField] [Tooltip("Disabling GameObjects on selector open")] private GameObject[] disablingObjects;
        /// <summary>
        /// PlayerController to freeze.
        /// </summary>
        [SerializeField] [Tooltip("PlayerController to freeze")] private PlayerController playerController;

        private bool isOpened = false;
        private bool isClosed = false;
        private Button selected;
        private WeaponData data;

        private int currentWeaponIndex = -1;
        private int currentHoverWeaponIndex = -1;

        private void Start()
        {
            for (int i = 0; i < buttons.Length; i++)
            {
                var index = i;
                buttons[i].onClick.AddListener(() => ButtonClicked(index));
                var data = buttons[i].GetComponent<WeaponData>();

                data.OnPointerEnterEvent += () => OnWeaponPointerEnter(index);
                data.OnPointerExitEvent += () => OnWeaponPointerExit(index);
            }
            animator.Play("Close", 0, 1);
        }

        private void OnWeaponPointerExit(int index)
        {
            //if (data != null)
            //    UpdateDescription(data);
            
            buttons[index].GetComponent<CanvasGroup>().alpha = defaultAlpha;

            currentHoverWeaponIndex = -1;
        }

        private void OnWeaponPointerEnter(int index)
        {
            WeaponData data = buttons[index].GetComponent<WeaponData>();

            buttons[index].GetComponent<CanvasGroup>().alpha = selectedAlpha;

            UpdateDescription(data);
            currentHoverWeaponIndex = index;
        }

        private void OnSelected(int index)
        {
            if (OnSelectedEvent != null)
                OnSelectedEvent(index);

            SetSelected(index);
        }

        private void ButtonClicked(int index)
        {
            OnSelected(index);

            Close();
            isClosed = true;
        }

        /// <summary>
        /// Opens selector.
        /// </summary>
        public void Open()
        {
            animator.Play("Open");
            isOpened = true;

            foreach(var o in disablingObjects)
            {
                o.SetActive(false);
            }

            foreach(var b in buttons)
            {
                b.GetComponent<CanvasGroup>().alpha = defaultAlpha;
            }

            playerController.Freeze(true);
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }

        /// <summary>
        /// Sets selected weapon index.
        /// </summary>
        /// <param name="index"></param>
        public void SetSelected(int index)
        {
            ColorBlock colors;
            /*if (selected != null)
            {
                selected.GetComponent<CanvasGroup>().alpha = defaultAlpha;
            }*/

            selected = buttons[index];
            colors = selected.colors;
            //selected.GetComponent<CanvasGroup>().alpha = selectedAlpha;
            selected.colors = colors;
            data = selected.GetComponent<WeaponData>();

            UpdateDescription(data);
            currentWeaponIndex = index;
        }

        private void UpdateDescription(WeaponData data)
        {
            weaponPreview.SetSequence(data.Preview);
            descriptionLabel.text = data.WeaponName;
        }

        /// <summary>
        /// Closes selector.
        /// </summary>
        public void Close()
        {
            animator.Play("Close");
            isOpened = false;

            foreach (var o in disablingObjects)
            {
                o.SetActive(true);
            }
            playerController.Freeze(false);
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
        }

        private void Update()
        {
            if (Input.GetKey(openCloseKey))
            {
                if (!isOpened && !isClosed)
                    Open();
            }
            else
            {
                if (isOpened)
                {
                    if (currentHoverWeaponIndex != -1)
                        OnSelected(currentHoverWeaponIndex);

                    Close();
                }
            }

            if(Input.GetKeyUp(openCloseKey))
            {
                isClosed = false;
            }

            float mousewheel = Input.GetAxis("Mouse ScrollWheel");

            if (mousewheel > 0f)
            {
                currentWeaponIndex++;
                if (currentWeaponIndex >= buttons.Length)
                {
                    currentWeaponIndex = 0;
                }
                OnSelected(currentWeaponIndex);
            }
            else if (mousewheel < 0)
            {
                currentWeaponIndex--;
                if (currentWeaponIndex < 0)
                {
                    currentWeaponIndex = buttons.Length - 1;
                }
                OnSelected(currentWeaponIndex);
            }

        }

        private void Switch()
        {
            if (isOpened)
                Close();
            else
                Open();
        }
    }
}