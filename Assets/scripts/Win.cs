using UnityEngine;
using System.Collections;

public class Win : MonoBehaviour {
	public static Material loserMaterial;
	GameObject glove;
	float angle = 0;

	// Use this for initialization
	void Start () {
		glove = GameObject.Find("BoxingGlove");
		if (loserMaterial != null) {
			glove.renderer.material = loserMaterial;
		}
	}

	// Update is called once per frame
	void Update () {
		glove.transform.rotation *= Quaternion.Euler(0, 30 * Time.deltaTime, 0);

		if (Input.GetKeyDown(KeyCode.Space)) {
			Application.LoadLevel("game");
		}
	}
}
