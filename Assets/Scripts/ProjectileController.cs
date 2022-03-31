using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileController : MonoBehaviour
{

    public Vector3 lowerBounds;
    public Vector3 upperBounds;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.x < lowerBounds.x ||
            transform.position.y < lowerBounds.y ||
            transform.position.z < lowerBounds.z ||
            transform.position.x > upperBounds.x ||
            transform.position.y > upperBounds.y ||
            transform.position.z > upperBounds.z
            )
        {
            Destroy(this);
        }
    }
}
