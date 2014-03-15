using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {
	float speed = 150f;
	float jumpPower = 15f;
	float ROTATION_RESOLUTION = 30f;

	const int floorsLayer = 1 << 8;

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

		// if (Input.GetKeyDown(inputs[4])) {
		// 	transform.Rotate(ROTATION_RESOLUTION * Vector3.up);
		// }

		float angle = Vector3.Angle(Vector3.right, forceTargetDirection);
		transform.rotation = Quaternion.Euler(0, angle, 0);

		forceTargetDirection = Vector3.Normalize(forceTargetDirection);
		rigidbody.AddForce(speed * Time.deltaTime * forceTargetDirection, ForceMode.VelocityChange);

		if (Input.GetKeyDown(inputs[5]) &&
				Physics.Raycast(transform.position, Vector3.down, transform.localScale.y * 0.5f, floorsLayer)) {
			rigidbody.AddForce(jumpPower * Vector3.up, ForceMode.Impulse);
		}
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
}
