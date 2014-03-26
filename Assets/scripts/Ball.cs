using UnityEngine;
using System.Collections.Generic;


public class Ball : MonoBehaviour {

	public static float PENALTY_PERIOD = 1.0f;

	//Last Player who hit the ball
	public GameObject lastPlayerHit;

	public static AudioClip pearSound;
	public static AudioClip grapeSound;
	public static AudioClip appleSound;
	public static AudioClip watermelonSound;
	public static AudioClip splatSound;

	public AudioClip[] gameSounds;

	Vector3 initialPosition = new Vector3(-5f, 3f, 2.5f);

	public Collider[] fields;
	public Collider[] players = new Collider[4];
	public GameObject splat;
	public Collider lastBumpedCollider;

	List<GameObject> generatedSplats = new List<GameObject>();

	string PLAYER_1 = "Player 1";
	string PLAYER_2 = "Player 2";
	string PLAYER_3 = "Player 3";
	string PLAYER_4 = "Player 4";

	float timeSinceLastPenalty = 0;
	
	// Use this for initialization
	void Start () {
		GameObject[] playersObjects = GameObject.FindGameObjectsWithTag("Player");
		for (int i = 0; i < playersObjects.Length; ++i) {
			players[i] = playersObjects[i].collider;
		}
		Initialize();

		pearSound = Resources.Load ("audio/Pear Thump", typeof(AudioClip)) as AudioClip;
		grapeSound = Resources.Load ("audio/Grape Bunch Thump", typeof(AudioClip)) as AudioClip;
		appleSound = Resources.Load ("audio/Apple Thump", typeof(AudioClip)) as AudioClip;
		watermelonSound = Resources.Load ("audio/Watermelon Thump", typeof(AudioClip)) as AudioClip;
		splatSound = Resources.Load ("audio/Fruit Splat", typeof(AudioClip)) as AudioClip;

		lastPlayerHit = GameObject.Find ("Player 1");

		timeSinceLastPenalty = 0;

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
		if (Input.GetKey (KeyCode.Alpha0)) {
			rigidbody.velocity = Vector3.zero;
		}

		if (Game.started) {
			timeSinceLastPenalty += Time.deltaTime;
			if (timeSinceLastPenalty > PENALTY_PERIOD) {
				RaycastHit surfaceHit;
				Physics.Raycast(transform.position, Vector3.down, out surfaceHit, 100);
				surfaceHit.collider.gameObject.GetComponent<Floor>().scoreDisplay.GetComponent<Points>().score--;
				timeSinceLastPenalty = 0;

				int playerScore = surfaceHit.collider.gameObject.GetComponent<Floor>().scoreDisplay.GetComponent<Points>().score;
				if (playerScore < 0) {
					Win.loserMaterial = surfaceHit.collider.gameObject.renderer.material;
					Application.LoadLevel("victory");
				}
			}
		}
	}

	void OnCollisionEnter(Collision collision) {
		// NEED AN IF STATMENT ON GAME MODE
		if (Game.mode == Game.GameMode.Splats) {
			audio.clip = splatSound;
			audio.Play ();
		}

		string[] playernames = {PLAYER_1, PLAYER_2, PLAYER_3, PLAYER_4};
		foreach (string name in playernames) {
			if (name == collision.gameObject.name) {
				audio.clip =
					(name == PLAYER_1) ? pearSound:
					(name == PLAYER_2) ? appleSound:
					(name == PLAYER_3) ? grapeSound:
						watermelonSound;

				audio.Play();
			}
		}

		if (!(Game.started)) {
			if (Game.mode == Game.GameMode.Basic) {
				SwapBaseFruit();
			}
			else if (Game.mode == Game.GameMode.FruitChange) {
				SwapFruit();
			}
			else if (Game.mode == Game.GameMode.Splats) {
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

			Game.started = IsColliderPlayer(collision.collider);
			Debug.Log(Game.started);
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
		foreach (Collider player in players) {
			if (player == collider) {
				return true;
			}
		}
		return false;
	}

	public void SwapBaseFruit() {
		//Get Base Fruits (MODE 0)
		GameObject ball =
			(lastPlayerHit.name == PLAYER_1) ? GameObject.Find("orangeball"):
				(lastPlayerHit.name == PLAYER_2) ? GameObject.Find("plumball"):
				(lastPlayerHit.name == PLAYER_3) ? GameObject.Find("blueberryball"):
				GameObject.Find("limeball");
		
		//Swap Mesh
		Mesh swapMesh;
		swapMesh = ball.GetComponent<MeshFilter>().mesh;
		gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
		//Swap Texture
		Texture swapTexture;
		swapTexture = ball.renderer.material.mainTexture;
		gameObject.renderer.material.mainTexture = swapTexture;
	}

	public void SwapFruit() {
		//Get fruitChange (MODE 1)
		GameObject ball =
			(lastPlayerHit.name == PLAYER_1) ? GameObject.Find("Pear"):
				(lastPlayerHit.name == PLAYER_2) ? GameObject.Find("Apple"):
				(lastPlayerHit.name == PLAYER_3) ? GameObject.Find("Grapes"):
				GameObject.Find("Watermelon");

		//Swap Mesh
		Mesh swapMesh;
		swapMesh = ball.GetComponent<MeshFilter>().mesh;
		gameObject.GetComponent<MeshFilter>().mesh = swapMesh;
		//Swap Texture
		Texture swapTexture;
		swapTexture = ball.renderer.material.mainTexture;
		gameObject.renderer.material.mainTexture = swapTexture;
	}
	
	public void Initialize() {
		// Remove all splats from the screen
		foreach (GameObject splat in generatedSplats) {
			Destroy(splat);
		}
		generatedSplats.Clear();
		lastBumpedCollider = null;
		lastPlayerHit = GameObject.Find ("Player 1");

		Game.started = false;
		renderer.material.color = Color.white;

		transform.position = initialPosition;
		rigidbody.angularVelocity = Vector3.zero;
		rigidbody.velocity = Vector3.zero;
		rigidbody.rotation = Quaternion.identity;
	}
}
