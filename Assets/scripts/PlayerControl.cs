using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {
	float speed = 150f;
	float ROTATION_RESOLUTION = 30f;

	public GameObject field;
	public Collider[] fields;
	public GameObject[] targets;

	public Transform ball;

	// Keyboard input for the character
	public KeyCode[] inputs;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		// Follow the ball's bounce
		transform.position = new Vector3(transform.position.x, ball.transform.position.y, transform.position.z);

		Vector3 forceTargetDirection = new Vector3();

		if (Input.GetKey(inputs[0])) {
			forceTargetDirection += Vector3.forward;
		}

		if (Input.GetKey(inputs[1])) {
			forceTargetDirection -= Vector3.forward;
		}

		if (Input.GetKey(inputs[2])) {
			forceTargetDirection -= Vector3.right;
		}

		if (Input.GetKey(inputs[3])) {
			forceTargetDirection += Vector3.right;
		}

		if (Input.GetKeyDown(inputs[4])) {
			transform.Rotate(ROTATION_RESOLUTION * Vector3.up);
		}

		if (Input.GetKeyDown(inputs[5])) {
			transform.Rotate(-ROTATION_RESOLUTION * Vector3.up);
		}

		forceTargetDirection = Vector3.Normalize(forceTargetDirection);
		rigidbody.AddForce(speed * Time.deltaTime * forceTargetDirection, ForceMode.VelocityChange);
	}

	void FixedUpdate() {


	}

	bool IsField(Collider collider) {
		foreach (Collider field in fields) {
			if (field == collider) {
				return true;
			}
		}
		return false;
	}

	void OnCollisionEnter(Collision collision) {
		if (IsField(collision.collider) && collision.collider != field.collider) {
			renderer.material.color = Color.red;
		}
	}
}
