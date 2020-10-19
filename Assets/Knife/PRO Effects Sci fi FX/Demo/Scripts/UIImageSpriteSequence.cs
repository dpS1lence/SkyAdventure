using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Knife.ScifiEffects
{
    [RequireComponent(typeof(Image))]
    public class UIImageSpriteSequence : MonoBehaviour
    {
        [SerializeField] private Sprite[] sprites;
        [SerializeField] private int framesPerSecond = 10;

        private float frameInterval
        {
            get
            {
                return 1f / framesPerSecond;
            }
        }

        private float nextFrameTime;
        private Image image;
        private int frame;

        private void Start()
        {
            image = GetComponent<Image>();
            UpdateSprite();
        }

        public void SetSequence(Sprite[] sequence)
        {
            sprites = sequence;

            frame = 0;
            nextFrameTime = Time.time;
            UpdateSprite();
        }

        private void Update()
        {
            if(Time.time >= nextFrameTime)
            {
                frame++;

                if (frame >= sprites.Length)
                    frame = 0;

                UpdateSprite();

                nextFrameTime = Time.time + frameInterval;
            }
        }
        
        private void UpdateSprite()
        {
            if (sprites.Length > 0)
                image.sprite = sprites[frame];
            else
                image.sprite = null;
        }
    }
}