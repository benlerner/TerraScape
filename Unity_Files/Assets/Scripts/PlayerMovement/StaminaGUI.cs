using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class StaminaGUI : MonoBehaviour {

public Image staminaBar;
public float maxStamina;
public float currentStamina;
    
	// Use this for initialization
	void Start () {
	//staminaBar = GameObject.FindGameObjectWithTag ("stamina").GetComponent<Image>();
    //maxStamina = GameObject.This.GetComponent<Player>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public void UpdateStamina ()
    {
    staminaBar.fillAmount = currentStamina / maxStamina;
    }
}
