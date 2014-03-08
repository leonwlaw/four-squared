using UnityEngine;
using System.Collections;

public class Splat : MonoBehaviour {
	// Controls falling for this splat.
	public bool fall = false;
	float fallSpeed = 0.1f;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		if (fall) {
			transform.position += fallSpeed * Vector3.down * Time.deltaTime;
			if (transform.position.y < -0.5f) {
				Destroy(gameObject);
			}
		}
	}
}
