using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;


[Serializable]
public class Order
{
    public Sprite image;
    public int amount;
}

public class CreateTicket : MonoBehaviour
{
    [SerializeField] private List<Order> toppings;
    [SerializeField] private List<Order> bases;
    public Image sceneImage1;
    //public Text sceneQnt1;
    public Image sceneImage2;
    //public Text sceneQnt2;
    public Image sceneImage3;


    private void Start()
    {
        createOrder();
    }

    public void createOrder()
    {
        Order ticket1 = CreateAToppingTicket();
        sceneImage1.sprite = ticket1.image;
        //sceneQnt1.text = "x" + ticket1.amount.ToString();

        Order ticket2 = CreateAToppingTicket();
        sceneImage2.sprite = ticket2.image;
        //sceneQnt2.text = "x" + ticket2.amount.ToString();
        Order ticket3 = CreateARiceTicket();
        sceneImage3.sprite = ticket3.image;
        //sceneQnt3.text = "x" + ticket3.amount.ToString();
        
        toppings.Add(ticket1);
        toppings.Add(ticket2);

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
