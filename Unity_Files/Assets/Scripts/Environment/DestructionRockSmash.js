var AudioFile : AudioClip;

function Update() {

	if (Input.GetKeyDown (KeyCode.E))
	{
		GetComponent.<AudioSource>().clip = AudioFile;
		GetComponent.<AudioSource>().Play();
		
	}
		
}