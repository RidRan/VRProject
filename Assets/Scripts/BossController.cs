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
    public GameObject bodySpikes;
    public GameObject worldSpikes;

    public GameObject glob;

    public int numSpikes = 1;

    public GameObject eyes;
    public float rollSpeed;

    public GameObject alert;

    public AudioClip hurt;
    public AudioClip roar;
    public AudioClip shootSpike;
    public AudioClip shootGlob;

    public float eyeSpeed;
    public GameObject leftEye;
    public GameObject rightEye;
    private Vector3 leftEyeTarget;
    private Vector3 rightEyeTarget;

    public GameObject target;

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < 360; i += 30)
        {
            for (int j = 0; j < 180; j += 30)
            {
                if (i != 90 && i != 270 && 
                    !(i == 30 && j == 60) &&
                    !(i == 330 && j == 60) &&
                    !(i == 0 && j == 60) &&
                    !(i == 0 && j == 90))
                {
                    GenerateSpike(i, j);
                }
            }
        }
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

        TargetEyes();

        counter++;

        if (counter % 300 == 0 || counter % 300 == 20 || counter % 300 == 40)
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

    private float Atan(float oa)
    {
        return Mathf.Atan(oa) * 180 / Mathf.PI;
    }

    private void GenerateSpike(float angleX, float angleZ)
    {
        float height = 2.85f;

        angleX += 90;
        angleZ += 90;

        GameObject newSpike = Instantiate(spikeStarter, transform.position + height * new Vector3(Sin(angleX) * Cos(angleZ), Sin(angleX) * Sin(angleZ), Cos(angleX)), transform.localRotation, bodySpikes.transform);
        newSpike.transform.Rotate(angleZ - 90, 0, angleX - 90);
    }

    private void LaunchSpike(float speed)
    {
        GameObject newSpike = Instantiate(spikeStarter, transform.position + new Vector3(-3f, Random.Range(-1f, 1f), Random.Range(-.3f, .3f)), transform.localRotation, worldSpikes.transform);
        newSpike.transform.Rotate(90, 0, 0);
        newSpike.transform.localScale = new Vector3(10f, 10f, 10f);
        newSpike.AddComponent<Rigidbody>();
        newSpike.GetComponent<Rigidbody>().useGravity = false;
        newSpike.AddComponent<SpikeController>();
        newSpike.GetComponent<SpikeController>().alert = alert;
        newSpike.GetComponent<Rigidbody>().AddForce(new Vector3(-1, 0, 0) * speed);
    }

    void TargetEyes()
    {
        Vector3 rotation = new Vector3();
        Vector3 targetPosition = target.transform.position;

        Vector3 leftEyeRotation = leftEye.transform.localEulerAngles;
        Vector3 leftEyePosition = leftEye.transform.position;

        Debug.Log("Current target position: " + targetPosition);

        float xa = -Atan((targetPosition.x - leftEyePosition.x) / (targetPosition.y - leftEyePosition.y));
        float za = Atan((targetPosition.z - leftEyePosition.z) / (targetPosition.x - leftEyePosition.x));

        leftEyeTarget = new Vector3(
            (xa < 0) ? xa + 180 : xa,
            0,
            za
            );

        leftEye.transform.localEulerAngles = leftEyeTarget;

        Vector3 rightEyeRotation = rightEye.transform.localEulerAngles;
        Vector3 rightEyePosition = rightEye.transform.position;

        xa = -Atan((targetPosition.x - rightEyePosition.x) / (targetPosition.y - rightEyePosition.y));
        za = Atan((targetPosition.z - rightEyePosition.z) / (targetPosition.x - rightEyePosition.x));

        rightEyeTarget = new Vector3(
            (xa < 0) ? xa + 180 : xa,
            0,
            za
            );

        rightEye.transform.localEulerAngles = rightEyeTarget;
    }

    void Attack()
    {
        LaunchSpike(1000f);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Spike"))
        {
            Debug.Log("spike hit fish");
        }
    }
}
