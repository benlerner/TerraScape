using UnityEngine;
using System.Collections;

public class SnapperShot : MonoBehaviour
{
    #region fields
	public bool isPlayer;
	public float moveSpeed = 10f;
	public float maxDistance = 50f;
	private float currentDistance = 0f;
    #endregion

    #region properties

    #endregion

    #region functions
    void Start()
    {

    }

    void Update()
    {
		//move forward
		transform.Translate (Vector3.forward * Time.deltaTime * moveSpeed);
		if ((currentDistance += moveSpeed * Time.deltaTime) >= maxDistance)
		{
			Destroy(gameObject);
		}
    }

    void OnTriggerEnter(Collider other)
    {
		if (other.gameObject.tag.Equals("Player") && !isPlayer)
        {
            Vector3 impactVector = other.transform.TransformPoint(new Vector3(0,1.06f,0)) - transform.position;
            impactVector.y = 0;
            impactVector.Normalize();
            other.GetComponent<Player>().TakeImpactDamage(30f,impactVector, 1000f);
        } else if (isPlayer)
        {
            other.gameObject.SendMessage ("snapperShotHit", SendMessageOptions.DontRequireReceiver);
        }
		//maybe create a particle effect?
		Destroy (gameObject);

    }
    #endregion
}