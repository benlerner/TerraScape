var AudioFile: AudioClip;

function Update(){

	if (Input.GetKeyUp(KeyCode.W))
	{
		GetComponent.<AudioSource>().clip = AudioFile;
		GetComponent.<AudioSource>().Stop();
	}
}