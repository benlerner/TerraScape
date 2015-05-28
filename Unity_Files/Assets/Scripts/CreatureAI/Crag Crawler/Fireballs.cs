using UnityEngine;
using System.Collections;

public class Fireballs : MonoBehaviour {
    
public GameObject explosion;
    
#region fields
	public bool isPlayer;
#endregion
         
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    
    void OnTriggerEnter(Collider other)
    {
		if (other.gameObject.tag.Equals("Player") && !isPlayer)
        {
            Vector3 impactVector = other.transform.TransformPoint(new Vector3(0,1.06f,0)) - transform.position;
            impactVector.y = 0;
            impactVector.Normalize();
            //other.GetComponent<Player>().TakeDamage(50f);
            other.GetComponent<Player>().TakeImpactDamage(45f,impactVector, 1000f);
        } else if (isPlayer)
        {
            other.gameObject.SendMessage ("snapperShotHit", SendMessageOptions.DontRequireReceiver);
        }
		//maybe create a particle effect?
        Instantiate (explosion, transform.position, transform.rotation);
		Destroy (gameObject, 0);

    }
}
