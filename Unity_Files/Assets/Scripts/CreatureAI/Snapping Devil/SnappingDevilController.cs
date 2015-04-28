using UnityEngine;
using System.Collections;

public class SnappingDevilController : MonoBehaviour {
	
	public NavMeshAgent navAgent;
	GameObject player;
	public BoxCollider attackArea;
	public Animator anim;
	public BoxCollider attackZone;

	private float attackCooldown = 1.0f;
	private float attackTimer = 0f;
	private bool attacking;

	private static readonly Vector3 clawPoint = new Vector3 (2.5f, 1.5f, 8); //location of claw relative to center
	private Vector3 playerPos;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		playerPos = player.transform.TransformPoint(new Vector3 (0, 1.06f, 0));
		if (playerVisible())
		{

			navAgent.SetDestination(playerPos);
			//play walk animation
			if (attackArea.bounds.Contains(playerPos) || attacking)
			{
				attacking = true;
				navAgent.Stop();
				//play attack animation
				if ((attackTimer += Time.deltaTime) >= attackCooldown)
				{
					attacking = false;
					attackTimer = 0;
					FireSnapper();
				}
			} else{
				navAgent.Resume();
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
		Vector3 heading = playerPos - transform.TransformPoint (clawPoint);
		if (Physics.Raycast(clawPoint, heading * 1.5f, out hitObj))
		{
			Debug.DrawLine(transform.TransformPoint(clawPoint), hitObj.point, Color.green, 1.0f);
			Debug.DrawRay(transform.TransformPoint(clawPoint), heading * 1.5f, Color.blue, 1.0f);
			if (hitObj.transform == player.transform && attackZone.bounds.Contains(playerPos))
			{
				Vector3 impactVector = playerPos - transform.position;
				impactVector.y = 0;
				impactVector.Normalize();
				player.GetComponent<Player>().TakeImpactDamage(40f, impactVector, 1000f);
				Debug.Log("Snapped player");
			}
			Debug.Log(hitObj.transform);
		}
	}
	
	//checks if the player is seen by the creature
	bool playerVisible() {
		if (Vector3.Distance(transform.position, playerPos) < 30 && Mathf.Abs(transform.position.y - playerPos.y) < 7)
		{
			return true;
		}
		return false;
	}
}