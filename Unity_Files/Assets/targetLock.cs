using UnityEngine;
using System.Collections;

public class targetLock : MonoBehaviour {
	public GameObject player;
	private Vector3 target;
	// Use this for initialization
	void Start () {
		player = GameObject.Find("zenobia");
		target = player.transform.position;
		iTween.MoveTo (this.gameObject, target, 2f);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
