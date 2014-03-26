using UnityEngine;
using System.Collections;

public class Points : MonoBehaviour {

	public static int INITIAL_SCORE = 20;
	public int score;

	// Use this for initialization
	public void Start () {
		score = INITIAL_SCORE;
	}

	// Update is called once per frame
	void Update () {
			GetComponent<TextMesh>().text = score.ToString();
	}
}
