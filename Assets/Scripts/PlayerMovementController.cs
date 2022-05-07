using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovementController : MonoBehaviour
{
    public float walkSpeed;
    public float walkScale;
    public float boundSpeed;
    public float boundScale;

    int counter = 0;

    public int maxHealth;
    int currentHealth;

    bool damaged = false;

    public GameObject damageFilter;
    public AudioSource siren;

    bool fade = false;
    int fadeTime = 0;

    public GameObject leftSword;
    public GameObject rightSword;

    int sirenTime;

    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
        damageFilter.GetComponent<MeshRenderer>().material.color = new Color(1f, 0f, 0f, 0f);
        AudioListener.volume = 1f;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        transform.position = new Vector3(transform.position.x + walkScale * Mathf.Sin(counter * walkSpeed) * Mathf.Sin(counter * walkSpeed), transform.position.y + boundScale * Mathf.Sin(counter * boundSpeed), transform.position.z);

        counter++;

        if (fade)
        {

            if (fadeTime == 0) fadeTime = counter;

            int delay = 2;
            damageFilter.GetComponent<MeshRenderer>().material.color = new Color(0f, 0f, 0f, (counter - fadeTime) / delay / 255f);
            AudioListener.volume -= delay / 1000f;

            if (counter - fadeTime > 600)
            {
                fade = false;
                currentHealth = maxHealth;
                damageFilter.GetComponent<MeshRenderer>().material.color = new Color(0f, 0f, 0f, 0f);
                SceneManager.LoadScene("BossfightDemo");
            }
        }
            
        if (damaged)
        {

            int speed = 2;
            damageFilter.GetComponent<MeshRenderer>().material.color = damageFilter.GetComponent<MeshRenderer>().material.color + new Color(0f, 0f, 0f, -speed / 255f);
        }
    }

    public void OnHit()
    {
        if (currentHealth > 0)
        {
            currentHealth -= 1;
        } 
        else if (!fade)
        {
            Debug.Log("killed");

            damaged = false;
            fade = true;

            leftSword.AddComponent<Rigidbody>();
            leftSword.GetComponent<Rigidbody>().useGravity = true;
            leftSword.GetComponent<Rigidbody>().isKinematic = false;

            rightSword.AddComponent<Rigidbody>();
            rightSword.GetComponent<Rigidbody>().useGravity = true;
            rightSword.GetComponent<Rigidbody>().isKinematic = false;
        }

        Debug.Log(currentHealth + "/" + maxHealth);

        if ((float) currentHealth / maxHealth <= .5f && currentHealth > 0)
        {
            damaged = true;
            damageFilter.GetComponent<MeshRenderer>().material.color = new Color(1f, 0f, 0f, .5f);
            if (counter > sirenTime + 90)
            {
                siren.PlayOneShot(siren.clip);
                sirenTime = counter;
            }
        }
    }
}
