using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;


public class TicketManager : MonoBehaviour
{
    public static TicketManager instance;

    public GameObject ticketPrefab;
	public Transform SpawnPoint;

    public bool spawnAtStartup = true;

	public bool sendSpawnMessageToParent = false;

	public float scale;
	private bool spawning = false;

	public GameObject saveData;
	public SaveData data;

    private void Start()
    {

        GameObject saveDataInstance = GameObject.FindGameObjectWithTag("SaveData");
		if(saveDataInstance == null)
        {
			saveDataInstance = Instantiate(saveData);
        }

		data = saveDataInstance.GetComponent<SaveData>();

		if (ticketPrefab == null)
		{
			return;
		}

		if (spawnAtStartup)
		{
			SpawnATicket();
		}

    }

    public GameObject SpawnATicket()
	{
		data.totalTickets++;
		if(data.totalTickets == 5 || data.totalTickets == 10)
        {
			return null;
        }
		else
        {
			if (ticketPrefab == null)
			{
				return null;
			}

			GameObject ticket = Instantiate(ticketPrefab, SpawnPoint.position, transform.rotation) as GameObject;
			ticket.transform.localScale = new Vector3(scale, scale, scale);

			if (sendSpawnMessageToParent)
			{
				if (transform.parent != null)
				{
					transform.parent.SendMessage("OnTicketSpawned", ticket, SendMessageOptions.DontRequireReceiver);
				}
			}

			spawning = false;

			return ticket;
		}
		
	}

	public void WaitSpawnTicket(float seconds = 2)
    {
		StartCoroutine(SpawmTicketAnimation(seconds));
    }

	private IEnumerator SpawmTicketAnimation(float seconds)
    {
		yield return new WaitForSeconds(seconds);
		SpawnATicket();
	}
}
