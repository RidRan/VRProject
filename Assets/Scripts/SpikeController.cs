using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeController : MonoBehaviour
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

    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Sword"))
        {
            gameObject.GetComponent<Rigidbody>().AddForce(2000f, 0f, 0f);
            gameObject.transform.Rotate(180, 0, 0);
        }
    }
}
