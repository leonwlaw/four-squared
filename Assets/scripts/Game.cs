using UnityEngine;
using System.Collections;

public class Game : MonoBehaviour {
	public GameObject ball;
	public GameObject[] players;
	public static bool started = false;
	public static GameMode mode = GameMode.Basic;

	// Keyboard input for toggle
	public KeyCode toggle1;
	public KeyCode toggle2;
	public KeyCode toggle3;
	public KeyCode toggle4;

	public enum GameMode {
		Basic,
		FruitChange,
		ArmExtend,
		Splats,
	};

	// Use this for initialization
	void Start () {
		mode = GameMode.Basic;
		started = false;
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
		if (!Game.started) {
			if (Input.GetKeyDown(toggle1)) {
				mode = GameMode.FruitChange;
			}
			else if (Input.GetKeyDown(toggle2)) {
				mode = GameMode.ArmExtend;
			}
			else if (Input.GetKeyDown(toggle3)) {
				mode = GameMode.Splats;
			}
			else if (Input.GetKeyDown(toggle4)) {
			}
		}
	}

}
