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
	public int totalTickets;


    private void Start()
    {
		totalTickets = 0;
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
		//Debug.Log("StartSpawnATicket");
		totalTickets++;
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
        //Debug.Log("EndSpawnATicket");

		return ticket;
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