using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CucumberController : MonoBehaviour
{
    public Vector3 lowerBounds;
    public Vector3 upperBounds;

    public GameObject alert;
    int alertedTime = -1;
    public int alertDelay = 10;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (alertedTime != -1 && Time.frameCount > alertedTime + alertDelay)
        {
            alert.SetActive(false);
            alertedTime = -1;
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Bat"))
        {
            gameObject.GetComponent<Rigidbody>().AddForce(0f, 0f, 0f);
            //gameObject.transform.Rotate(180, 0, 0);
        } 
        else if (collision.gameObject.CompareTag("Player"))
        {
            Debug.Log("Hit player!");
            alert.SetActive(true);
            alertedTime = Time.frameCount;
            GetComponent<Rigidbody>().useGravity = true;
        }
    }
}
