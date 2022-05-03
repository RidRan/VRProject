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

    public Light leftLight;
    public Light rightLight;

    public AudioSource siren;

    // Start is called before the first frame update
    void Start()
    {
        int currentHealth = maxHealth;
        leftLight.intensity = 0f;
        rightLight.intensity = 0f;
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
            int delay = 100;
            int sirenDelay = 100;
            leftLight.intensity = (counter / delay) % maxIntensity;
            rightLight.intensity = (counter / delay) % maxIntensity;

            if (counter % sirenDelay == 0)
            {
                siren.PlayOneShot(siren.clip);
            }
        }
    }

    public void OnHit()
    {
        currentHealth -= 1;
        if (currentHealth / maxHealth <= .25f)
        {
            damaged = true;
        }
    }
}
