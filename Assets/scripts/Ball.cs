using UnityEngine;
using System.Collections.Generic;


public class Ball : MonoBehaviour {

	Vector3 initialPosition = new Vector3(-5f, 3f, 2.5f);

	public static int gameMode = 1;

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
		// Slight dampening if the ball bounces too high due to floating
		// point arithmetic rounding errors.
		if (transform.position.y > initialPosition.y) {
			rigidbody.velocity = new Vector3(
				rigidbody.velocity.x,
				rigidbody.velocity.y * (1 - 0.8f * Time.deltaTime),
				rigidbody.velocity.z);
		}
	}

	void OnCollisionEnter(Collision collision) {
		if (started) {
			if (gameMode == 1){
				//Player 1 Hit the Ball to Change to a Pear
				if(collision.gameObject.name == "Player 1"){
					//Get the Pear
					GameObject ballPear = GameObject.Find("Pear");

					//Swap Mesh
					Mesh initialMesh;
					Mesh swapMesh;
					initialMesh = gameObject.GetComponent<MeshFilter>().mesh;
					swapMesh = ballPear.GetComponent<MeshFilter>().mesh;
					gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
					//Swap Texture
					Texture swapTexture;
					swapTexture = ballPear.renderer.material.mainTexture;
					gameObject.renderer.material.mainTexture = swapTexture;


				}
				//Player 2 Hit the Ball to Change to an Apple
				else if (collision.gameObject.name == "Player 2"){
				
				}
				//Player 3 Hit the Ball to Change to an Watermelon
				else if (collision.gameObject.name == "Player 3"){
				
				}
				//Player 4 Hit the Ball to Change to a bunch of Grapes
				else if (collision.gameObject.name == "Player 4"){
				
				}
			}

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

		} 

		else {
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

		transform.position = initialPosition;
		rigidbody.angularVelocity = Vector3.zero;
		rigidbody.velocity = Vector3.zero;
		rigidbody.rotation = Quaternion.identity;
	}
}
