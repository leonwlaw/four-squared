using UnityEngine;
using System.Collections;

public class Points : MonoBehaviour {

	public int score = 0;

	public void IncrementScore(string player){

			score+= 1;
	}


	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
			
			GetComponent<TextMesh>().text = score.ToString();

	}
}
