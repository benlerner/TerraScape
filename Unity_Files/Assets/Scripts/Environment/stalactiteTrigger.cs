using UnityEngine;
using System.Collections;

public class stalactiteTrigger : MonoBehaviour {

	public GameObject player;
	private Transform cameraHolder;
	private Transform playerHolder;
	public GameObject stalactite;
	public int time;
	private int timer;
	private bool timeStarted = false;
	private bool shake = false;
	public int shakeDuration = 30;
	private Vector3 cameraBase;
	private Vector3 cameraShake;
	private bool active;
	private Vector3 fall;
	private Camera mainCamera;
	private Camera myCamera;
    //public AudioClip shoot;
	
	// Use this for initialization
	void Start () {
		mainCamera = Camera.main.GetComponent<Camera> ();
		player = GameObject.Find("zenobia");
		myCamera = transform.GetChild (0).GetComponent<Camera> ();
		playerHolder = transform.GetChild (1);
		cameraBase = transform.GetChild (0).position;
		fall = new Vector3 (0, 70, 0);
	}

	// Update is called once per frame
	void Update () {
		if (shake){
			cameraShake.x = cameraBase.x + Random.Range(-10f, 10f);
			cameraShake.y = cameraBase.y + Random.Range(-10f, 10f);
			cameraShake.z = cameraBase.z + Random.Range(-10f, 10f);
		}
		if (active){
			player.transform.position = playerHolder.transform.position;
			myCamera.gameObject.transform.position = cameraShake;
			player.transform.rotation = playerHolder.transform.rotation;
		}

		if (timeStarted){
			timer += 1;
		}
		if (timer >= shakeDuration){
			shake = false;
			cameraShake = cameraBase;
			iTween.MoveBy(stalactite, fall, 3f); 
		}
		if (timer >= time) {
			player.GetComponent<ThirdPersonController>().movable = true;
			mainCamera.transform.GetComponent<TP_Camera>().movable = true;
			player.GetComponent<ThirdPersonController>().cutScene = 0;
			active = false;
			mainCamera.enabled = true;
			myCamera.enabled = false;
			timer = 0;
			timeStarted = false;
		}
	}
	public void activate(){
        //GetComponent<AudioSource>().PlayOneShot(shoot);
		player.GetComponent<ThirdPersonController>().stopSliding();
		player.GetComponent<ThirdPersonController>().moveSpeed = 0.0f;
		player.GetComponent<ThirdPersonController>().verticalSpeed = 0.0f;
		player.GetComponent<ThirdPersonController>().inAirVelocity = Vector3.zero;
		mainCamera.transform.GetComponent<TP_Camera>().movable = false;
		//Camera.main.transform.position = cameraHolder.transform.position;
		//Camera.main.transform.rotation = cameraHolder.transform.rotation;
		timeStarted = true;
		shake = true;
		active = true;
		mainCamera.enabled = false;
		myCamera.enabled = true;

		player.GetComponent<ThirdPersonController>().movable = false;
		player.transform.position = playerHolder.transform.position;
		player.transform.rotation = playerHolder.transform.rotation;
		//Camera.main.GetComponent<TP_Camera>().shake = true;
			//player.GetComponent<ThirdPersonController>().cutScene = cutSceneNumber;

			//cameraHolder.GetComponent<Animation>().Play();
			//playerHolder.GetComponent<Animation>().Play();
	}
}
