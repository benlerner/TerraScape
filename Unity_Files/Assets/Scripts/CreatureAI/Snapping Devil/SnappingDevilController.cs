using UnityEngine;
using System.Collections;

public class SnappingDevilController : MonoBehaviour {
	
	public NavMeshAgent navAgent;
	GameObject player;
	public BoxCollider attackArea;
	public Animator anim;
	public GameObject snapperPrefab;

	public float detectionRange = 30f;
	public float maxRange = 22f;
	public float minRange = 15f;
	public float stopRange;

	private float attackCooldown = 1.0f;
	private float attackTimer = 0f;
	private bool attacking;

	private static readonly Vector3 clawPoint = new Vector3 (2.5f, 1.5f, 8); //location of claw relative to center
	private Vector3 playerPos;
	private Vector3 retreatPoint;
	private bool hasRetreatPoint = false;

	private enum AIState
	{
		None,
		Approaching,
		Attacking,
		Retreating
	}

	private AIState curState = AIState.None;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
		stopRange = (maxRange + minRange) / 2;
	}
	
	// Update is called once per frame
	void Update () {
		playerPos = player.transform.TransformPoint(new Vector3 (0, 1.06f, 0));
		float dist = Vector3.Distance(transform.position, playerPos);
		if (playerVisible())
		{
			if (dist > maxRange && !attacking)
			{
				curState = AIState.Approaching;
			}
			else if ((dist < stopRange && curState == AIState.Approaching) || (dist > stopRange && curState == AIState.Retreating))
			{
				curState = AIState.Attacking;
			}
			else if (dist < minRange && !attacking && navAgent.remainingDistance <= float.Epsilon)
			{
				curState = AIState.Retreating;
				hasRetreatPoint = false;
			}
		} else
		{
			curState = AIState.None;
		}

		//do state
		switch (curState)
		{
		case AIState.Approaching:
			navAgent.SetDestination(playerPos);
			break;

		case AIState.Attacking:
			attacking = true;
			if ((attackTimer += Time.deltaTime) >= attackCooldown)
			{
				FireSnapper();
				attackTimer = 0;
				attacking = false;
			}
			break;

		case AIState.Retreating:
			float angle = 0;
			while (!hasRetreatPoint)
			{
				Vector3 headingRight = Quaternion.AngleAxis (angle * -1f, transform.TransformDirection(Vector3.up)) * 
					transform.TransformDirection(Vector3.back) * (dist - stopRange);
				Vector3 headingLeft = Quaternion.AngleAxis (angle, transform.TransformDirection(Vector3.up)) * 
					transform.TransformDirection(Vector3.back) * (dist - stopRange);
				//check if there is blocking this path
				if (!Physics.Raycast(transform.position, headingRight, stopRange - dist))
				{
					//set retreat point to endpoint of headingRight
					retreatPoint = transform.TransformPoint(headingRight);
					hasRetreatPoint = true;
					navAgent.SetDestination(retreatPoint);
				} else if (!Physics.Raycast(transform.position, headingLeft, stopRange - dist))
				{
					retreatPoint = transform.TransformPoint(headingLeft);
					hasRetreatPoint = true;
					navAgent.SetDestination(retreatPoint);
				}
				angle += 10f;
			}
			break;
		}
	}

	// The animation calls this function to fire
	void FireSnapper () {
		Instantiate (snapperPrefab, transform.TransformPoint (clawPoint), transform.rotation);
	}
	
	//checks if the player is seen by the creature
	bool playerVisible() {
		if (Vector3.Distance(transform.position, playerPos) < detectionRange && Mathf.Abs(transform.position.y - playerPos.y) < 7)
		{
			return true;
		}
		return false;
	}
}