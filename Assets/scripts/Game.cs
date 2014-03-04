using UnityEngine;
using System.Collections;

public class Game : MonoBehaviour {
	public GameObject ball;
	public GameObject[] players;

	// Use this for initialization
	void Start () {
		ball.GetComponent<Ball>().Initialize();

		foreach (GameObject player in players) {
			Vector3 fieldTransform = player.GetComponent<PlayerControl>().field.transform.position;
			player.rigidbody.velocity = Vector3.zero;
			player.transform.position = new Vector3(
				fieldTransform.x,
				player.transform.position.y,
				fieldTransform.z);

			player.renderer.material.color = Color.white;
		}
	}

	// Update is called once per frame
	void Update () {
		// Intentionally blank
		if (Input.GetKeyDown(KeyCode.Backspace)) {
			Start();
		}
	}

}
