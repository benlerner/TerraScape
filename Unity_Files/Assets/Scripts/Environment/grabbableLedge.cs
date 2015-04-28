using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class grabbableLedge : MonoBehaviour {
	private GameObject player;
	private Collider target;
	private float lerpTime = 200.0f;
	public float charHeight = 0.5f;
	public float clingDistance = 0.0f;
	private Vector3 startPos;
	private Vector3 endPos;
	private Quaternion startRot;
	private Quaternion endRot;
	private Vector3 endRotEuler;
	private Vector3 playerMeshPos;
	private Transform playerMesh;
	private Vector3 shiftPlayer;
	private int children;
	public Transform[] ledgePath;
	private bool inControl = false;
	private Vector3[] climbPath = new Vector3[3];
	private bool shimmying = false;
	// Use this for initialization
	void Start () {
		player = GameObject.Find("zenobia");
		playerMesh = player.transform.GetChild (0);
		target = player.GetComponent<CharacterController>();
		playerMeshPos = new Vector3 (0f,0.066f,0f);
		children = transform.childCount;
		ledgePath = new Transform[children];
		int i=0;
		foreach(Transform child in transform)
		{
			ledgePath[i] = child;
			i++;
		}
	}

	void Update() {
		if(inControl){
			if (Input.GetKeyDown(KeyCode.W) || Input.GetKeyDown(KeyCode.UpArrow))
				climbUp();
			else if (Input.GetButtonDown("Jump"))
				returnControl();
			else if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){

				shimmy(false);
				//anim.SetBool("shimmy", true);
			}
			else if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
				shimmy(true);
				//anim.SetBool("shimmy", true);
			}
			else if (Input.GetKeyUp(KeyCode.D) || Input.GetKeyUp(KeyCode.RightArrow) || Input.GetKeyUp(KeyCode.A) || Input.GetKeyUp(KeyCode.LeftArrow)){
			    iTween.Stop(player);
				shimmying = false;
				player.GetComponent<ThirdPersonController> ().shimmy = false;
			}
		}
	}

	void OnTriggerEnter(Collider other) {
		if (other != target) //The colliding object isn't our object
		{
			//Debug.Log("something's wrong");
			return; //don't do anything if it's not our target
		}
		else {
			player.GetComponent<ThirdPersonController>().movable = false;
			player.GetComponent<ThirdPersonController>().hanging = true;
			player.GetComponent<ThirdPersonController>().moveSpeed = 0.0f;
			player.GetComponent<ThirdPersonController>().verticalSpeed = 0.0f;
			player.GetComponent<ThirdPersonController>().inAirVelocity = Vector3.zero;
			Debug.Log("should be hanging");
			startRot = player.transform.rotation;
			endRot = this.transform.rotation;
			endRotEuler = this.transform.eulerAngles;
			//player.transform.rotation = Quaternion.Lerp(startRot,endRot,lerpTime);
			iTween.RotateTo(player, endRotEuler, 0);
			startPos = player.transform.position;
			endPos = player.transform.position;
			//endPos.x = this.transform.position.x + clingDistance;
			endPos.y = this.transform.position.y - charHeight;
			//endPos.z = player.transform.forward.z;
			//player.transform.position = Vector3.Lerp(startPos,endPos,lerpTime);
			iTween.MoveTo(player, endPos, 0);
			//iTween.PutOnPath
			shiftPlayer = Vector3.forward * clingDistance;
			playerMesh.transform.Translate(shiftPlayer);
			inControl = true;
		}
	}
	public void climbUp (){
		inControl = false;
		player.GetComponent<ThirdPersonController>().movable = false;
		//player.GetComponent<ThirdPersonController> ().climb = true;
		player.GetComponent<ThirdPersonController> ().hanging = false;
		Vector3 start = player.transform.position;
		Vector3 arc = start + (player.transform.up * 2.0f) + (player.transform.forward * 0.5f);
		Vector3 end = start + (player.transform.up * 1.6f) + (player.transform.forward * 1.0f);
		climbPath [0] = start;
		climbPath [1] = arc;
		climbPath [2] = end;
		iTween.MoveTo(player, iTween.Hash("position", end, "path", climbPath, "time", 1.0f, "oncomplete", "returnControl", "oncompletetarget", this.gameObject));
		//verticalSpeed = ledgeClimbSpeed;
		//movement += (new Vector3 (0, verticalSpeed, 0) + inAirVelocity) * Time.deltaTime;
		
		// Move the controller
		//collisionFlags = controller.Move(movement);
		
	}
	public void shimmy (bool direction){
		if(!shimmying){
			shimmying = true;
			player.GetComponent<ThirdPersonController> ().shimmy = true;
			if(direction)
				iTween.MoveTo(player, iTween.Hash("position", ledgePath[0], "path", ledgePath, "speed", 1.0f));
			else
				iTween.MoveTo(player, iTween.Hash("position", ledgePath[children-1], "speed", 1.0f));
		}
	}
	void returnControl() {
		playerMesh.transform.Translate (-shiftPlayer);
		player.GetComponent<ThirdPersonController> ().hanging = false;
		player.GetComponent<ThirdPersonController>().movable = true;
		inControl = false;
	}

}
