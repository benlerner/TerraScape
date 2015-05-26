using UnityEngine;
using System.Collections;

public class laserStartup : MonoBehaviour {
    private int timer;
    public int shoot;
    public ParticleSystem laser;
    public Collider laserCol;
	// Use this for initialization
	void Start () {
	   
	}
	
	// Update is called once per frame
	void FixedUpdate () {
	   timer ++;
        if (timer >= shoot){
            laser.maxParticles = 400;
            laserCol.enabled = true;
    }
	}
}
