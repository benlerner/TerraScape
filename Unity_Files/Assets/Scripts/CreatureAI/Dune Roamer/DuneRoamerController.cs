using UnityEngine;
using System.Collections;

public class DuneRoamerController : MonoBehaviour {

	public NavMeshAgent navAgent;
	public GameObject player;
	private FSMSystem fsm;

	public float attackDamage = 30.0f;
	
	public float walkSpeed = 3.5f;
	public float chargeSpeed = 10f;
	public float chaseWaitTime = 5.0f; //amount of time to wait when last known position is reached.
	float chaseTimer;
	
	public float fieldOfView = 200f;
	public float viewRange = 60f;
	public float attackRange = 7f;
	public float rollRange = 30f;
	
	public float MaxHealth = 1000f;
	public float currentHealth = 1000f;
	
	bool alive = true;
	
	public float rollSpeed = 15f;
	public float rollDamage = 70f;

	//has to wait 10 seconds before it can do another roll attack
	public readonly float rollCooldown = 10f;
	public float rollTimer = 0f;

	public DuneRoamerHit hitObject;
	public SphereCollider rollingCollider;
	public Collider[] walkingColliders;

	public Animator animator;

	//how long the object waits after dying before fading out
	private float persistDuration = 5f;
	private float persistTimer = 0f;
	//how long the object takes to fade out
	private float fadeTime = 3f;
	private float startAlpha;

	// Use this for initialization
	void Start () {
		player = GameObject.FindWithTag ("Player");
		MakeFSM ();
		hitObject = DuneRoamerHit.None;
		//startAlpha = renderer.material.color.a;
		navAgent.speed = walkSpeed;

		//disable rigidbody
		rigidbody.isKinematic = true;
		rigidbody.detectCollisions = false;

		animator = GetComponent<Animator> ();		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if (currentHealth > 0)
		{
			fsm.CurrentState.Reason (player, gameObject);
			fsm.CurrentState.Act (player, gameObject);
		}
	}


	//states where the dune roamer's roll cooldown does not decrease
	private StateID[] noRollCooldownStates = {StateID.RollStateID, StateID.FallingStateID, StateID.TrappedStateID, StateID.StunnedStateID}; 

	void Update()
	{
		//decrease roll cooldown if not in a state which forbids it
		if (System.Array.IndexOf(noRollCooldownStates, fsm.CurrentStateID) == -1)
		{
			if ((rollTimer -= Time.deltaTime) < 0)
			{
				rollTimer = 0;
			}
		}
		if (currentHealth == 0)
		{
			//[ANIMATE] play death animation
			if ((persistTimer += Time.deltaTime) >= persistDuration)
			{
				Destroy (gameObject);
			}
		}
	}

	public void SetTransition(Transition t) { fsm.PerformTransition(t); }

	private void MakeFSM()
	{
		IdleDRState idle = new IdleDRState (this);
		idle.AddTransition (Transition.PlayerAppears, StateID.ApproachStateID);

		ApproachDRState approach = new ApproachDRState (this);
		approach.AddTransition (Transition.RollRange, StateID.RollStateID);
		approach.AddTransition (Transition.AttackRange, StateID.AttackStateID);
		approach.AddTransition (Transition.OutOfRange, StateID.IdleStateID);

		RollDRState roll = new RollDRState (this);
		roll.AddTransition (Transition.PlayerImpact, StateID.IdleStateID);
		roll.AddTransition (Transition.TrapImpact, StateID.TrappedStateID);
		roll.AddTransition (Transition.OtherImpact, StateID.StunnedStateID);
		roll.AddTransition (Transition.InAir, StateID.FallingStateID);

		AttackDRState attack = new AttackDRState (this);
		attack.AddTransition (Transition.PlayerAppears, StateID.IdleStateID);
		attack.AddTransition (Transition.RollRange, StateID.RollStateID);

		TrappedDRState trapped = new TrappedDRState (this);
		trapped.AddTransition (Transition.BreakFree, StateID.IdleStateID);

		StunnedDRState stunned = new StunnedDRState (this);
		stunned.AddTransition (Transition.BreakFree, StateID.IdleStateID);

		FallingDRState falling = new FallingDRState (this);
		falling.AddTransition (Transition.Crash, StateID.IdleStateID);

		fsm = new FSMSystem ();
		fsm.AddState (idle);
		fsm.AddState (approach);
		fsm.AddState (roll);
		fsm.AddState (attack);
		fsm.AddState (trapped);
		fsm.AddState (stunned);
		fsm.AddState (falling);

		Debug.Log ("Entered idle state.");
	}

	void OnCollisionEnter (Collision other)
	{
		if (other.gameObject.tag.Equals("Player"))
		{
			hitObject = DuneRoamerHit.Player;
			Debug.Log("Hit the player");
		} else if (other.gameObject.tag.Equals("Trap"))
		{
			hitObject = DuneRoamerHit.Trap;
		}
	}

	public void takeDamage (float dmg)
	{
		if (dmg > currentHealth)
		{
			currentHealth = 0;
			//die
		} else
		{
			currentHealth -= dmg;
		}
	}

	//hit the player, dealing damage and knocking the player back.
	public void doPlayerImpact (float dmg, float impactForce)
	{
		Vector3 impactVector = player.transform.position - transform.position;
		//remove vertical component
		impactVector.y = 0;

		//normalize and add small y component to make the vector point away and slightly up
		impactVector.Normalize ();
		impactVector.y = 0.2f;
		impactVector.Normalize ();

		Debug.Log("Hit Zenobia! Impact direction = " + impactVector);
		player.GetComponent<Player>().TakeImpactDamage(dmg, impactVector, impactForce);
		hitObject = DuneRoamerHit.None;
	}
}

public enum DuneRoamerHit
{
	None = 0,
	Player = 1,
	Trap = 2
}

public class IdleDRState : FSMState
{
	public float wanderRange = 50f;
	public DuneRoamerController controller;

	//what the Dune roamer could be doing while idle: standing still,
	//wandering to a point, playing animation, etc.
	private enum IdleState
	{
		Idle = 0,
		Wander = 1
	}

	private IdleState state = IdleState.Idle;
	private Vector3 wanderPoint;

	//update timer for idle state - only change action once per second
	private float updatePeriod = 1f;
	private float timer = 0f;

	public IdleDRState(DuneRoamerController ctrlr)
	{
		stateID = StateID.IdleStateID;
		controller = ctrlr;
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered idle state.");
		controller.navAgent.enabled = true;
		controller.navAgent.Stop ();

		//disable rigidbody
		controller.rigidbody.isKinematic = true;
		controller.rigidbody.detectCollisions = false;
	}
	
	public override void Reason (GameObject player, GameObject npc)
	{
		if (Vector3.Distance(npc.transform.position, player.transform.position) < controller.viewRange)
		{
			controller.SetTransition(Transition.PlayerAppears);
		}
	}

	//if the dune roamer has reached its target and it is time to do another action
	public override void Act (GameObject player, GameObject npc)
	{

		if (!controller.navAgent.pathPending &&
			controller.navAgent.remainingDistance <= controller.navAgent.stoppingDistance &&
			(!controller.navAgent.hasPath || controller.navAgent.velocity.sqrMagnitude == 0f))
		{
			if (state == IdleState.Wander)
			{
				state = IdleState.Idle;
				controller.animator.SetBool("walk", false);
			}

			//wander point reached or as close as it can get
			if ((timer += Time.fixedDeltaTime) >= updatePeriod)
			{
				timer = 0;
				if (state == IdleState.Idle)
				{
					//choose an action at random each second
					float rand = Random.value;
					
					if (rand < 0.7)
					{
						state = IdleState.Idle;
					} else {
						//choose a new wander point and go there
						state = IdleState.Wander;
						wanderPoint = controller.transform.position + new Vector3(Random.Range(-wanderRange, wanderRange),
						                                                          0,
						                                                          Random.Range(-wanderRange, wanderRange));
						controller.navAgent.SetDestination(wanderPoint);
						controller.animator.SetBool("walk", true);
					}
				}
			}
		}
	}
}

public class ApproachDRState : FSMState
{
	public DuneRoamerController controller;
	private Vector3 playerPosition,
					controllerPosition,
					playerHeading;

	public ApproachDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.ApproachStateID;
		controller = ctrlr;
		playerPosition = controller.player.transform.position;// + new Vector3 (0, 1.06f, 0);
		controllerPosition = controller.transform.position;// + new Vector3 (0, 4f, 0);
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered approach state.");

		controller.navAgent.enabled = true;
		
		//disnable rigidbody
		controller.rigidbody.isKinematic = true;
		controller.rigidbody.detectCollisions = false;
		
		controller.rigidbody.constraints = RigidbodyConstraints.None;
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		RaycastHit hitInfo = new RaycastHit();
		playerPosition = controller.player.transform.position + new Vector3 (0, 1.06f, 0);
		controllerPosition = controller.transform.position + new Vector3 (0, 2f, 0);
		playerHeading = playerPosition - controllerPosition;
		playerHeading.Normalize ();
		float playerDistance = playerHeading.magnitude;

		float headingAngle = Vector3.Dot (controller.transform.forward, playerHeading);

		if (playerDistance > controller.viewRange)
		{
			controller.SetTransition(Transition.OutOfRange);
		}
		//if dune roamer is in attack range and facing player and has line of sight to player, start attacking
		else if (playerDistance < controller.attackRange &&
		         headingAngle >= 0.99f &&
		         Physics.Raycast(controllerPosition, playerHeading, out hitInfo, controller.attackRange))
		{
			if (hitInfo.transform == player.transform)
			{
				Debug.Log("Angle to player: " + headingAngle);
				controller.SetTransition(Transition.AttackRange);
			}
		}
		//if dune roamer is in roll range and facing player and has line of sight to player, start rolling
		//also check if not too close to attack range and roll is off cooldown.
		else if (playerDistance < controller.rollRange &&
		         controller.rollTimer == 0 &&
		         headingAngle >= 0.99f &&
		         Physics.Raycast(controllerPosition, playerHeading, out hitInfo, controller.rollRange))
		{
			if (hitInfo.transform == player.transform)
			{
				Debug.Log("Angle to player: " + headingAngle);
				controller.SetTransition(Transition.RollRange);
			}
		}
	}

	public override void Act (GameObject player, GameObject npc)
	{
		controller.navAgent.SetDestination (player.transform.position);
	}
}

public class RollDRState : FSMState
{
	public DuneRoamerController controller;
	public WheelCollider collider;
	private float lastFrameSpeed;

	public RollDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.RollStateID;
		controller = ctrlr;
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered roll state.");
		foreach (Collider c in controller.walkingColliders)
		{
			c.enabled = false;
		}
		controller.rollingCollider.enabled = true;
		controller.navAgent.enabled = false;

		controller.transform.LookAt(controller.player.transform);

		//enable rigidbody
		controller.rigidbody.isKinematic = false;
		controller.rigidbody.detectCollisions = true;

		controller.rigidbody.AddRelativeForce (Vector3.up * 7000, ForceMode.Impulse);
		controller.rigidbody.AddRelativeForce (Vector3.forward * 60000, ForceMode.Impulse);
		//controller.rigidbody.constraints = RigidbodyConstraints.FreezeRotationY ^ RigidbodyConstraints.FreezeRotationZ;
		//controller.rigidbody.constraints = RigidbodyConstraints.None;
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		switch (controller.hitObject)
		{
		case DuneRoamerHit.Player:
			//hit zenobia
			controller.doPlayerImpact(90, 10000);
			controller.SetTransition(Transition.PlayerImpact);
			controller.rollTimer = controller.rollCooldown;
			return;

		case DuneRoamerHit.Trap:
			controller.hitObject = DuneRoamerHit.None;
			controller.SetTransition(Transition.TrapImpact);
			controller.rollTimer = controller.rollCooldown;
			return;
		}

		Vector3 currentFrameVelocity = controller.rigidbody.velocity;
		currentFrameVelocity.y = 0;
		float currentFrameSpeed = currentFrameVelocity.magnitude;

		//positive means slow down
		float currentFrameAcceleration = (lastFrameSpeed - currentFrameSpeed) / Time.fixedDeltaTime;

		//if the dune roamer has slowed down a lot last frame, then it's hit something so go to stunned state.
		if (currentFrameAcceleration > 120 || (currentFrameSpeed < lastFrameSpeed * 0.6 && currentFrameSpeed > 10))
		{
			Debug.Log("Lost a lot of speed! Acceleration for this frame: " + currentFrameAcceleration);
			controller.SetTransition(Transition.OtherImpact);
			return;
		}

		//also, if the dune roamer tips too far to the side, put it in stunned state as well.
		float tipAngle = controller.transform.localEulerAngles.z;
		if ((tipAngle < 90f && tipAngle > 10f) || (tipAngle > 270f && tipAngle - 360f < -10f))
		{
			Debug.Log("Tipped over! Z angle (roll): " + controller.transform.localEulerAngles.z);
			controller.SetTransition(Transition.OtherImpact);
		}

		//if vertical velocity is above a certain threshold, start falling
		if (controller.rigidbody.velocity.y < -10f)
		{
			controller.SetTransition(Transition.InAir);
			return;
		}
	}

	public override void Act (GameObject player, GameObject npc)
	{
		//controller.rigidbody.AddRelativeTorque (Vector3.right * 5000);
		if (controller.rigidbody.velocity.sqrMagnitude > controller.rollSpeed * controller.rollSpeed)
		{
			controller.rigidbody.velocity = controller.rigidbody.velocity.normalized * controller.rollSpeed;
		}
		Vector3 lastFrameVelocity = controller.rigidbody.velocity;
		lastFrameVelocity.y = 0;
		lastFrameSpeed = lastFrameVelocity.magnitude;
	}

	public override void DoBeforeLeaving ()
	{
		foreach (Collider c in controller.walkingColliders)
		{
			c.enabled = true;
		}
		controller.rollingCollider.enabled = false;
	}


}

public class AttackDRState : FSMState
{
	public DuneRoamerController controller;
	private float chargeForce = 200f;

	private float chargeDuration = 1f;
	private float chargeTimer = 0f;

	public AttackDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.AttackStateID;
		controller = ctrlr;
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered attack state.");
		controller.transform.LookAt(controller.player.transform);
		chargeDuration = Vector3.Distance (controller.transform.position, controller.player.transform.position) / controller.chargeSpeed + 3f;
		controller.animator.SetBool ("walk", true);
	}
	public override void Reason (GameObject player, GameObject npc)
	{

		if (controller.rigidbody.velocity.y < -10f)
		{
			controller.SetTransition(Transition.InAir);
			controller.animator.SetBool("walk", false);
		} else if (chargeTimer > chargeDuration)
		{
			controller.SetTransition(Transition.PlayerAppears);
			controller.animator.SetBool("walk", false);
		}
	}

	public override void Act (GameObject player, GameObject npc)
	{
		//[ANIMATE] play charging animation

		controller.navAgent.Move (controller.transform.TransformDirection(Vector3.forward) * controller.chargeSpeed * Time.fixedDeltaTime);
		chargeTimer += Time.fixedDeltaTime;

		switch (controller.hitObject)
		{
		case DuneRoamerHit.Player:
			controller.doPlayerImpact(40, 6000);
			break;
		}
	}
}

public class TrappedDRState : FSMState
{
	private DuneRoamerController controller;
	private float trapDuration = 10f;
	private float trapTimer = 0f;

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered trapped state.");
	}
	public TrappedDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.TrappedStateID;
		controller = ctrlr;
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		if (trapTimer >= trapDuration) 
		{
			controller.SetTransition(Transition.BreakFree);
			trapTimer = 0;
		}
	}
	
	public override void Act (GameObject player, GameObject npc)
	{
		//play stunned animation
		trapTimer += Time.fixedDeltaTime;
	}
}

public class StunnedDRState : FSMState
{
	private DuneRoamerController controller;
	private float stunDuration = 5f;
	private float stunTimer = 0f;

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered stunned state.");
	}
	public StunnedDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.StunnedStateID;
		controller = ctrlr;
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		if (stunTimer >= stunDuration) 
		{
			controller.SetTransition(Transition.BreakFree);
			stunTimer = 0;
		}
	}

	public override void Act (GameObject player, GameObject npc)
	{
		//play stunned animation
		stunTimer += Time.fixedDeltaTime;
	}
}

public class FallingDRState : FSMState
{
	private DuneRoamerController controller;
	private float fallingSpeed;

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered falling state.");
	}
	public FallingDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.FallingStateID;
		controller = ctrlr;
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		//if the dune roamer has stopped falling, it's hit the ground
		if (controller.rigidbody.velocity.y == 0)
		{
			//take damage only if falling speed over threshold
			controller.takeDamage(Mathf.Clamp(fallingSpeed - 5f, 0, float.PositiveInfinity) * 20);
			controller.SetTransition(Transition.Crash);
		}
	}
	
	public override void Act (GameObject player, GameObject npc)
	{
		//play falling animation
		fallingSpeed = controller.rigidbody.velocity.y;
	}
}