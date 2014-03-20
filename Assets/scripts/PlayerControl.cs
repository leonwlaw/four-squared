﻿using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {

	//Zone Restrictions
	public float xLimit;
	public float x2Limit;
	public float zLimit;
	public float z2Limit;

	float speed = 150f;
	float jumpPower = 15f;

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

		/*
		player 4: -10, 0, -10, 0
		player 3: 0, 10,-10, 0
		player 2: 0, 10, 0, 10
		player 1: -10, 0, 0, 10
		*/

		Vector3 pos = transform.position;
		pos.x = Mathf.Clamp(pos.x,xLimit,x2Limit);
		pos.z = Mathf.Clamp (pos.z, zLimit, z2Limit);

		transform.position = pos;


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

		// Orient the fist to face the direction we move in. angleToLeft
		// is used to distinguish between clockwise and counterclockwise
		// rotation, since Unity's Vector3.Angle method only gives us
		// the smallest angle between two vectors.
		float angle = Vector3.Angle(Vector3.forward, forceTargetDirection);
		float angleToLeft = Vector3.Angle(Vector3.left, forceTargetDirection);
		if (angleToLeft < 90) {
			angle = 360 - angle;
		}

		transform.rotation = Quaternion.Euler(0, angle, 0);

		forceTargetDirection = Vector3.Normalize(forceTargetDirection);
		rigidbody.AddForce(speed * Time.deltaTime * forceTargetDirection, ForceMode.VelocityChange);

		if (Input.GetKeyDown(jump) &&
				Physics.Raycast(transform.position, Vector3.down, transform.localScale.y * 0.5f, floorsLayer)) {
			rigidbody.AddForce(jumpPower * Vector3.up, ForceMode.Impulse);
		}
	}
}
