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

    public int maxHealth;
    int currentHealth;

    bool damaged;

    public GameObject damageFilter;
    public AudioSource siren;

    // Start is called before the first frame update
    void Start()
    {
        int currentHealth = maxHealth;
        damageFilter.GetComponent<MeshRenderer>().material.color = new Color(1f, 0f, 0f, 0f);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        transform.position = new Vector3(transform.position.x + walkScale * Mathf.Sin(counter * walkSpeed) * Mathf.Sin(counter * walkSpeed), transform.position.y + boundScale * Mathf.Sin(counter * boundSpeed), transform.position.z);

        counter++;

        if (damaged)
        {
            int maxIntensity = 100;
            int delay = 2;
            int sirenDelay = 100;
            damageFilter.GetComponent<MeshRenderer>().material.color = new Color(1f, 0f, 0f, (counter / delay % maxIntensity) / 255f);

            if (counter % sirenDelay == 0)
            {
                //siren.PlayOneShot(siren.clip);
            }
        }
    }

    public void OnHit()
    {
        if (currentHealth > 0) currentHealth -= 1;

        Debug.Log(currentHealth + "/" + maxHealth);

        if (currentHealth / maxHealth <= .25f)
        {
            damaged = true;
            Debug.Log("damaged");
        }
    }
}
