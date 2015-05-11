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
	public float stopRange = 18f;
	public float meleeRange = 10f;

	private float attackCooldown = 2.0f;
	private float attackTimer = 0f;
	private bool attacking;

	public Transform shotPoint;
	private Vector3 playerPos;
	private Vector3 retreatPoint;
	private bool hasRetreatPoint = false;

	private enum AIState
	{
		None,
		Approaching,
		Attacking
	}

	private AIState curState = AIState.None;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
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
				navAgent.updateRotation = true;
				navAgent.Resume();
			}
			else if (dist < stopRange && curState == AIState.Approaching)
			{
				curState = AIState.Attacking;
				//stand still so long as player is in attack range
				navAgent.Stop();
				navAgent.updateRotation = false;
				navAgent.ResetPath();
			}
		} else
		{
			curState = AIState.None;
			attacking = false;
		}

		//do state
		switch (curState)
		{
		case AIState.Approaching:
			navAgent.SetDestination(playerPos);
			break;

		case AIState.Attacking:
			attacking = true;
			//rotate towards player
			Vector3 playerHeading = player.transform.position - transform.position;
			playerHeading.y = 0;
			Quaternion rotation = Quaternion.LookRotation(playerHeading);
			transform.rotation = Quaternion.RotateTowards(transform.rotation, rotation, navAgent.angularSpeed * Time.deltaTime);

			if ((attackTimer += Time.deltaTime) >= attackCooldown)
			{
				if (dist <= meleeRange)
				{
					//melee attack
					Vector3 impactVector = playerPos - transform.position;
					impactVector.y = 0;
					impactVector.Normalize();
					player.GetComponent<Player>().TakeImpactDamage(30f,impactVector, 1000f);
				} else
				{
					FireSnapper();
				}
				attackTimer = 0;
				attacking = false;
			}
			break;
		}
	}

	// The animation calls this function to fire
	void FireSnapper () {
		Instantiate (snapperPrefab, shotPoint.position, transform.rotation);
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