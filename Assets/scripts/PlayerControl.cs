using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {
	float speed = 150f;
	float jumpPower = 15f;
	float ROTATION_RESOLUTION = 30f;

	const int floorsLayer = 1 << 8;

	public GameObject field;

	// Keyboard input for the character
	public KeyCode up;
	public KeyCode down;
	public KeyCode left;
	public KeyCode right;
	public KeyCode jump;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		Vector3 forceTargetDirection = new Vector3();

		if (Input.GetKey(up)) {
			forceTargetDirection += Vector3.forward;
		}

		if (Input.GetKey(down)) {
			forceTargetDirection -= Vector3.forward;
		}

		if (Input.GetKey(left)) {
			forceTargetDirection -= Vector3.right;
		}

		if (Input.GetKey(right)) {
			forceTargetDirection += Vector3.right;
		}

		// if (Input.GetKeyDown(inputs[4])) {
		// 	transform.Rotate(ROTATION_RESOLUTION * Vector3.up);
		// }

		float angle = Vector3.Angle(Vector3.right, forceTargetDirection);
		transform.rotation = Quaternion.Euler(0, angle, 0);

		forceTargetDirection = Vector3.Normalize(forceTargetDirection);
		rigidbody.AddForce(speed * Time.deltaTime * forceTargetDirection, ForceMode.VelocityChange);

		if (Input.GetKeyDown(jump) &&
				Physics.Raycast(transform.position, Vector3.down, transform.localScale.y * 0.5f, floorsLayer)) {
			rigidbody.AddForce(jumpPower * Vector3.up, ForceMode.Impulse);
		}
	}
}
