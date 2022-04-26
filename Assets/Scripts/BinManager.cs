using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BinManager : MonoBehaviour
{
    public GameObject frontPrefab;
    public GameObject backPrefab;

    public string frontTag;
    public string backTag;

    public Transform frontSpawnPoint;
	public Transform backSpawnPoint;

    public float frontScale;
    public float backScale;

    public bool spawnAtStartup = true;
    private bool spawning = false;
    public bool sendSpawnMessageToParent = false;


    // Start is called before the first frame update
    void Start()
    {
        if (frontPrefab == null || backPrefab == null)
		{
			return;
		}

		if (spawnAtStartup)
		{
			SpawnAnObject(frontPrefab, frontSpawnPoint, frontScale);
            SpawnAnObject(backPrefab, backSpawnPoint, backScale);
		}
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public GameObject SpawnAnObject(GameObject prefab, Transform spawnPoint, float scale)
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

		spawning = false;
		return spawnedObject;
	}

	public void OnTriggerExit(Collider other)
    {
        if (!spawning && other.gameObject.CompareTag(frontTag))
        {
			StartCoroutine(WaitSpawnAnObject(frontPrefab, frontSpawnPoint, frontScale));
			spawning = true;
		} else if (!spawning && other.gameObject.CompareTag(backTag))
        {
			StartCoroutine(WaitSpawnAnObject(backPrefab, backSpawnPoint, backScale));
			spawning = true;
        }
		
	}

	private IEnumerator WaitSpawnAnObject(GameObject prefab, Transform spawnPoint, float scale)
    {
		yield return new WaitForSeconds(1.25f);
		SpawnAnObject(prefab, spawnPoint, scale);
    }


}
