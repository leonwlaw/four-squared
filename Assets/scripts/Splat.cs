using UnityEngine;
using System.Collections;

public class Splat : MonoBehaviour {
	// Controls activeing for this splat.
	public bool active = false;
	float elapsedTime;
	float activeSpeed = 0.1f;
	float riseTime = 0.5f;
	float maxTime = 10f;

	// Use this for initialization
	void Start () {
		elapsedTime = 0;
	}

	// Update is called once per frame
	void Update () {
		if (active) {
			elapsedTime += Time.deltaTime;
			if (elapsedTime < riseTime) {
				transform.position += activeSpeed * Vector3.up * Time.deltaTime;
			} else if (elapsedTime > maxTime - riseTime) {
				transform.position += activeSpeed * Vector3.down * Time.deltaTime;
			}
			if (elapsedTime > maxTime) {
				Destroy(gameObject);
			}
		}
	}
}
