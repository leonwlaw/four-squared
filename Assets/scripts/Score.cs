using UnityEngine;
using System.Collections;

public class Score : MonoBehaviour {
	const float colorChangeFactor = 0.2f;
	const float minimumColorDifference = 0.001f;
	const int floorsLayer = 1 << 8;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		GameObject ball = GameObject.Find("Ball");
		RaycastHit floor;
		// Gradually change the color of the indicator to match the
		// floor that the ball is on.
		if (Physics.Raycast(ball.transform.position, Vector3.down, out floor, Mathf.Infinity, floorsLayer)) {
			Color colorDifference = floor.collider.gameObject.renderer.material.color - renderer.material.color;
			Vector3 difference = (Vector3)(Vector4)colorDifference;

			// Make sure colors change by a constant amount.
			difference.Normalize();
			difference *= colorChangeFactor * Time.deltaTime;
			if (difference.magnitude > minimumColorDifference) {
				renderer.material.color += (Color)(Vector4)difference;
			} else {
				renderer.material.color = floor.collider.gameObject.renderer.material.color;
			}
		}
	}
}
