using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class ToppingCollisionManager : MonoBehaviour
{
    private Rigidbody rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    
    public void OnCollisionEnter(Collision other)
    {
        if(other.gameObject.CompareTag("Base"))
        {
            Destroy(other.gameObject.GetComponent<Throwable>());
            Destroy(other.gameObject.GetComponent<Rigidbody>());
            other.transform.parent = transform;
        }
    }
}
