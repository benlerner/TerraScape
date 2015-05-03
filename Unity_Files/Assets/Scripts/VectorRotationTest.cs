using UnityEngine;
using System.Collections;

public class VectorRotationTest : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float angle = 10;
		Vector3 rayRight = Quaternion.AngleAxis (angle, transform.TransformDirection(Vector3.up)) * transform.TransformDirection(Vector3.back)  * 5f;
		Vector3 rayLeft = Quaternion.AngleAxis (angle * -1f, transform.TransformDirection(Vector3.up)) * transform.TransformDirection(Vector3.back) *  5f;
		Debug.DrawRay (transform.position, rayRight, Color.red);
		Debug.DrawRay (transform.position, rayLeft, Color.blue);
	}
}
