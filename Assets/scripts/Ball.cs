using UnityEngine;
using System.Collections;

public class Ball : MonoBehaviour {

	bool started = false;
	public Collider[] fields;

	// Use this for initialization
	void Start () {
		Initialize();
	}

	// Update is called once per frame
	void Update () {

	}

	void OnCollisionEnter(Collision collision) {
		if (started) {
			foreach (Collider field in fields) {
				if (field == collision.collider) {
					if (renderer.material.color != collision.collider.renderer.material.color) {
						renderer.material.color = collision.collider.renderer.material.color;
					} else {
						renderer.material.color = Color.red;
					}
				}
			}
		} else {
			started = IsColliderPlayer(collision.collider);
		}
	}

	bool IsColliderPlayer(Collider collider) {
		foreach (Collider field in fields) {
			if (field == collider) {
				return false;
			}
		}
		return true;
	}

	public void Initialize() {
		started = false;
		renderer.material.color = Color.white;

		transform.position = new Vector3(-5f, 5f, 2.5f);
		rigidbody.angularVelocity = Vector3.zero;
		rigidbody.velocity = Vector3.zero;
		rigidbody.rotation = Quaternion.identity;
	}
}
