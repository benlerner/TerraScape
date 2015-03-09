using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class journalGUI : MonoBehaviour {
	public List<Sprite> pages = new List<Sprite>();
	private Image page;
	public int selectedPage = 0;
	private Vector3 normalPos;
	private Vector3 popUpPos;
	private Vector3 openPos;
	private Transform instance;
	private bool popped = false;
	private bool poppingUp = false;
	private int popUpTimer = 0;
	public int popUpLength = 60;
	public float popUpSpeed = 10f;
	private Vector3 normalScale;
	public float scaleFactor = 1;
	private Vector3 shiftJournal;
	private bool paused = false;
	// Use this for initialization
	void Start () {
		page = transform.GetComponent<Image> ();
		page.sprite = pages [selectedPage];
		instance = this.transform;
		normalPos = this.transform.localPosition;
		normalScale = this.transform.localScale;
		shiftJournal = this.transform.localPosition;
		popUpPos.y = -381;
	}
	
	// Update is called once per frame
	void Update () {
		if (poppingUp){
			if (instance.localPosition.y < popUpPos.y){
				shiftJournal.y = shiftJournal.y + (popUpSpeed);
				instance.localPosition = shiftJournal;
			}
			else
				popped = true;
		}
		else if (!poppingUp && !paused){
			if (instance.localPosition.y > normalPos.y){
				shiftJournal.y = shiftJournal.y - (popUpSpeed);
				instance.localPosition = shiftJournal;
			}
		}
		if (Input.GetKeyDown(KeyCode.Tab)){
			if (paused){
				Time.timeScale = 1;
				instance.localPosition = normalPos;
				instance.localScale = normalScale;
				paused = false;
			}
			else if (!paused) {
				Time.timeScale = 0;
				instance.localPosition = openPos;
				instance.localScale = normalScale * scaleFactor;
				paused = true;
			}
		}
		page.sprite = pages [selectedPage];
	}

	void FixedUpdate() {
		if (popped) {
			popUpTimer++;
		}
		if (popUpTimer >= popUpLength) {
			popDown();
			popUpTimer = 0;
		}
	}

	void popUp(){
		poppingUp = true;
	}

	void popDown(){
		poppingUp = false;
		popped = false;
	}
	public void addPage (Sprite page){
		pages.Add (page);
		selectedPage = pages.Count - 1;
		popUp ();
	}

	public void turnPage(bool direction){
		if (direction){
			selectedPage++;
			if (selectedPage >= pages.Count)
				selectedPage = 0;
		}
		else {
			selectedPage--;
			if (selectedPage < 0)
				selectedPage = pages.Count - 1;
		}
		page.sprite = pages [selectedPage];
	}
}
