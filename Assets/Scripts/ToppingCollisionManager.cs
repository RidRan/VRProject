using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class ToppingCollisionManager : MonoBehaviour
{
    private Rigidbody rb;

    public Hand hand;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    
    public void OnCollisionEnter(Collision other)
    {
        if((other.gameObject.CompareTag("Topping")) && (SushiManager.instance.holding == null))
        {
            Destroy(other.gameObject.GetComponent<Throwable>());
            Destroy(other.gameObject.GetComponent<Rigidbody>());
            other.transform.parent = transform;
        }
    }
}
