using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BinManagerAdvance : MonoBehaviour
{
	private TicketManager ticketManager;

	public GameObject frontPrefab;
	public GameObject backPrefab;

	public string frontTag;
	public string backTag;

	public Transform frontSpawnPoint;
	public Transform backSpawnPoint;

	public float frontScale;
	public float backScale;

	public bool spawnAtStartup = true;
	private bool spawningFront = false;
	private bool spawningBack = false;
	public bool sendSpawnMessageToParent = false;

	public bool spawnFront = true;
	public bool spawnBack = true;

	// Start is called before the first frame update
	void Start()
	{
		spawnFront = true;
		spawnBack = true;

		ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();

		if (frontPrefab == null || backPrefab == null)
		{
			return;
		}

		if (spawnFront)
		{
			if (ticketManager.data.totalTickets > 5)
			{
				SpawnAnObject(frontPrefab, frontSpawnPoint, frontScale, true);
				spawnFront = false;
			}
		}
		
		if (spawnBack)
		{
			if (ticketManager.data.totalTickets > 10)
			{
				SpawnAnObject(backPrefab, backSpawnPoint, backScale, false);
				spawnBack = false;
			}
			
		}
	}

	// Update is called once per frame
	void Update()
	{
		


	}

	public GameObject SpawnAnObject(GameObject prefab, Transform spawnPoint, float scale, bool front = true)
	{
		if (prefab == null)
		{
			return null;
		}

		GameObject spawnedObject = Instantiate(prefab, spawnPoint.position, spawnPoint.rotation) as GameObject;
		spawnedObject.transform.localScale = new Vector3(scale, scale, scale);


		if (sendSpawnMessageToParent)
		{
			if (transform.parent != null)
			{
				transform.parent.SendMessage("OnFoodSpawned", spawnedObject, SendMessageOptions.DontRequireReceiver);
			}
		}

		if (front)
		{
			spawningFront = false;
		}
		else
		{
			spawningBack = false;
		}

		return spawnedObject;
	}

	public void OnTriggerExit(Collider other)
	{
		if (!spawningFront && other.gameObject.CompareTag(frontTag))
		{
			StartCoroutine(WaitSpawnAnObject(frontPrefab, frontSpawnPoint, frontScale, true));
			spawningFront = true;
		}
		else if (!spawningBack && other.gameObject.CompareTag(backTag))
		{
			StartCoroutine(WaitSpawnAnObject(backPrefab, backSpawnPoint, backScale, false));
			spawningBack = true;
		}

	}

	private IEnumerator WaitSpawnAnObject(GameObject prefab, Transform spawnPoint, float scale, bool front = true)
	{
		yield return new WaitForSeconds(1.25f);
		SpawnAnObject(prefab, spawnPoint, scale, front);
	}
}
