using UnityEngine;
using System.Collections;

public class FaultLine : MonoBehaviour
{
    public GameObject triggerObject;
    public ParticleSystem particles;
    public bool useParticles = false;
    private int timer = 0;
    public int particleTime = 30;
    private bool particlesActive = false;
    public AudioClip shoot;
    
    void FixedUpdate(){
        if (particlesActive == true)
            timer++;
        if (timer >= particleTime)
            particles.enableEmission = false;
    }
	public void OnTriggerEnter(){
    GetComponent<AudioSource>().PlayOneShot(shoot);
    Activate ();
    }
	public void Activate()
    {
		Camera.main.GetComponent<TP_Camera>().shake = true;
        if (useParticles == true){
            particles.enableEmission = true;
            timer = 0;
            particlesActive = true;
        }
            
        if (triggerObject.GetComponent<Platform>() != null)
        {
            triggerObject.GetComponent<Platform>().Activate();
        }
        else if (triggerObject.GetComponent<FallingRock>() != null)
        {
            triggerObject.GetComponent<FallingRock>().Fall();
        }
		else if (triggerObject.GetComponent<faultRotateObject>() != null)
		{
			triggerObject.GetComponent<faultRotateObject>().Activate();
		}
        else if (triggerObject.GetComponent<Breakable>() != null)
        {
            triggerObject.GetComponent<Breakable>().BreakApart();
        }
        else
            return;
    }
}