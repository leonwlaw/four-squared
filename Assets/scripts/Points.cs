﻿using UnityEngine;
using System.Collections;

public class Points : MonoBehaviour {

	public int score = 0;

	// Use this for initialization
	void Start () {
		score = 0;
	}

	// Update is called once per frame
	void Update () {
			GetComponent<TextMesh>().text = score.ToString();
	}
}
