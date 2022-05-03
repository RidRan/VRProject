using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class CollisionManager : MonoBehaviour
{
    private Rigidbody rb;

    public Hand hand;
    
    public string tag;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    
    public void OnCollisionEnter(Collision other)
    {
        if((other.gameObject.CompareTag(tag)) && (SushiManager.instance.holding == null))
        {
            // creates joint
            FixedJoint joint = gameObject.AddComponent<FixedJoint>(); 
            // sets joint position to point of contact
            joint.anchor = other.contacts[0].point; 
            // conects the joint to the other object
            joint.connectedBody = other.contacts[0].otherCollider.transform.GetComponentInParent<Rigidbody>(); 
            // Stops objects from continuing to collide and creating more joints
            joint.enableCollision = false; 


            //Destroy(other.gameObject.GetComponent<Throwable>());
            //Destroy(other.gameObject.GetComponent<Rigidbody>());
            other.transform.parent = transform;
        }
    }
}
