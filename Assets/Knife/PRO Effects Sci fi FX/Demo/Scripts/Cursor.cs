using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// Component that imitates cusror as UI Graphic 
    /// </summary>
    [RequireComponent(typeof(RectTransform))]
    [RequireComponent(typeof(Graphic))]
    public class Cursor : MonoBehaviour
    {
        /// <summary>
        /// Determines whether the hardware pointer is locked to the center of the view, constrained to the window, or not constrained at all.
        /// </summary>
        public static CursorLockMode lockState
        {
            get
            {
                return UnityEngine.Cursor.lockState;
            }
            set
            {
                UnityEngine.Cursor.lockState = value;
            }
        }

        /// <summary>
        /// Determines whether the hardware pointer is visible or not.
        /// </summary>
        public static bool visible
        {
            get
            {
                return UnityEngine.Cursor.visible;
            }
            set
            {
                UnityEngine.Cursor.visible = value;
                if (OnVisibleChangedEvent != null)
                    OnVisibleChangedEvent(UnityEngine.Cursor.visible);
            }
        }

        private static event UnityAction<bool> OnVisibleChangedEvent;

        private Graphic graphic;
        private RectTransform rectTransform;

        private void OnEnable()
        {
            rectTransform = GetComponent<RectTransform>();
            graphic = GetComponent<Graphic>();

            OnVisibleChangedEvent += OnVisibleChanged;
        }

        private void OnDisable()
        {
            OnVisibleChangedEvent -= OnVisibleChanged;
        }

        private void OnVisibleChanged(bool value)
        {
            graphic.enabled = value;
        }

        private void Update()
        {
            rectTransform.anchoredPosition = Input.mousePosition;
        }
    }
}