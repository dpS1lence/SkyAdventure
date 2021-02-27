using UnityEngine;
using System.Collections;

public class footstepsSoundClass
{
	public string SoundPath;
	public AudioClip[] soundsArray;
	private float volumeVal;
	int[] SoundIndex;
	public string tag;
	public int ind;
	public bool playOneshot;

	public footstepsSoundClass (float sVolume, bool splayOneshot, string sSoundsPath, string sTag, int sInd) {
		if (sVolume > 1 || sVolume < 0) {
			Debug.Log ("Volume is out of range 0-1");
		}
		volumeVal = sVolume;
		SoundPath = sSoundsPath;
		tag = sTag;
		ind = sInd;
		playOneshot = splayOneshot;
	}

	public void load () {
		soundsArray = new AudioClip[Resources.LoadAll<AudioClip> (SoundPath).Length];
		SoundIndex = new int[soundsArray.Length];
		soundsArray = Resources.LoadAll<AudioClip> (SoundPath);
		for (int i = 1; i < soundsArray.Length; i++) {
			SoundIndex [i] = i;
		}
	}

	public float Volume {				
		get {
			return volumeVal;
		}
		set { 
			if (value > 1 || value < 0) {
				Debug.Log ("Volume is out of range 0-1");
			}
			volumeVal = value;
		}
	}

} // THE END