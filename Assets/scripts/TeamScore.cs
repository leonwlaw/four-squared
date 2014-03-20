using UnityEngine;
using System.Collections;

public class TeamScore : MonoBehaviour {
	public GameObject player1;
	public GameObject player2;


	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		int sum = player1.gameObject.GetComponent<Points> ().score + player2.gameObject.GetComponent<Points> ().score;
		GetComponent<TextMesh>().text = "Team Score: " + sum;
	}
}
