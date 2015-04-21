using UnityEngine;
using System.Collections;

public class SnappingDevilController : MonoBehaviour {
	
	public NavMeshAgent navAgent;
	GameObject player;
	public BoxCollider attackArea;
	public Animator anim;

	private float attackCooldown = 2.0f;
	private float attackTimer = 0f;

	private static readonly Vector3 clawPoint = new Vector3 (2.5f,-1.5f,7); //location of claw relative to center

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		if (playerVisible())
		{

			navAgent.SetDestination(player.transform.position);
			//play walk animation
			if (attackArea.bounds.Contains(player.transform.position))
			{
				navAgent.Stop();
				//play attack animation
				if ((attackTimer += Time.deltaTime) >= attackCooldown)
				{
					attackTimer = 0;
					FireSnapper();
				}
			} else{
				navAgent.Resume();
				Debug.Log ("Player visible.");
			}
		} else
		{
			//check if navAgent has reached destination or otherwise stopped
			if (!navAgent.pathPending &&
			   	navAgent.remainingDistance <= navAgent.stoppingDistance &&
			  	(!navAgent.hasPath || navAgent.velocity.sqrMagnitude == 0f))
			{
				//idle animation
				//check if going to new wander point

				//if going to new wander point, set new wander point
				//play walking animation 
			}
		}
	}
	
	// The animation calls this function to fire
	void FireSnapper () {
		//create effect
		//check if any objects in between snapper and zenobia
		RaycastHit hitObj;
		Vector3 heading = player.transform.TransformPoint(new Vector3(0,1,0)) - transform.TransformPoint (clawPoint);
		if (Physics.Raycast(clawPoint, transform.TransformDirection(Vector3.forward), out hitObj))
		{
			Debug.DrawLine(transform.TransformPoint(clawPoint), hitObj.point, Color.green, 1.0f);
			Debug.DrawRay(transform.TransformPoint(clawPoint), heading, Color.blue, 1.0f);
			if (hitObj.transform == player.transform)
			{
				player.SendMessage ("TakeDamage", 40f);
			}
		}
	}
	
	//checks if the player is seen by the creature
	bool playerVisible() {
		if (Vector3.Distance(transform.position, player.transform.position) < 30 && Mathf.Abs(transform.position.y - player.transform.position.y) < 7)
		{
			return true;
		}
		return false;
	}
}