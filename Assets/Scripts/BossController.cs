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

    public GameObject spikeStarter;

    public int numSpikes = 1;

    public GameObject eyes;
    public float rollSpeed;

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < 360; i += 15)
        {
            GenerateSpike(0, i);
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        if (counter % 100000 == 0)
        {
            Attack();
        }
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
    }

    public void GenerateSpike(float angleX, float angleZ)
    {
        float height = 5f + .9f;

        angleX = angleX / 180 * Mathf.PI;
        angleZ = angleZ / 180 * Mathf.PI;

        GameObject newSpike = Instantiate(spikeStarter, transform.position + height * new Vector3(Mathf.Sin(angleX), Mathf.Cos(angleX) * Mathf.Cos(angleZ), Mathf.Sin(angleZ)), transform.localRotation, transform);
        newSpike.transform.Rotate(-angleX * 180 / Mathf.PI, 0, 0);
    }

    void Attack()
    {

    }
}
