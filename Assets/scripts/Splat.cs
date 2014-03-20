using UnityEngine;
using System.Collections;

public class Splat : MonoBehaviour {
	public bool animate = false;
	float elapsedTime;
	float animateSpeed = 0.1f;
	float riseTime = 0.5f;
	float maxTime = 10f;

	// Use this for initialization
	void Start () {
		elapsedTime = 0;
	}

	// Update is called once per frame
	void Update () {
		if (animate) {
			elapsedTime += Time.deltaTime;
			if (elapsedTime < riseTime) {
				transform.position += animateSpeed * Vector3.up * Time.deltaTime;
			} else if (elapsedTime > maxTime - riseTime) {
				transform.position += animateSpeed * Vector3.down * Time.deltaTime;
			}
			if (elapsedTime > maxTime) {
				Destroy(gameObject);
			}
		}
	}
}
