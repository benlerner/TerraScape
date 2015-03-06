using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class inventoryGUI : MonoBehaviour {
	public Sprite[] sprites;
	private GameObject player;
	public int setImage;
	public Image selection;
	private Image forward;
	private Image backward;
	public int forImage;
	public int backImage;
	// Use this for initialization
	void Start () {
		selection = transform.GetChild(0).GetComponent<Image>();
		forward = transform.GetChild(1).GetComponent<Image>();
		backward = transform.GetChild(2).GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update () {
		/*backImage = setImage--;
		if (backImage < 0)
			backImage = sprites.Count - 1;
		forImage = setImage++;
		if (forImage >= sprites.Count)
			forImage = 0;*/
		selection.sprite = sprites[setImage];
		forward.sprite = sprites [forImage];
		backward.sprite = sprites [backImage];
	}
}
