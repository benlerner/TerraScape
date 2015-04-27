using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class startMenu : MonoBehaviour {
	public int level;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void gameStart(){
		Application.LoadLevel (level);
	}
}
