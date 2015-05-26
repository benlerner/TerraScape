using UnityEngine;
using System.Collections;

public class targetLock : MonoBehaviour {
	public GameObject player;
	private Vector3 target;
    public float force = 10f;
    public Rigidbody rb;
    private bool active = true;
	// Use this for initialization
	void Start () {
		player = GameObject.Find("zenobia");
		target = player.transform.position;
		transform.LookAt(player.transform);
        
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        if (active)
            rb.velocity = transform.forward*force;
	}
    void OnCollisionEnter(Collision collision){
        active = false;
    }
}
