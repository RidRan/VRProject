using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeController : MonoBehaviour
{
    public Vector3 lowerBounds;
    public Vector3 upperBounds;

    public GameObject target;
    public GameObject boss;
    public GameObject player;
    public float speed;

    private ParticleSystem sparks;

    // Start is called before the first frame update
    void Start()
    {
        sparks = transform.GetChild(3).GetComponent<ParticleSystem>();
    }
    private void Awake()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void FixedUpdate()
    {
        
    }

    private float Atan(float oa)
    {
        return Mathf.Atan(oa) * 180 / Mathf.PI;
    }

    private void OnCollisionEnter(Collision collision)
    {

        if (collision.gameObject.CompareTag("Sword"))
        {
            target = boss;

            Vector3 targetPosition = target.transform.position;
            Vector3 spikePosition = transform.position;

            transform.localEulerAngles = new Vector3(
                Atan((targetPosition.y - spikePosition.y) / (targetPosition.x - spikePosition.x)),
                0,
                90 - Atan((targetPosition.z - spikePosition.z) / (targetPosition.x - spikePosition.x))
                );

            GetComponent<Rigidbody>().velocity = GetComponent<Rigidbody>().velocity * -2f;
            GetComponent<Rigidbody>().useGravity = true;

            sparks.Play();

            collision.gameObject.GetComponent<SwordController>().PlayClang();
        } 
        else if (collision.gameObject.CompareTag("Player"))
        {
            player.GetComponent<PlayerMovementController>().OnHit();
            sparks.Play();
            transform.localScale = new Vector3(transform.localScale.x, transform.localScale.y / 3f, transform.localScale.z);
            Destroy(gameObject, .5f);
        }
        else if (collision.gameObject.CompareTag("Boss"))
        {
            boss.GetComponent<BossController>().OnHit();

            Destroy(gameObject);
        }
    }
}
