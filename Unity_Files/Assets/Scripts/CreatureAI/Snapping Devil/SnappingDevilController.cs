using UnityEngine;
using System.Collections;

public class SnappingDevilController : MonoBehaviour {
	
	public NavMeshAgent navAgent;
	GameObject player;
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

	private Quaternion lookRotation;
	private Vector3 size;
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
		lookRotation = transform.rotation;
		navAgent.updateRotation = true;
		size = gameObject.GetComponent<Collider> ().bounds.extents;
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
				navAgent.Resume();
			}
			else if (dist < stopRange && curState == AIState.Approaching)
			{
				curState = AIState.Attacking;
				//stand still so long as player is in attack range
				navAgent.Stop();
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
		NavMeshHit hit;
		NavMesh.SamplePosition (transform.TransformPoint (Vector3.forward * size.z), out hit, size.z, NavMesh.AllAreas);
		Vector3 point = hit.position;
		transform.LookAt(point);
		/*
		//align with terrain and towards target
		if (navAgent.remainingDistance > 0.1f)
		{
			Vector3 normal = getNormal();
			Vector3 direction = navAgent.steeringTarget - transform.position;
			GameObject.Find("snappertest").transform.position = navAgent.steeringTarget;
			direction.y = 0.0f;
			if(direction.magnitude > 0.1f && normal.magnitude > 0.1f) {
				Quaternion qLook = Quaternion.LookRotation(direction, Vector3.up);
				Quaternion qNorm = Quaternion.FromToRotation(Vector3.up, normal);
				lookRotation = qLook * qNorm;
				Debug.Log(qLook + "," + qNorm);
			}
			//transform.localRotation = Quaternion.RotateTowards(transform.localRotation, lookRotation, navAgent.angularSpeed * Time.deltaTime);
		}*/
	}

	Vector3 getNormal ()
	{
		RaycastHit hitInfo;
		if (Physics.Raycast(transform.position, Vector3.down, out hitInfo, 0.1f))
		{
			return hitInfo.normal;
		} else
		{
			return Vector3.up;
		}
	}

	// The animation calls this function to fire
	void FireSnapper () {
		SnapperShot shot = ((GameObject)Instantiate (snapperPrefab, shotPoint.position, transform.rotation)).GetComponentInChildren<SnapperShot>();
		shot.isPlayer = false;
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