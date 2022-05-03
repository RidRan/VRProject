using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public class Order
{
    public Sprite image;
    public string Tag;

    public Order(Sprite i, string t)
    {
        image = i;
        Tag = t;
    }
}


public class CreateOrder : MonoBehaviour
{
    private TicketManager ticketManager;
    [SerializeField] private List<Order> toppings;
    [SerializeField] private List<Order> bases;

    public Image sceneImage1;
    public Image sceneImage2;
    public Image sceneImage3;
    private RollManager rollManager;

    public Sprite cucumberImage;
    public string cucumberTag;

    public Sprite pufferImage;
    public string pufferTag;

    public bool spawnFront = true;
    public bool spawnBack = true;


    private void Start()
    {
        rollManager = GameObject.FindGameObjectWithTag("RollManager").GetComponent<RollManager>();
        spawnFront = true;
        spawnBack = true;

        ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();

        if (spawnFront)
        {
            if (ticketManager.data.totalTickets > 5)
            {
                AddCucumberTicket();
                spawnFront = false;
            }
        }

        if (spawnBack)
        {
            if (ticketManager.data.totalTickets > 10)
            {
                AddPufferTicket();
                spawnBack = false;
            }

        }
        createAOrder();
    }



    public void createAOrder()
    {
        Order ticket1 = CreateAToppingTicket();
        sceneImage1.sprite = ticket1.image;

        Order ticket2 = CreateAToppingTicket();
        sceneImage2.sprite = ticket2.image;

        Order ticket3 = CreateARiceTicket();
        sceneImage3.sprite = ticket3.image;
        
        toppings.Add(ticket1);
        toppings.Add(ticket2);
        rollManager.setRollTags(ticket3.Tag, ticket2.Tag, ticket1.Tag);
    }

    public Order CreateAToppingTicket() 
    { 
        int num = UnityEngine.Random.Range(0, toppings.Count);
        Order topping = toppings[num];
        toppings.Remove(topping);
        return topping;
    }

    public Order CreateARiceTicket() 
    { 
        Order base1 = bases[0];
        return base1;
    }

    public void AddCucumberTicket()
    {
        toppings.Add(new Order(cucumberImage, cucumberTag));
    }
    public void AddPufferTicket()
    {
        toppings.Add(new Order(pufferImage, pufferTag));
    }
}
