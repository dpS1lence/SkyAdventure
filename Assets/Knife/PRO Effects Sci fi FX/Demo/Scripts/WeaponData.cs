using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace Knife.Effects.SimpleController
{
    /// <summary>
    /// UI weapon data component.
    /// </summary>
    public class WeaponData : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
    {
        /// <summary>
        /// OnPointerEnter event.
        /// </summary>
        public event UnityAction OnPointerEnterEvent;
        /// <summary>
        /// OnPointer exit event.
        /// </summary>
        public event UnityAction OnPointerExitEvent;

        /// <summary>
        /// Weapon name.
        /// </summary>
        [SerializeField] [Tooltip("Weapon name")] private string weaponName;
        /// <summary>
        /// Weapon preview sequence.
        /// </summary>
        [SerializeField] [Tooltip("Weapon preview sequence")] private Sprite[] preview;

        /// <summary>
        /// Weapon name.
        /// </summary>
        public string WeaponName
        {
            get
            {
                return weaponName;
            }

            private set
            {
                weaponName = value;
            }
        }

        /// <summary>
        /// Weapon preview sequence
        /// </summary>
        public Sprite[] Preview
        {
            get
            {
                return preview;
            }

            private set
            {
                preview = value;
            }
        }

        /// <summary>
        /// IPointerExitHandler.OnPointerExit implementation.
        /// </summary>
        /// <param name="eventData">data of event</param>
        public void OnPointerExit(PointerEventData eventData)
        {
            if (OnPointerExitEvent != null)
                OnPointerExitEvent();
        }

        /// <summary>
        /// IPointerEnterHandler.OnPointerEnter implementation.
        /// </summary>
        /// <param name="eventData">data of event</param>
        public void OnPointerEnter(PointerEventData eventData)
        {
            if (OnPointerEnterEvent != null)
                OnPointerEnterEvent();
        }
    }
}