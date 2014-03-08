using UnityEngine;
using System.Collections;


public class Ball : MonoBehaviour {

	public static int gameMode = 1;

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


			foreach (Collider field in fields) {
				if (field == collision.collider) {
					if (renderer.material.color != collision.collider.renderer.material.color) {
						renderer.material.color = collision.collider.renderer.material.color;
					} else {
						renderer.material.color = Color.red;
					}
				}
			}

		} 

		else {
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

		transform.position = new Vector3(-5f, 3f, 2.5f);
		rigidbody.angularVelocity = Vector3.zero;
		rigidbody.velocity = Vector3.zero;
		rigidbody.rotation = Quaternion.identity;
	}
}
