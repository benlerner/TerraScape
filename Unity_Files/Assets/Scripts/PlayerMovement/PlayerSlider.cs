﻿using UnityEngine;
using System.Collections;

//[RequireComponent (typeof (TrailRenderer))]

public class PlayerSlider : MonoBehaviour {

	public float jumpSpeed  = 8.0f;
	private Vector3 moveDirection = Vector3.zero;
	public Transform tracker;
	public float rotateSpeed = 30f;
	public CharacterController controller;
	public float maxSpeed = 20f;
	public static PlayerSlider instance;
	public float turnForce = 50f;
	public float extraForce = 1000f;
	public float maxPitchAngle = 30f;
	public float maxRollAngle = 20f;

	private float elevationAngle = 0;


	//public TrailRenderer trailRenderer;

	//public float maxRotationSpeed = 5f;//forward speed at which maximum rotation is reached

	private ThirdPersonController walker;	//reference to walker script

	private float distToGround = 0;//distance from player pivot to ground

	// Use this for initialization
	void Awake () {
		instance = this;
		walker = GetComponent<ThirdPersonController> ();
		distToGround = GetComponent<CapsuleCollider> ().bounds.extents.y;
	}
	
	// Update is called once per frame
	void Update () {
		//angle of elevation
		if (Input.GetKeyDown (KeyCode.E))
			walker.slide ();
		elevationAngle = transform.eulerAngles.x;
		elevationAngle *= Mathf.Deg2Rad; // trig functions use radians

		/*
		RaycastHit hit1, hit2 ;

		//check that there is terrain directly below and in front
		if (Physics.Raycast(tracker.position, -Vector3.up, out hit1)) {
			if (Physics.Raycast(tracker.TransformPoint(Vector3.forward * 0.1f), -Vector3.up, out hit2)) {
				//transform.rotation = Quaternion.LookRotation(hit2.point - hit1.point, hit1.normal);
				//Debug.Log(hit1.point + " : " + hit2.point + " : " + hit1.normal);
			}
			if (IsGrounded()) 
			{
				if (Input.GetButton ("Jump")) {
					moveDirection.y = jumpSpeed;
				}
			} else if (!IsGrounded())
			{
				//disable trailrenderer
				//trailRenderer.enabled = false;
			}
		}*/

		//rotate left/right
		transform.Rotate(0, Input.GetAxis ("Horizontal") * rotateSpeed * Time.deltaTime, 0);
	}

	void FixedUpdate () {
		if (IsGrounded())
		{

			/*if (Input.GetKey(KeyCode.W))//hold w to go forward
			{
				Debug.Log("Key W");
				rigidbody.AddRelativeForce(Vector3.forward * 1000.0f);
			}*/


			Vector3 velocityDirection = GetComponent<Rigidbody>().velocity.normalized;
			Vector3 facingDirection = transform.TransformDirection(Vector3.forward);
			//if velocity is not in the same direction as the transform, add a force to 
			if (velocityDirection != facingDirection)
			{
				//if foward direction is to the right, add a force to the left
				//http://forum.unity3d.com/threads/left-right-test-function.31420/
				float direction = 0; // -1 is left, 1 is right
				Vector3 perpendicular = Vector3.Cross(facingDirection, velocityDirection);
				direction = Mathf.Sign(Vector3.Dot(perpendicular, transform.TransformDirection(Vector3.up)));//-1 if left, 1 if right

				Vector3 rotateForce = Vector3.left * GetComponent<Rigidbody>().velocity.magnitude * GetComponent<Rigidbody>().mass * direction * turnForce *
					Mathf.Sin(Vector3.Angle(velocityDirection, facingDirection) * Mathf.Deg2Rad);

				GetComponent<Rigidbody>().AddRelativeForce(rotateForce);
			}

			GetComponent<Rigidbody>().AddForce(Vector3.down * extraForce);
		}

		//make sure zenobia does not tilt too far
		//get pitch angle (X axis). Positive = tilt downwards, Negative = tilt upwards
		float pitchAngle = transform.eulerAngles.x;
		if (pitchAngle > 180)
			pitchAngle -= 360;
		//get roll angle (Z axis). Positive = tilt left, Negative = tilt right (from behind)
		float rollAngle = transform.eulerAngles.z;
		if (rollAngle > 180)
			rollAngle -= 360;

		if (Mathf.Abs(pitchAngle) > maxPitchAngle)
		{
			if (Mathf.Sign(pitchAngle) == 1)
			{
				pitchAngle = maxPitchAngle;
			}
			else{
				pitchAngle = 360 - maxPitchAngle;
			}

		}

		if (Mathf.Abs(rollAngle) > maxRollAngle)
		{
			if (Mathf.Sign(rollAngle) == 1)
			{
				rollAngle = maxRollAngle;
			}
			else
			{
				rollAngle = 360 - maxRollAngle;
			}
		}
		transform.eulerAngles = new Vector3 (pitchAngle, transform.eulerAngles.y, rollAngle);
	
		//limit speed
		if (GetComponent<Rigidbody>().velocity.sqrMagnitude > maxSpeed * maxSpeed)
		{
			GetComponent<Rigidbody>().velocity = GetComponent<Rigidbody>().velocity.normalized * maxSpeed;
		}
	}

	//check if rigidbody is grounded
	//http://answers.unity3d.com/questions/196381/how-do-i-check-if-my-rigidbody-player-is-grounded.html
	private bool IsGrounded()
	{
		return Physics.Raycast(transform.position, -Vector3.up, distToGround + 0.2f);
	}
}
