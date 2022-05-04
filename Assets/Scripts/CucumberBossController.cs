using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CucumberBossController : MonoBehaviour
{

    public float floatSpeed = 1;
    public float floatScale = 1;

    int counter = 0;

    public GameObject cucumberStarter;
    public GameObject spawnPoint;


    public GameObject alert;
    public int bossHealth;

    public float moveSpeed;
    public float turnSpeed;
    private float moveTarget;


    public float maxHealth;
    private float currentHealth;
    public float cucumberDamage;


    public AudioClip hurt;
    public AudioClip roar;
    public AudioClip shootCucumber;
    
    public float eyeSpeed;
    public GameObject leftEye;
    public GameObject rightEye;
    public GameObject body;
    public GameObject cucumberfillet;

    public GameObject target;

    public float cucumberSpeed;

    private int hit = -1;

    private Vector3 startScale;

    public Animator animator;


    public GameObject player;

    public int breatheSpeed;
    public float breatheValue;

    private bool intro = true;

    private bool dead = false;

    private int timeOfDeath;
    private int deathDelay = 300;

    public string loadLevelName;



    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
        moveTarget = transform.position.y + 15f;
        startScale = transform.localScale;
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
        if (dead)
        {
            return;
        }

        LaunchCucumber(100f);
    }


    public void setBossHealth()
    {
        bossHealth = bossHealth - 5;
        if (bossHealth <= 0)
        {
            OnDeath(); 
        }
    }

    private void Explode(GameObject go, float force)
    {
        go.AddComponent<Rigidbody>();
        go.GetComponent<Rigidbody>().useGravity = true;
        go.GetComponent<Rigidbody>().isKinematic = false;
        go.GetComponent<Rigidbody>().AddForce((go.transform.position - transform.position) * force);
    }

    private void OnDeath()
    {
        dead = true;
        float force = 100f;

        body.SetActive(false);


        int numFillets = 20;
        float sizeFillet = 3f;
        float spaceFillet = 5f;

        for (int i = 0; i < numFillets; i++)
        {
            GameObject newFillet = Instantiate(cucumberfillet, transform.position + new Vector3(Random.value, Random.value, Random.value) * spaceFillet, transform.localRotation);
            newFillet.transform.localScale = newFillet.transform.localScale * sizeFillet;
            Explode(newFillet, force);
        }
        animator.enabled = false;
    }


}
