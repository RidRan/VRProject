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
    public GameObject spawnPoint;


    public GameObject alert;
    public int bossHealth;


    // Start is called before the first frame update
    void Start()
    {
        healthPoints = 100;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        Vector3 currentScale = transform.localScale;
        transform.localScale = new Vector3(currentScale.x, currentScale.x , currentScale.z );


        counter++;

        if (counter % 300 == 0)
        {
            Attack();
        }
    }


    private void LaunchSpike(float speed)
    {
        GameObject newcucummber = Instantiate(cucumberStarter, transform.position + new Vector3(-3f, Random.Range(-1f, 1f), Random.Range(-.3f, .3f)), transform.localRotation, spawnPoint.transform);
        newcucummber.AddComponent<Rigidbody>();
        newcucummber.GetComponent<Rigidbody>().useGravity = false;
        newcucummber.AddComponent<CucumberController>();
        newcucummber.GetComponent<CucumberController>().alert = alert;
        newcucummber.GetComponent<Rigidbody>().AddForce(new Vector3(1, 0, 0) * speed);
    }

    void Attack()
    {
        LaunchSpike(1000f);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Topping"))
        {
            Debug.Log("spike hit fish");
        }
    }

    void setBossHealth()
    {
        bossHealth = bossHealth - 5;
        if (bossHealth <= 0)
        {
            //TODO: pop the boss 
        }
    }
}
