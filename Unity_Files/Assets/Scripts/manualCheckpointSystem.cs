using UnityEngine;
using System.Collections;

public class manualCheckpointSystem : MonoBehaviour {
	private GameObject player;
	private Collider target;
	public Transform[] points;
	private int selectedPoint = 0;
	// Use this for initialization
	void Start () {
		player = GameObject.Find("zenobia");
	}

	void Update() {
		if (Input.GetKeyDown(KeyCode.P)){
			player.GetComponent<ThirdPersonController>().checkPoint = points[selectedPoint];
			selectedPoint++;
			if (selectedPoint >= points.Length){
				selectedPoint = 0;
			}
			player.GetComponent<ThirdPersonController>().respawn();
		}
	}
}