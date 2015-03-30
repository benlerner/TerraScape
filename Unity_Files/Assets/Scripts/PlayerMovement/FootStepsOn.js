     var AudioFile: AudioClip;
     
     function Update() {
     
     if (Input.GetKeyDown (KeyCode.W))
    {
    GetComponent.<AudioSource>().clip = AudioFile;
    GetComponent.<AudioSource>().Play();
     
    }
     

} 