using UnityEngine;
using System.Collections;

public class worm : MonoBehaviour {
	private Animator anim;
	public GameObject player;
	private int hits = 0;
	public int fireTime = 300;
	private int timer = 0;
	public GameObject projectile;
	public Transform origin;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();
		player = GameObject.Find("zenobia");
		anim.SetTrigger("hit");
	}
	
	// Update is called once per frame
	void Update () {
		transform.LookAt(player.transform);
		transform.eulerAngles = new Vector3 (0, transform.eulerAngles.y, 0);
	}

	void FixedUpdate() {
		timer++;
		if (timer == fireTime) {
			anim.SetTrigger("attack");
		}
		if (timer >= fireTime + 150) {
			Instantiate(projectile, origin.position, transform.rotation);
			timer = 0;
		}
	}

	void OnTriggerEnter(Collider other){
		if (other.tag == "bigBlock" && hits<2){
			anim.SetTrigger("hit");
			hits = hits + 1;
			timer = 0;
		}
		else if (other.tag == "bigBlock" && hits==2){
			anim.SetTrigger("death");
		}
	}
}
