using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public class Order
{
    public Image picture;
    public int amount;
}

public class CreateTicket : MonoBehaviour
{
    [SerializeField] private List<Order> orders;
    
    public Order CreateATicket() { 
        return orders[UnityEngine.Random.Range(0, orders.Count)];
    }
}
