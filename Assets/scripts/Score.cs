using UnityEngine;
using System.Collections;

public class Score : MonoBehaviour {
	const float colorChangeFactor = 0.2f;
	const float minimumColorDifference = 0.0001f;
	const int floorsLayer = 1 << 8;

	GameObject ball;
	GameObject[] floors;

	// Use this for initialization
	void Start () {
		ball = GameObject.Find("Ball");
		floors = GameObject.FindGameObjectsWithTag ("floor");
	}
	
	// Update is called once per frame
	void Update () {

		RaycastHit floorHit;
		// Gradually change the color of the indicator to match the
		// floor that the ball is on.
		if (Physics.Raycast(ball.transform.position, Vector3.down, out floorHit, Mathf.Infinity, floorsLayer)) {
			Color colorDifference = floorHit.collider.gameObject.renderer.material.color - renderer.material.color;
			Vector3 difference = (Vector3)(Vector4)colorDifference;

			// Make sure colors change by a constant amount.
			difference.Normalize();
			difference *= colorChangeFactor * Time.deltaTime;
			//Debug.Log (difference.magnitude.ToString());
			if (difference.magnitude > minimumColorDifference) {
				renderer.material.color += (Color)(Vector4)difference;
			} else {
				renderer.material.color = floorHit.collider.gameObject.renderer.material.color;
			}
		}

	}
}
