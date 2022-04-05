using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;


public class SpawnFood : MonoBehaviour
{

	public GameObject foodPrefab;
	public Transform SpawnPoint;

	public Hand hand;

	public bool spawnAtStartup = true;

	public bool sendSpawnMessageToParent = false;

	public float scale = 1f;
	private bool spawning = false;

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

		GameObject food = Instantiate(foodPrefab, SpawnPoint.position, transform.rotation) as GameObject;
		food.transform.localScale = new Vector3(scale, scale, scale);


		if (sendSpawnMessageToParent)
		{
			if (transform.parent != null)
			{
				transform.parent.SendMessage("OnFoodSpawned", food, SendMessageOptions.DontRequireReceiver);
			}
		}

		spawning = false;
		return food;
	}

	public void OnTriggerExit(Collider other)
    {
        if (!spawning && (other.gameObject.CompareTag("Topping") || other.gameObject.CompareTag("Rice")))
        {
			Debug.Log("TExit");
			StartCoroutine(WaitSpawnFood());
			spawning = true;
		}
		
	}

	private IEnumerator WaitSpawnFood()
    {
		yield return new WaitForSeconds(2);
		SpawnAFood();
    }

}
