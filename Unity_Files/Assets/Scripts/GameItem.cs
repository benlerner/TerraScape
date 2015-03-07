using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class GameItem : MonoBehaviour
{
	public GameObject player;
	private Collider target;
    public enum ItemType
    {
        Consumable,
        Tool,
        Document,
    }
    public string itemName;
    public string itemDesc;
    //will we have icons for the various items?
    //public Texture2D itemIcon;
    public ItemType itemType;
	public int itemImage;
	//public Sprite toolSprite;
	private GameObject inventoryGui;

    public GameItem(string name, string desc, ItemType type, int image)
    {
        //initialise with constructor
        itemName = name;
        itemDesc = desc;
        itemType = type;
		itemImage = image;

    }

	void Start () {
		player = GameObject.Find("zenobia");
		target = player.GetComponent<CharacterController>();
		inventoryGui = GameObject.FindGameObjectWithTag ("inventory");
	}

	void OnTriggerStay(Collider other) {
		GUI_Manager.message.text = "Press Q to pick up the " + itemName;
		if (other != target) //The colliding object isn't our object
		{
			//Debug.Log("something's wrong");
			return; //don't do anything if it's not our target
		}
		else {
			if(Input.GetKeyDown(KeyCode.Q)){
				player.GetComponent<Player>().CollectItem(this.GetComponent<GameItem>());
				//inventoryGui.GetComponent<inventoryGUI>().sprites.Add(toolSprite);
				Destroy (gameObject, 0);
			}
		}
	}
	void OnTriggerExit(Collider other){
		GUI_Manager.message.text = "Message";
	}
}