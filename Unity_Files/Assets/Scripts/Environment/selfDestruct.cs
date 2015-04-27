using UnityEngine;
using System.Collections;

public class selfDestruct : MonoBehaviour {
	public int timeLimit;
	private int time = 0;
	private bool setOff = false;
	// Use this for initialization
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyUp (KeyCode.E))
			setOff = true;
		if (setOff){
			time++;
			iTween.FadeUpdate(this.gameObject, 0f, 4f);
		}
		if (time >= timeLimit)
			Destroy (gameObject, 0);
	}
}
