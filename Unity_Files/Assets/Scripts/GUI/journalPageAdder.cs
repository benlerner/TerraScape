using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class journalPageAdder : MonoBehaviour {
	private GameObject player;
	private Collider target;
	private Collider target2;
	public Sprite page;
	private GameObject journal;
	// Use this for initialization
	void Start () {
		player = GameObject.Find("zenobia");
		target = player.GetComponent<CharacterController>();
		target2 = player.GetComponent<CapsuleCollider> ();
		journal = GameObject.FindGameObjectWithTag ("journal");
	}
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other) {
		if (other != target && other != target2) //The colliding object isn't our object
		{
			//Debug.Log("Wat is dis?");
			return; //don't do anything if it's not our target
		}
		else {
			journal.GetComponent<journalGUI>().addPage(page);
			Destroy(gameObject, 0);
		}
	}
}
