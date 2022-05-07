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

	public string lastLevelName;


	public GameObject button;

	public GameObject fadeFilter;
	bool fade = false;

	public GameObject pufferSign;
	public GameObject cucumberSign;

    private void Start()
    {

        GameObject saveDataInstance = GameObject.FindGameObjectWithTag("SaveData");
		button.SetActive(false);
		pufferSign.SetActive(false);
		cucumberSign.SetActive(false);

		if (saveDataInstance == null)
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
		int finalCount = 15;

		if(data.totalTickets == 5 || data.totalTickets == 10 || data.totalTickets == finalCount)
        {
			if(data.totalTickets == finalCount)
			{
				fade = true;
			}

			button.SetActive(true);

			return null;
        }
		else
        {   
			if (data.totalTickets == 6)
			{
				cucumberSign.SetActive(true);
			}
			if (data.totalTickets == 11)
			{
				cucumberSign.SetActive(false);
				pufferSign.SetActive(true);
			}

			button.SetActive(false);
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

	int counter = 0;
	int fadeTime = 0;

	public void FixedUpdate()
	{
		counter++;

		if (fade)
		{
			if (fadeTime == 0) {
				fadeFilter.GetComponent<Renderer>().material.color = new Color(0, 0, 0, 0);

				fadeTime = counter;
			}

			fadeFilter.GetComponent<Renderer>().material.color = fadeFilter.GetComponent<Renderer>().material.color + new Color(0, 0, 0, 2f / 255f);

			if (counter - fadeTime > 200)
			{
				UnityEngine.SceneManagement.SceneManager.LoadScene(lastLevelName);
			}
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
