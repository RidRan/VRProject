using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public class Order
{
    public Sprite image;
    public String Tag;
}


public class CreateOrder : MonoBehaviour
{
    [SerializeField] private List<Order> toppings;
    [SerializeField] private List<Order> bases;

    public Image sceneImage1;
    public Image sceneImage2;
    public Image sceneImage3;
    private RollManager rollManager;


    private void Start()
    {
        rollManager = GameObject.FindGameObjectWithTag("RollManager").GetComponent<RollManager>();
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
}
