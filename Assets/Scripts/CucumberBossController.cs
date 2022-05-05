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

    public GameObject player;

    private bool intro = true;

    private bool dead = false;

    private int timeOfDeath;
    private int deathDelay = 300;

    public string loadLevelName;



    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
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

        if (dead && counter > timeOfDeath + deathDelay)
        {
            UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevelName);
        }
    }


    private void LaunchCucumber(Vector3 offset)
    {
        GameObject newcumber = Instantiate(cucumberStarter, spawnPoint.transform.position + offset, transform.localRotation);
        float cucumberScale = 2f * transform.localScale.x;
        newcumber.transform.localScale = new Vector3(cucumberScale, cucumberScale, cucumberScale);

        Debug.Log("Fuckumber");

        Vector3 targetPosition = target.transform.position;
        Vector3 cucumberPosition = newcumber.transform.position;

        newcumber.AddComponent<Rigidbody>();
        newcumber.GetComponent<Rigidbody>().useGravity = false;
        newcumber.GetComponent<Rigidbody>().AddForce((targetPosition - cucumberPosition) * cucumberSpeed);
    }

    int shotCounter = 0;

    void Attack()
    {
        if (dead)
        {
            return;
        }

        int spikeDelay = 150;
        int spikeCount = 2;
        float attackSpeed = 1f;
        float attackHeight = .1f;
        float inflateValue = 1.5f;

        if (counter % spikeDelay == 0)
        {
            //attack start
            if (shotCounter == 0)
            {

            }

            //attack

            float spread = 2f;
            LaunchCucumber(new Vector3(0, 0, spread));
            LaunchCucumber(new Vector3(0, 0, 0));
            LaunchCucumber(new Vector3(0, 0, -spread));
            shotCounter++;
        }

        //attack end
        if (shotCounter == spikeCount)
        {
            shotCounter = 0;
        }
    }


    public void setBossHealth()
    {
        currentHealth -= 5;
        if (currentHealth <= 0 && !dead)
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
        float sizeFillet = 1f;
        float spaceFillet = 5f;

        for (int i = 0; i < numFillets; i++)
        {
            GameObject newFillet = Instantiate(cucumberfillet, transform.position + new Vector3(Random.value, Random.value, Random.value) * spaceFillet, transform.localRotation);
            newFillet.transform.localScale = newFillet.transform.localScale * sizeFillet;
            Explode(newFillet, force);
        }

        Explode(leftEye, force);
        Explode(rightEye, force);

        timeOfDeath = counter;
    }


}
