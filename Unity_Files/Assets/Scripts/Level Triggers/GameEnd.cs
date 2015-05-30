using UnityEngine;
using System.Collections;

public class GameEnd : MonoBehaviour {

	private GameObject worm;
	private Collider target;
	public int level;
	// Use this for initialization
	void Start () {
		worm = GameObject.FindGameObjectWithTag ("worm");
	}
	
	void OnTriggerEnter(Collider other) {
		if (other.gameObject != worm) //The colliding object isn't our object
		{
			//Debug.Log("something's wrong");
			return; //don't do anything if it's not our target
		}
		else {
			Application.LoadLevel(level);
		}
}
}
