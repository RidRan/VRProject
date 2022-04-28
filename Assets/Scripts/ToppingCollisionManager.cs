using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class ToppingCollisionManager : MonoBehaviour
{
    private Rigidbody rb;

    public Hand hand;

    public List<string> toppingslist;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    
    public void OnCollisionEnter(Collision other)
    {
        bool isTopping = false;
        if(toppingslist.Contains(other.gameObject.tag)){
            isTopping = true;
        }

        if(isTopping && (SushiManager.instance.holding == null))
        {
            Destroy(other.gameObject.GetComponent<Throwable>());
            Destroy(other.gameObject.GetComponent<Rigidbody>());
            other.transform.parent = transform;
        }
    }
}
