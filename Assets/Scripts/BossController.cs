using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BossController : MonoBehaviour
{
    public float inflateSpeed = 1;
    public float inflateScale = 1;

    public float floatSpeed = 1;
    public float floatScale = 1;

    int counter = 0;

    public float health;

    public GameObject spikeStarter;
    public GameObject bodySpikes;
    public GameObject worldSpikes;

    public GameObject glob;

    public int numSpikes = 1;

    public AudioClip hurt;
    public AudioClip roar;
    public AudioClip shootSpike;
    public AudioClip shootGlob;

    public float moveSpeed;

    public float eyeSpeed;
    public GameObject leftEye;
    public GameObject rightEye;

    public GameObject target;

    public TextMeshProUGUI healthText;

    public float spikeSpeed;

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

        TargetPlayer();

        counter++;

        if (counter % 300 == 0)
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
        float spikeScale = 2f;
        float height = 10f;

        angleX += 90;
        angleZ += 90;

        GameObject newSpike = Instantiate(spikeStarter, transform.position + height * new Vector3(Sin(angleX) * Cos(angleZ), Sin(angleX) * Sin(angleZ), Cos(angleX)), transform.localRotation, bodySpikes.transform);
        newSpike.transform.localScale = new Vector3(spikeScale, spikeScale, spikeScale);
        newSpike.transform.Rotate(angleZ - 90, 0, angleX - 90);
    }

    private void LaunchSpike()
    {
        GetComponent<AudioSource>().PlayOneShot(shootSpike);

        GameObject newSpike = Instantiate(spikeStarter, transform.position + new Vector3(-20f, 0f, 0f), transform.localRotation, worldSpikes.transform);
        float spikeScale = 50f;
        newSpike.transform.localScale = new Vector3(spikeScale, spikeScale, spikeScale);
        newSpike.AddComponent<SpikeController>();
        newSpike.GetComponent<SpikeController>().target = target;
        newSpike.GetComponent<SpikeController>().boss = gameObject;

        Vector3 targetPosition = target.transform.position;
        Vector3 spikePosition = newSpike.transform.position;

        newSpike.transform.localEulerAngles = new Vector3(
            Atan((targetPosition.y - spikePosition.y) / (targetPosition.x - spikePosition.x)),
            0,
            90 - Atan((targetPosition.z - spikePosition.z) / (targetPosition.x - spikePosition.x))
            );

        newSpike.AddComponent<Rigidbody>();
        newSpike.GetComponent<Rigidbody>().useGravity = false;
        newSpike.GetComponent<Rigidbody>().AddForce((targetPosition - spikePosition) * spikeSpeed);
    }

    void TargetPlayer()
    {
        Vector3 targetPosition = target.transform.position;

        Vector3 leftEyePosition = leftEye.transform.position;
        Vector3 leftEyeRotation = leftEye.transform.localEulerAngles;

        float xa = -Atan((targetPosition.x - leftEyePosition.x) / (targetPosition.y - leftEyePosition.y));
        float za = Atan((targetPosition.z - leftEyePosition.z) / (targetPosition.x - leftEyePosition.x));

        Vector3 leftEyeTarget = new Vector3(
            (xa < 0) ? xa + 180 : xa,
            0,
            za
            );

        leftEyeRotation = new Vector3(leftEyeRotation.x, 0, leftEyeRotation.y - 180);
        leftEye.transform.localEulerAngles = leftEyeRotation + (leftEyeTarget - leftEyeRotation) * eyeSpeed;

        Vector3 rightEyePosition = rightEye.transform.position;
        Vector3 rightEyeRotation = rightEye.transform.localEulerAngles;

        xa = -Atan((targetPosition.x - rightEyePosition.x) / (targetPosition.y - rightEyePosition.y));
        za = Atan((targetPosition.z - rightEyePosition.z) / (targetPosition.x - rightEyePosition.x));

        Vector3 rightEyeTarget = new Vector3(
            (xa < 0) ? xa + 180 : xa,
            0,
            za
            );

        rightEyeRotation = new Vector3(rightEyeRotation.x, 0, rightEyeRotation.y - 180);
        rightEye.transform.localEulerAngles = rightEyeRotation + (rightEyeTarget - rightEyeRotation) * eyeSpeed;

        Vector3 position = transform.position;
        Vector3 rotation = transform.localEulerAngles;

        xa = Atan((targetPosition.y - position.y) / (targetPosition.x - position.x)) + 10;
        float ya = -Atan((targetPosition.z - position.z) / (targetPosition.x - position.x)) - 90;

        Vector3 bodyTarget = new Vector3(
            xa,
            ya,
            0
            );

        rotation = new Vector3(rotation.x, rotation.y, 0);
        transform.localEulerAngles = rotation + (bodyTarget - rotation) * moveSpeed;
    }

    void Attack()
    {
        LaunchSpike();
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Spike"))
        {
            Debug.Log("spike hit fish");
        }
    }
}
