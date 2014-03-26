using UnityEngine;
using System.Collections;

public class Instructions : MonoBehaviour {

	public KeyCode keyToPush; // assign in inspector
	public string levelToLoad; // assign in inspector
	float elapsed;

	// Use this for initialization
	void Start () {
		elapsed = 0;
	}
	
	// Update is called once per frame
	void Update () {
		elapsed += Time.deltaTime;
		if (elapsed > 0.1f && Input.GetKeyDown (keyToPush)) {
			Debug.Log (levelToLoad);
			Application.LoadLevel (levelToLoad);
			elapsed = 0;
		}
	}
}
