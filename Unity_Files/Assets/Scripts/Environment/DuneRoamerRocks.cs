using UnityEngine;
using System.Collections;

public class DuneRoamerRocks : MonoBehaviour {

	public GameObject[] childRocks;

	public void Shatter ()
	{
		foreach (GameObject g in childRocks)
		{
			g.SendMessage("Break", SendMessageOptions.DontRequireReceiver);
		}
		Destroy (gameObject);
	}
}
