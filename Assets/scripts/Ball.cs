using UnityEngine;
using System.Collections.Generic;


public class Ball : MonoBehaviour {

	public static AudioClip sound1;
	public static AudioClip sound2;
	public static AudioClip sound3;
	public static AudioClip sound4;
	public static AudioClip sound5;

	public AudioClip[] gameSounds;

	Vector3 initialPosition = new Vector3(-5f, 3f, 2.5f);

	public static int gameMode = 1;
	//public AudioSource ballSound = gameObject.Ad;
	bool started = false;
	public Collider[] fields;
	public GameObject splat;
	public Collider lastBumpedCollider;

	List<GameObject> generatedSplats = new List<GameObject>();

	//Pear Audio
	void PearSound(){
		//Save Audio Just In Case
		//AudioClip temp = gameObject.GetComponent<AudioSource> ().clip;
		audio.clip = sound1;
		audio.Play ();
	}

	void AppleSound(){
		//Save Audio Just In Case
		//AudioClip temp = gameObject.GetComponent<AudioSource> ().clip;
		audio.clip = sound3;
		audio.Play ();
	}

	void SplatSound(){
		//Save Audio Just In Case
		//AudioClip temp = gameObject.GetComponent<AudioSource> ().clip;
		audio.clip = sound5;
		audio.Play ();
	}

	void GrapeSound(){
		audio.clip = sound2;
		audio.Play ();
	}

	void WatermelonSound(){
		//Save Audio Just In Case
		//AudioClip temp = gameObject.GetComponent<AudioSource> ().clip;
		audio.clip = sound4;
		//Debug.Log (sound1.name.ToString ());
		audio.Play ();
	}

	// Use this for initialization
	void Start () {
		Initialize();

		sound1 = Resources.Load ("audio/Pear Thump", typeof(AudioClip)) as AudioClip;
		sound2 = Resources.Load ("audio/Grape Bunch Thump", typeof(AudioClip)) as AudioClip;
		sound3 = Resources.Load ("audio/Apple Thump", typeof(AudioClip)) as AudioClip;
		sound4 = Resources.Load ("audio/Watermelon Thump", typeof(AudioClip)) as AudioClip;
		sound5 = Resources.Load ("audio/Fruit Splat", typeof(AudioClip)) as AudioClip;

		Debug.Log (sound1.name);		

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

		SplatSound ();	

		//Player 1 Initiated the Hit Change the Ball to a Pear
		if (gameMode == 1 && !started) {
			//Play Splat
			//AudioSource.PlayClipAtPoint(gameSounds[1],Vector3.zero);
			PearSound();
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
		if (started) {
			if (gameMode == 1){

				//Player 1 Hit the Ball to Change to a Pear
				if(collision.gameObject.name == "Player 1"){
					//Get the Pear
					GameObject ballPear = GameObject.Find("Pear");
					PearSound();
					//Swap Mesh
					Mesh initialMesh;
					Mesh swapMesh;
					initialMesh = gameObject.GetComponent<MeshFilter>().mesh;
					swapMesh = ballPear.GetComponent<MeshFilter>().mesh;
					gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
					//Swap Texture
					Texture swapTexture;
					gameObject.transform.localScale = new Vector3(1,1,1);
					swapTexture = ballPear.renderer.material.mainTexture;
					gameObject.renderer.material.mainTexture = swapTexture;


				}
				//Player 2 Hit the Ball to Change to a Strawberry
				else if (collision.gameObject.name == "Player 2"){
					GameObject ballGrapes = GameObject.Find("Grapes");
					GrapeSound();
					//Swap Mesh
					Mesh initialMesh;
					Mesh swapMesh;
					initialMesh = gameObject.GetComponent<MeshFilter>().mesh;
					swapMesh = ballGrapes.GetComponent<MeshFilter>().mesh;
					gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
					//Swap Texture
					Texture swapTexture;
					gameObject.transform.localScale = new Vector3(.8f,.8f,.8f);
					swapTexture = ballGrapes.renderer.material.mainTexture;
					gameObject.renderer.material.mainTexture = swapTexture;
				}
				//Player 3 Hit the Ball to Change to an Apple
				else if (collision.gameObject.name == "Player 3"){
					GameObject ballApple = GameObject.Find("Apple");
					AppleSound();
					//Swap Mesh
					Mesh initialMesh;
					Mesh swapMesh;
					initialMesh = gameObject.GetComponent<MeshFilter>().mesh;
					swapMesh = ballApple.GetComponent<MeshFilter>().mesh;
					gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
					//Swap Texture
					Texture swapTexture;
					gameObject.transform.localScale = new Vector3(3,3,3);
					swapTexture = ballApple.renderer.material.mainTexture;
					gameObject.renderer.material.mainTexture = swapTexture;
				}
				//Player 4 Hit the Ball to Change to a Watermelon
				else if (collision.gameObject.name == "Player 4"){
					GameObject ballWatermelon = GameObject.Find("Watermelon");
					WatermelonSound();
					//Swap Mesh
					Mesh initialMesh;
					Mesh swapMesh;
					initialMesh = gameObject.GetComponent<MeshFilter>().mesh;
					swapMesh = ballWatermelon.GetComponent<MeshFilter>().mesh;
					gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
					//Swap Texture
					Texture swapTexture;
					gameObject.transform.localScale = new Vector3(0.5f,0.5f,0.5f);

					swapTexture = ballWatermelon.renderer.material.mainTexture;
					gameObject.renderer.material.mainTexture = swapTexture;
				}
			}

			if (IsColliderPlayer(collision.collider)) {
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
						generatedSplat.GetComponent<Splat>().active = true;
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
