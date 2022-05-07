using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopSoundController : MonoBehaviour
{
    private TicketManager ticketManager;
    private AudioSource soundManager;

    public AudioSource source;

    void Start()
    {
        source = GetComponent<AudioSource>();
        ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();
        soundManager = GameObject.FindGameObjectWithTag("SoundManager").GetComponent<AudioSource>();
        source.mute = true;
    }

    void Update()
    {

        if (ticketManager.data.totalTickets == 5 || ticketManager.data.totalTickets == 10)
        {
            Debug.Log("Play alarm here");

            soundManager.mute = true;
            source.mute = false;
        }
        else
        {
            soundManager.mute = false;
            source.mute = true;
        }

    }
}
