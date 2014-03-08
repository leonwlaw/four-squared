using UnityEngine;
using System.Collections.Generic;

public class Ball : MonoBehaviour {

	bool started = false;
	public Collider[] fields;
	public GameObject splat;
	public Collider lastBumpedCollider;

	List<GameObject> generatedSplats = new List<GameObject>();

	// Use this for initialization
	void Start () {
		Initialize();
	}

	// Update is called once per frame
	void Update () {

	}

	void OnCollisionEnter(Collision collision) {
		if (started) {
			if (IsColliderField(collision.collider)) {
				if (renderer.material.color != collision.collider.renderer.material.color) {
					renderer.material.color = collision.collider.renderer.material.color;
				} else {
					renderer.material.color = Color.red;
				}
			} else {
				// This is a player.

				// Since multiple collisions can occur to the same
				// object multiple times in quick succession, make sure
				// we don't generate too many splats.
				if (lastBumpedCollider != collision.collider) {
					foreach (ContactPoint contact in collision.contacts) {
						// Let's figure out where the collision took
						// place and generate a splat.
						RaycastHit surfaceHit;
						Physics.Raycast(contact.point, Vector3.down, out surfaceHit, 100);

						Vector3 splatPosition = new Vector3(surfaceHit.point.x, 0, surfaceHit.point.z);
						GameObject generatedSplat = (GameObject)Instantiate(splat, splatPosition, Quaternion.identity);
						generatedSplat.GetComponent<Splat>().fall = true;
						generatedSplats.Add(generatedSplat);

						lastBumpedCollider = collision.collider;
					}
				}
			}
		} else {
			started = IsColliderPlayer(collision.collider);
		}
	}

	bool IsColliderField(Collider collider) {
		foreach (Collider field in fields) {
			if (field == collider) {
				return true;
			}
		}
		return false;
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
		// Remove all splats from the screen
		foreach (GameObject splat in generatedSplats) {
			Destroy(splat);
		}
		generatedSplats.Clear();
		lastBumpedCollider = null;

		started = false;
		renderer.material.color = Color.white;

		transform.position = new Vector3(-5f, 3f, 2.5f);
		rigidbody.angularVelocity = Vector3.zero;
		rigidbody.velocity = Vector3.zero;
		rigidbody.rotation = Quaternion.identity;
	}
}
