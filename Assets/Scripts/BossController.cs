using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossController : MonoBehaviour
{
    public float inflateSpeed = 1;
    public float inflateScale = 1;

    public float floatSpeed = 1;
    public float floatScale = 1;

    int counter = 0;

    public int healthPoints;


    public GameObject spikeStarter;
    public GameObject spikeParent;

    public int numSpikes = 1;

    public GameObject eyes;
    public float rollSpeed;

    // Start is called before the first frame update
    void Start()
    {
        GenerateSpike(0, 0); 
        GenerateSpike(0, 15);
        GenerateSpike(15, 0);
        GenerateSpike(15, 15);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        Vector3 currentScale = transform.localScale;
        float inflateValue = inflateScale * Mathf.Sin(counter * inflateSpeed);
        transform.localScale = new Vector3(currentScale.x + inflateValue, currentScale.x + inflateValue, currentScale.z + inflateValue);

        float floatValue = floatScale * Mathf.Sin(counter * floatSpeed);
        transform.position = new Vector3(transform.position.x, transform.position.y + floatValue, transform.position.z);

        eyes.transform.Rotate(rollSpeed, 0, 0);

        counter++;

        if (counter % 100 == 0 || counter % 100 == 10 || counter % 100 == 20)
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


    private void GenerateSpike(float angleX, float angleZ)
    {
        float height = 5.9f;

        angleX += 90;
        angleZ += 90;

        GameObject newSpike = Instantiate(spikeStarter, transform.position + height * new Vector3(Sin(angleX) * Cos(angleZ), Sin(angleX) * Sin(angleZ), Cos(angleX)), transform.localRotation, spikeParent.transform);
        newSpike.transform.Rotate(angleZ - 90, 0, angleX - 90);
    }

    private void LaunchSpike(float speed)
    {
        GameObject newSpike = Instantiate(spikeStarter, transform.position + new Vector3(-6f, 1f, 0), transform.localRotation, spikeParent.transform);
        newSpike.transform.Rotate(90, 0, 0);
        newSpike.AddComponent<ProjectileController>();
        newSpike.GetComponent<ProjectileController>().lowerBounds = spikeStarter.GetComponent<ProjectileController>().lowerBounds;
        newSpike.GetComponent<ProjectileController>().upperBounds = spikeStarter.GetComponent<ProjectileController>().upperBounds;
        newSpike.GetComponent<Rigidbody>().AddForce(new Vector3(-1, 0, 0) * speed);
    }

    void Attack()
    {
        LaunchSpike(1000f);
    }
}
