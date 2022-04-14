using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeController : MonoBehaviour
{
    public Vector3 lowerBounds;
    public Vector3 upperBounds;

    public GameObject target;
    public GameObject boss;
    public float speed;

    // Start is called before the first frame update
    void Start()
    {
        
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
        Debug.Log("Collided with " + collision.gameObject.tag);

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

            collision.gameObject.GetComponent<SwordController>().PlayClang();
        } 
        else if (collision.gameObject.CompareTag("Player"))
        {
            Destroy(gameObject);
        }
        else if (collision.gameObject.CompareTag("Boss"))
        {
            boss.GetComponent<BossController>().OnHit();

            //Destroy(gameObject);
        }
    }
}
