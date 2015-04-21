using UnityEngine;
using System.Collections;

public class bossPlatform : MonoBehaviour {
	private Vector3 endPos;
	// Use this for initialization
	void Start () {
		endPos = transform.position;
		endPos.y += 30.0f;
		iTween.MoveTo (this.gameObject, iTween.Hash("position", endPos, "time", 10.0f, "looptype", "none"));
	}
	
	// Update is called once per frame
	void Update () {

	}
}
