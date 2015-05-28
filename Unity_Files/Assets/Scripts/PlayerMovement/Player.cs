using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Xml;

public class Player : MonoBehaviour 
{
    //The Player class handles game logic, such as the handling of health, stamina, items, etc.
    public float maxHealth = 100;
    public float currentHealth = 100;
	public Image healthBar;
	public Image staminaBar;
    public float maxStamina = 50;
    public float currentStamina = 50;
	//private float minBarValue;
	//private float maxBarValue;
	//private float healthBarX;
	//private float staminaBarX;
	//private float healthY;
	//private float staminaY;
    public bool blocking;

	public float staminaRegen = 3; //stamina regained per second
	private bool regenStaminaNow = true; //don't regenerate stamina when it's being used

    public XmlDocument journalXML;

    public List<XmlNode> journalSrc = new List<XmlNode>();
    public List<GameItem> inventory = new List<GameItem>();
    public List<GameItem> journal = new List<GameItem>();


    //The currently selected inventory item; for an empty inventory it is set to -1.
    public int selectedIndex = 0;
	public int forIndex = 0;
	public int backIndex = 0;

    public static Player instance;
	private ThirdPersonController controller;
	private GameObject inventoryObj;
	private inventoryGUI inventoryGui;
	private ImpactReceiver impactReciever;

    void Awake()
    {
        instance = this;
		controller = GetComponent<ThirdPersonController> ();
		inventoryObj = GameObject.FindGameObjectWithTag ("inventory");
		inventoryGui = inventoryObj.GetComponent<inventoryGUI>();
		healthBar = GameObject.FindGameObjectWithTag ("health").GetComponent<Image>();
		staminaBar = GameObject.FindGameObjectWithTag ("stamina").GetComponent<Image>();
		impactReciever = GetComponent<ImpactReceiver> ();
		//healthBarX = healthBar.localPosition.x;
		//staminaBarX = staminaBar.localPosition.x;
		//maxBarValue = healthBar.localPosition.y;
		//minBarValue = healthBar.localPosition.y - healthBar.rect.height;
        journalXML = new XmlDocument();
        TextAsset filename = Resources.Load("journalEntries") as TextAsset;
        journalXML.LoadXml(filename.text);
		selectedIndex = 0;
		forIndex = 0;
		backIndex = 0;
        foreach (XmlNode node in journalXML.DocumentElement.ChildNodes)
        {
            journalSrc.Add(node);
        }
		inventoryGui.setImage = inventory[selectedIndex].itemImage;
		inventoryGui.forImage = inventory[forIndex].itemImage;
		inventoryGui.backImage = inventory [backIndex].itemImage;
		CycleItems (true);
    }

	void Update()
	{
		if (regenStaminaNow)
		{
			currentStamina += staminaRegen * Time.deltaTime;
			if (currentStamina > maxStamina)
			{
				currentStamina = maxStamina;
			}
		}
        //Health and Stamina Bars
        healthBar.fillAmount = currentHealth / maxHealth;
        {
        staminaBar.fillAmount = currentStamina / maxStamina;
        }
		//GUI_Manager.stamina.text = "Stamina: " + Mathf.Floor(currentStamina);
		//GUI_Manager.health.text = "Health: " + currentHealth;
		regenStaminaNow = true;
		if (selectedIndex > -1 && inventory.Count > 0)
		{
			GameItem item = inventory[selectedIndex];
			if (item.itemName == "Laser")
			{
				controller.toolInUse = 1;
			}
			else if (item.itemName == "Shield")
			{
				controller.toolInUse = 2;
			}
			else if (item.itemName == "Snapper")
			{
				controller.toolInUse = 3;
			}
			else {
				controller.toolInUse = 0;
			}

		}
		else{
			controller.toolInUse = 0;
		}
		//healthY = MapValues (currentHealth, 0, maxHealth, minBarValue, maxBarValue);
		//staminaY = MapValues (currentStamina, 0, maxStamina, minBarValue, maxBarValue);
		//float staminaY = MapValues (currentStamina, 0, maxStamina, maxBarValue, minBarValue);
		//healthBar.transform.localPosition = new Vector3 (healthBarX, healthY);
		//staminaBar.transform.localPosition = new Vector3 (staminaBarX, staminaY);
	}

    
	
	private float MapValues(float x, float inMin, float inMax, float outMin, float outMax){
		return(x - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
	}


	//try to use staminaBurn amount of stamina, return false if player doesn't have enough
	public bool useStamina(float staminaBurn)
	{

		if (staminaBurn > currentStamina)
			return false;
		else 
		{
			currentStamina -= staminaBurn;
			regenStaminaNow = false;//using stamina this frame, dont regen
			return true;
		}
		//GUI_Manager.stamina.text = "Stamina: " + Mathf.Floor(currentStamina);
	}

//public void UpdateStamina ()
//{
//    staminaBar.fillAmount = currentStamina / maxStamina;
//}
    
   // public void UpdateHealth ()
//{
//    staminaBar.fillAmount = currentHealth / maxHealth;
//}
	//causes Zenobia to take damage and be knocked in forceDirection
	public void TakeImpactDamage (float dmgAmt, Vector3 forceDirection, float forceMagnitude)
	{
		TakeDamage (dmgAmt);
		if (forceMagnitude > 0 && currentHealth > 0)
		{
			impactReciever.AddImpact(forceDirection, forceMagnitude);
		}
	}

    void Die()
    {
        //restart the level
		impactReciever.StopImpact ();
		controller.respawn ();
		currentHealth = maxHealth;
		currentStamina = maxStamina;
    }
    
public void TakeDamage(float dmgAmt)
    {
        if (blocking = true && currentStamina > 0){
            currentStamina -= dmgAmt;
        }
            
        else
        //Reduces our current health and updates game information
        currentHealth -= dmgAmt;
        //GUI_Manager.health.text = "Health: " + currentHealth;
		//Debug.Log ("Current health is " + currentHealth);
        if (currentHealth <= 0)
        {
            Die();
        }
    }
    
    public void CollectItem(GameItem item)
    {
        //Picks up the item that TP_Controller is intersecting, and add it to the inventory.
        //GUI_Manager.message.text = "Collected a(n): " + item.itemName + "!";
        if (item.itemType == GameItem.ItemType.Document)
        {
            int journalIndex = int.Parse(item.itemName) - 1;
            item.itemDesc = journalSrc[journalIndex].InnerText;
            item.itemName = journalSrc[journalIndex].Attributes.GetNamedItem("name").InnerText;
            //GUI_Manager.message.text = item.itemDesc;
            journal.Add(item);
        }
        else
        {
            inventory.Add(item);
			forIndex = 0;
			backIndex = selectedIndex;
            selectedIndex = inventory.Count - 1;
            //GUI_Manager.selectedItem.text = "Current item: " + inventory[selectedIndex].itemName;
			inventoryGui.setImage = inventory[selectedIndex].itemImage;
        }
		inventoryGui.setImage = inventory[selectedIndex].itemImage;
		inventoryGui.forImage = inventory[forIndex].itemImage;
		inventoryGui.backImage = inventory [backIndex].itemImage;
    }

    public void UseItem(int itemID)
    {
        //Use the item at the given index, usually selectedIndex

        //Do nothing if there is no item to use
        if (itemID < 0 || inventory.Count == 0)
            return;

        //Get the GameItem object at this index
        GameItem useItem = inventory[itemID];

        if (useItem.itemType == GameItem.ItemType.Consumable)
        {
            //The item is for one-time use: use the item, heal, whatever
            //GUI_Manager.message.text = "Used the " + useItem.itemName + "!";
            selectedIndex = itemID - 1;
            //if (selectedIndex < 0)
                //GUI_Manager.selectedItem.text = "Current Item: None";
            //else
                //GUI_Manager.selectedItem.text = "Current Item: " + inventory[selectedIndex].itemName;
            inventory.RemoveAt(itemID);
        }
        else if (useItem.itemType == GameItem.ItemType.Tool)
        {
            //The item can be used more than once
            if (useItem.itemName == "Laser")
            {
                if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
                {
                    //GUI_Manager.message.text = "Laser can create pitfalls.";
                    controller.trap();
                }
                else
                {
                    //GUI_Manager.message.text = "Laser can destroy blocks.";
					controller.laser();
                }
            }
            else if (useItem.itemName == "Snapper")
            {
				if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
				{
					//GUI_Manager.message.text = "Snapper can snap.";
					controller.snap();
				}
				else
				{
					//GUI_Manager.message.text = "Snapper can snap.";
					controller.snap();
				}
            }
            else if (useItem.itemName == "Shield")
            {
				if (controller.isSliding)
					return;
				else if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
				{
					//GUI_Manager.message.text = "Shield can be used to slide.";
					controller.slide();
					Debug.Log ("Player is saying slide");
				}
				else
				{
					//GUI_Manager.message.text = "Shield can block.";
					controller.block();
				}
            }
        }
    }

    public void CycleItems(bool left)
    {
        //change the currently selected item and update the GUI
        if (inventory.Count == 0)
            return;
		GameItem useItem = inventory[selectedIndex];
        if (left)
        {
			forIndex = selectedIndex;
            selectedIndex--;
            if (selectedIndex < 0)
                selectedIndex = inventory.Count - 1;
			backIndex = selectedIndex - 1;
			if (backIndex < 0)
				backIndex = inventory.Count - 1;
        }
        else
        {
			backIndex = selectedIndex;
            selectedIndex++;
            if (selectedIndex >= inventory.Count)
                selectedIndex = 0;
			forIndex = selectedIndex + 1;
			if (forIndex >= inventory.Count)
				forIndex = 0;
        }
        //GUI_Manager.selectedItem.text = "Current item: " + inventory[selectedIndex].itemName;
		inventoryGui.setImage = inventory[selectedIndex].itemImage;
		inventoryGui.forImage = inventory[forIndex].itemImage;
		inventoryGui.backImage = inventory [backIndex].itemImage;
    }
}
