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
    [SerializeField] private List<Order> orders;
    public Image sceneImage1;
    public Text sceneQnt1;
    public Image sceneImage2;
    public Text sceneQnt2;


    private void Start()
    {
        createOrder();
    }

    public void createOrder()
    {
        Order ticket1 = CreateATicket();
        sceneImage1.sprite = ticket1.image;
        sceneQnt1.text = "x" + ticket1.amount.ToString();
        if(UnityEngine.Random.Range(1, 100) <= 35)
        {
            Order ticket2 = CreateATicket();
            sceneImage2.sprite = ticket2.image;
            sceneQnt2.text = "x" + ticket2.amount.ToString();
        }
    }

    public Order CreateATicket() { 
        return orders[UnityEngine.Random.Range(0, orders.Count)];
    }

}
