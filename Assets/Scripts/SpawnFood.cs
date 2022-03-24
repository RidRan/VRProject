using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;


public class SpawnFood : MonoBehaviour
{

	public GameObject foodPrefab;

	public Hand hand;

	public bool spawnAtStartup = true;

	public bool sendSpawnMessageToParent = false;

	public float scale = 1f;

	// Start is called before the first frame update
	void Start()
    {
		if (foodPrefab == null)
		{
			return;
		}

		if (spawnAtStartup)
		{
			SpawnAFood();
		}
	}

    // Update is called once per frame
    void Update()
    {
        
    }

	public GameObject SpawnAFood()
	{
		if (foodPrefab == null)
		{
			return null;
		}

		GameObject food = Instantiate(foodPrefab, transform.position, transform.rotation) as GameObject;
		food.transform.localScale = new Vector3(scale, scale, scale);


		if (sendSpawnMessageToParent)
		{
			if (transform.parent != null)
			{
				transform.parent.SendMessage("OnFoodSpawned", food, SendMessageOptions.DontRequireReceiver);
			}
		}


		return food;
	}

	public void OnTriggerEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Topping"))
        {
			SpawnAFood();
		}
		
	}

}
