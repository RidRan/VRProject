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

        if (counter % 100 == 0)
        {
            Attack();
        }
    }


    private void LaunchCucumber(float speed)
    {
        GameObject newcucumber = Instantiate(cucumberStarter, spawnPoint.transform.position, transform.localRotation, spawnPoint.transform);
        newcucumber.AddComponent<Rigidbody>();
        newcucumber.GetComponent<Rigidbody>().useGravity = false;
        newcucumber.AddComponent<CucumberController>();
        newcucumber.GetComponent<CucumberController>().alert = alert;
        newcucumber.GetComponent<Rigidbody>().AddForce(new Vector3(1, 0, 0) * speed);
    }

    void Attack()
    {
        LaunchCucumber(100f);
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
