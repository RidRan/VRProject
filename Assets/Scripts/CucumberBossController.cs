using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CucumberBossController : MonoBehaviour
{

    public float floatSpeed = 1;
    public float floatScale = 1;

    int counter = 0;

    public int healthPoints;


    public GameObject cucumberStarter;
    public GameObject worldCucumber;


    public GameObject alert;

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
        Vector3 currentScale = transform.localScale;
        transform.localScale = new Vector3(currentScale.x, currentScale.x , currentScale.z );

        //float floatValue = floatScale * Mathf.Sin(counter * floatSpeed);
        //transform.position = new Vector3(transform.position.x, transform.position.y + floatValue, transform.position.z);

        counter++;

        if (counter % 300 == 0)
        {
            Attack();
        }
    }

    private float Sin(float angle)
    {
        return Mathf.Sin(angle / 180 * Mathf.PI);
    }

    private float Cos(float angle)
    {
        return Mathf.Cos(angle / 180 * Mathf.PI);
    }


    private void LaunchSpike(float speed)
    {
        GameObject newSpike = Instantiate(cucumberStarter, transform.position + new Vector3(-3f, Random.Range(-1f, 1f), Random.Range(-.3f, .3f)), transform.localRotation, worldCucumber.transform);
        newSpike.transform.localScale = new Vector3(.01f, .01f, .01f);
        newSpike.AddComponent<Rigidbody>();
        newSpike.GetComponent<Rigidbody>().useGravity = false;
        newSpike.AddComponent<CucumberController>();
        newSpike.GetComponent<CucumberController>().alert = alert;
        newSpike.GetComponent<Rigidbody>().AddForce(new Vector3(1, 0, 0) * speed);
    }

    void Attack()
    {
        LaunchSpike(1000f);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Spike"))
        {
            Debug.Log("spike hit fish");
        }
    }
}
