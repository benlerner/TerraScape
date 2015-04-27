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
	public float attackRange = 10f;
	public float rollRange = 30f;
	public float detectionRangeAbove = 4f;
	public float detectionRangeBelow = -4f;
	
	public float MaxHealth = 1000f;
	public float currentHealth = 1000f;
	
	bool alive = true;
	
	public float rollSpeed = 15f;
	public float rollDamage = 90f;

	//time waited before it can do another roll attack
	public readonly float rollCooldown = 20f;
	public float rollTimer = 0f;

	public DuneRoamerHit hitObject;

	public Animator animator;
	public CharacterController mover;

	//falling speed for when charging, rolling, or stunned
	public float gravity = 10f;

	//how long the object waits after dying before fading out
	private float persistDuration = 5f;
	private float persistTimer = 0f;
	//how long the object takes to fade out
	private float fadeTime = 3f;
	private float startAlpha;

	//used for checking if grounded
	private float distToGround;

	public bool shouldWander = true;
	public bool detectedPlayer = false;

	// Use this for initialization
	void Start () {
		player = GameObject.FindWithTag ("Player");
		MakeFSM ();
		hitObject = DuneRoamerHit.None;
		//startAlpha = renderer.material.color.a;
		navAgent.speed = walkSpeed;

		animator = GetComponent<Animator> ();

		distToGround = GetComponent<BoxCollider> ().bounds.extents.y;
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

			//
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
		attack.AddTransition (Transition.OtherImpact, StateID.StunnedStateID);

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
		string tag = other.gameObject.tag;
		if (tag.Equals("Player"))
		{
			hitObject = DuneRoamerHit.Player;
			//Debug.Log("Hit the player");
		} else if (tag.Equals("Trap"))
		{
			hitObject = DuneRoamerHit.Trap;
		} else if (tag.Equals("DRBreakable"))
		{
			Debug.Log("Hit rocks");
			//only break rocks if charging or rolling
			if (fsm.CurrentStateID.Equals(StateID.AttackStateID) || fsm.CurrentStateID.Equals(StateID.RollStateID))
			{
				other.gameObject.SendMessage("Shatter");
				takeDamage(400f);
				hitObject = DuneRoamerHit.Wall;
			}

		} else if (tag.Equals("Wall"))
		{
			//only stun if rolling
			if (fsm.CurrentStateID.Equals(StateID.RollStateID))
			{
				Debug.Log("Hit a wall while rolling.");
				hitObject = DuneRoamerHit.Wall;
			}
		}
	}

	void OnTriggerEnter (Collider other)
	{
		string tag = other.gameObject.tag;
		if (tag.Equals("Player"))
		{
			hitObject = DuneRoamerHit.Player;
			Debug.Log("Triggered player");
		} else if (tag.Equals("DRBreakable"))
		{
			if (fsm.CurrentStateID.Equals(StateID.AttackStateID) || fsm.CurrentStateID.Equals(StateID.RollStateID))
			{
				other.gameObject.SendMessage("Shatter");
				takeDamage(300f);
				hitObject = DuneRoamerHit.Wall;
				Debug.Log("Charged into rocks");
			}
		}
	}

	public void takeDamage (float dmg)
	{
		if (currentHealth == 0)
			return;
		if (dmg > currentHealth)
		{
			currentHealth = 0;
			Debug.Log("Dune roamer died!");
			animator.SetBool("walk", false);

			//fall on its side
			navAgent.Stop();
			navAgent.enabled = false;

			//play death animation

			//die
		} else
		{
			currentHealth -= dmg;
			Debug.Log("Took Damage! Current health = " + currentHealth);
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

//		Debug.Log("Hit Zenobia! Impact direction = " + impactVector);
		player.GetComponent<Player>().TakeImpactDamage(dmg, impactVector, impactForce);
		hitObject = DuneRoamerHit.None;
	}

	public bool isGrounded()
	{
		return Physics.Raycast (transform.position, Vector3.down, 0.1f);
	}
}

public enum DuneRoamerHit
{
	None = 0,
	Player = 1,
	Wall = 2,
	Trap = 3
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

	//update timer for idling - only change action once per second
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
		controller.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		controller.GetComponent<Rigidbody> ().angularVelocity = Vector3.zero;
		controller.navAgent.enabled = true;
		controller.GetComponent<Rigidbody> ().isKinematic = true;
		controller.navAgent.ResetPath ();
	}
	
	public override void Reason (GameObject player, GameObject npc)
	{
		if (Vector3.Distance(controller.transform.position, controller.player.transform.position) < controller.viewRange &&
		    controller.player.transform.position.y - controller.transform.position.y  < controller.detectionRangeAbove &&
		    controller.player.transform.position.y - controller.transform.position.y > controller.detectionRangeBelow)
		{
			controller.SetTransition(Transition.PlayerAppears);
			controller.detectedPlayer = true;
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
			if ((timer += Time.deltaTime) >= updatePeriod)
			{
				timer = 0;
				if (state == IdleState.Idle)
				{
					//choose an action at random each second
					float rand = Random.value;
					
					if (rand < 0.7)
					{
						state = IdleState.Idle;
					} else if (controller.shouldWander){
						//choose a new wander point and go there
						state = IdleState.Wander;
						wanderPoint = controller.transform.position + new Vector3(Random.Range(-wanderRange, wanderRange),
						                                                          0,
						                                                          Random.Range(-wanderRange, wanderRange));
						Debug.Log("New wander point: " + wanderPoint);
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

		/*controller.navAgent.enabled = false;
		controller.navAgent.enabled = true;
		controller.navAgent.enabled = false;
		controller.navAgent.enabled = true;*/
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		RaycastHit hitInfo = new RaycastHit();
		playerPosition = controller.player.transform.TransformPoint(new Vector3 (0, 1.06f, 0));
		controllerPosition = controller.transform.TransformPoint(new Vector3 (0, 5f, 7f));
		playerHeading = playerPosition - controllerPosition;
		float playerDistance = playerHeading.magnitude;
		playerHeading.Normalize ();

		//use this to calculate x and z position and ignore height
		Vector3 playerFlat = playerHeading;
		playerFlat.y = 0;
		playerFlat.Normalize ();
		float headingAngle = Vector3.Dot (controller.transform.forward, playerFlat);
		Physics.Raycast (controllerPosition, playerHeading, out hitInfo);
		if (playerDistance > controller.rollRange + 10f)
		{
			controller.SetTransition(Transition.OutOfRange);
			controller.detectedPlayer = false;
		}
		//if dune roamer is in attack range and facing player and has line of sight to player, start attacking

		else if (playerDistance < controller.attackRange &&
		         headingAngle >= 0.99f &&
		         hitInfo.transform == player.transform)
		{
			controller.SetTransition(Transition.AttackRange);
		}
		//if dune roamer is in roll range and facing player and has line of sight to player, start rolling
		//also check if not too close to attack range and roll is off cooldown.
		else if (playerDistance < controller.rollRange &&
		         controller.rollTimer == 0 &&
		         headingAngle >= 0.99f &&
		         hitInfo.transform == player.transform)
		{
			controller.SetTransition(Transition.RollRange);
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

	public RollDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.RollStateID;
		controller = ctrlr;
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered roll state.");
		controller.navAgent.enabled = false;
		controller.GetComponent<Rigidbody> ().isKinematic = false;

		controller.transform.LookAt(controller.player.transform);
		
		//anim.setBool("roll", true);
	}

	public override void Reason (GameObject player, GameObject npc)
	{
		switch (controller.hitObject)
		{
		case DuneRoamerHit.Player:
			//hit zenobia
			controller.doPlayerImpact(controller.rollDamage, 10000);
			return;

		case DuneRoamerHit.Wall:
			//hit breakable or wall
			controller.hitObject = DuneRoamerHit.None;
			controller.SetTransition(Transition.OtherImpact);
			controller.rollTimer = controller.rollCooldown;
			return;

		case DuneRoamerHit.Trap:
			controller.hitObject = DuneRoamerHit.None;
			controller.SetTransition(Transition.TrapImpact);
			controller.rollTimer = controller.rollCooldown;
			return;
		}

		/*//if vertical velocity is above a certain threshold, start falling
		if (controller.GetComponent<Rigidbody>().velocity.y < -10f)
		{
			controller.SetTransition(Transition.InAir);
			return;
		}*/
	}

	public override void Act (GameObject player, GameObject npc)
	{
		Vector3 vel = controller.transform.TransformDirection (Vector3.forward) * controller.rollSpeed;
		if (!controller.isGrounded())
		{
			vel += new Vector3(0, -1 * controller.gravity, 0);
		}
		controller.GetComponent<Rigidbody> ().velocity = vel;
		controller.GetComponent<Rigidbody> ().angularVelocity = Vector3.zero;
	}
}

public class AttackDRState : FSMState
{
	public DuneRoamerController controller;
	private float chargeForce = 200f;

	private float chargeDuration = 5f;
	private float chargeTimer = 0f;
	private Vector3 target;

	public AttackDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.AttackStateID;
		controller = ctrlr;
	}

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered attack state.");
		controller.transform.LookAt(controller.player.transform);
		controller.navAgent.enabled = false;
		controller.GetComponent<Rigidbody> ().isKinematic = false;
		controller.animator.SetBool ("walk", true);
	}
	public override void Reason (GameObject player, GameObject npc)
	{
		//if dune roamer hits a breakable, stun it.
		//Note: the controller's onCollisionEnter method can be changed to account for hitting walls.
		if (controller.hitObject == DuneRoamerHit.Wall)
		{
			Debug.Log("Hit rocks!");
			controller.SetTransition(Transition.OtherImpact);
			controller.animator.SetBool("walk", false);
			controller.hitObject = DuneRoamerHit.None;
			return;
		}

		if (chargeTimer > chargeDuration)
		{
			controller.SetTransition(Transition.PlayerAppears);
			controller.animator.SetBool("walk", false);
			chargeTimer = 0;
		}
	}

	public override void Act (GameObject player, GameObject npc)
	{
		//[ANIMATE] play charging animation

		Vector3 vel = controller.transform.TransformDirection (Vector3.forward) * controller.chargeSpeed;
		if (!controller.isGrounded())
		{
			vel += new Vector3(0, -1 * controller.gravity, 0);
		}
		controller.GetComponent<Rigidbody> ().velocity = vel;
		controller.GetComponent<Rigidbody> ().angularVelocity = Vector3.zero;
		chargeTimer += Time.fixedDeltaTime;

		switch (controller.hitObject)
		{
		case DuneRoamerHit.Player:
			controller.doPlayerImpact(controller.attackDamage, 6000);
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

		//play trapped animation
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
	private Rigidbody rigidbody;

	public override void DoBeforeEntering ()
	{
		Debug.Log ("Entered stunned state.");
	}
	public StunnedDRState (DuneRoamerController ctrlr)
	{
		stateID = StateID.StunnedStateID;
		controller = ctrlr;
		rigidbody = controller.GetComponent<Rigidbody> ();
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
		//anim.setBool("stun", true);
		stunTimer += Time.fixedDeltaTime;
		rigidbody.velocity = new Vector3(0, -1 * controller.gravity, 0);
		rigidbody.angularVelocity = Vector3.zero;
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
		if (controller.GetComponent<Rigidbody>().velocity.y < 0.2)
		{
			//take damage only if falling speed over threshold
			if (fallingSpeed > 5f)
			{
				controller.takeDamage(Mathf.Clamp(fallingSpeed - 5f, 0, float.PositiveInfinity) * 20);
			}
			if (controller.GetComponent<Rigidbody>().velocity.sqrMagnitude < 0.01)
			{
				controller.SetTransition(Transition.Crash);
			}
		}
	}
	
	public override void Act (GameObject player, GameObject npc)
	{
		//play falling animation
		fallingSpeed = controller.GetComponent<Rigidbody>().velocity.y;
	}

	public override void DoBeforeLeaving ()
	{
		//play getting up animation
	}
}