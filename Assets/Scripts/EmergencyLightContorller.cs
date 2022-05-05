using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmergencyLightContorller : MonoBehaviour
{
    // Start is called before the first frame update
    public Light lt;

    private TicketManager ticketManager;
    private float count;
    private float direction = 1;

    public int rotateDirection;

    void Start()
    {
        lt = GetComponent<Light>();
        ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();
        count = lt.spotAngle;

        lt.intensity = 0;

    }

    // Darken the light completely over a period of 2 seconds.
    void Update()
    {
        if (ticketManager.data.totalTickets == 2 || ticketManager.data.totalTickets == 10)
        {
            lt.intensity = 2.5f;

            if (count > 60)
            {
                direction = -1;
            } else if (count < 30)
            {
                direction = 1;
            }

            count = count + direction;

            lt.spotAngle = count + direction;
            lt.transform.Rotate(rotateDirection, 0, 0);
        }
        else
        {
            lt.intensity = 0;
        }

    }
}
