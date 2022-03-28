using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovementController : MonoBehaviour
{
    public float walkSpeed;
    public float walkScale;
    public float boundSpeed;
    public float boundScale;

    int counter = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        transform.position = new Vector3(transform.position.x + walkScale * Mathf.Sin(counter * walkSpeed) * Mathf.Sin(counter * walkSpeed), transform.position.y + boundScale * Mathf.Sin(counter * boundSpeed), transform.position.z);

        counter++;
    }
}
