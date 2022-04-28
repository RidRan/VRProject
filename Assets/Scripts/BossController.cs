using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BossController : MonoBehaviour
{
    private float currentInflate = 1f;
    public float inflateSpeed = .01f;
    private float inflateTarget = 1.1f;

    public float moveSpeed;
    public float turnSpeed;
    private float moveTarget;

    int counter = 0;

    public float maxHealth;
    private float currentHealth;
    public float spikeDamage;

    public GameObject spikeStarter;
    public GameObject bodySpikes;
    public GameObject worldSpikes;

    public GameObject glob;

    public int numSpikes = 1;

    public AudioClip hurt;
    public AudioClip roar;
    public AudioClip shootSpike;
    public AudioClip shootGlob;
    
    public float eyeSpeed;
    public GameObject leftEye;
    public GameObject rightEye;

    public GameObject target;

    public float spikeSpeed;

    private int hit = -1;

    private Vector3 startScale;

    public Animator animator;

    public GameObject SpikeSpawnPoint;

    public int breatheSpeed;
    public float breatheValue;

    private bool intro = true;

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
                    !(i == 0 && j == 90) &&
                    !(i == 180 && j == 60))
                {
                    GenerateSpike(i, j);
                }
            }
        }

        currentHealth = maxHealth;
        moveTarget = transform.position.y;
        startScale = transform.localScale;
        inflateTarget = startScale.x * 5f;
        inflateSpeed *= 5f;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {
        if (transform.position.y < moveTarget)
        {
            transform.position = transform.position + new Vector3(0, moveSpeed, 0);
        }
        else if (transform.position.y > moveTarget)
        {
            transform.position = transform.position - new Vector3(0, moveSpeed, 0);
        }

        if (transform.localScale.x > inflateTarget)
        {
            transform.localScale = transform.localScale * (1f - inflateSpeed);
        }
        else if (transform.localScale.x < inflateTarget)
        {
            transform.localScale = transform.localScale * (1f + inflateSpeed);
        }

        TargetPlayer();

        counter++;

        if (intro)
        {
            if (counter > 250)
            {
                inflateSpeed /= 5f;
                intro = false;
            } 
            else
            {
                return;
            }
        }

        Attack(counter);

        if (counter % breatheSpeed == 0)
        {

            breatheValue *= -1f;
            inflateTarget += breatheValue;
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
        float height = 2f;

        angleX += 90;
        angleZ += 90;

        GameObject newSpike = Instantiate(spikeStarter, transform.position + height * new Vector3(Sin(angleX) * Cos(angleZ), Sin(angleX) * Sin(angleZ), Cos(angleX)), transform.localRotation, bodySpikes.transform);
        newSpike.transform.localScale = new Vector3(spikeScale, spikeScale, spikeScale);
        newSpike.transform.Rotate(angleZ - 90, 0, angleX - 90);
    }

    private void LaunchSpike(Vector3 offset)
    {
        GetComponent<AudioSource>().PlayOneShot(shootSpike);

        GameObject newSpike = Instantiate(spikeStarter, SpikeSpawnPoint.transform.position + offset, transform.localRotation, worldSpikes.transform);
        float spikeScale = 2f * transform.localScale.x;
        newSpike.transform.localScale = new Vector3(spikeScale, spikeScale, spikeScale);
        newSpike.AddComponent<SpikeController>();
        newSpike.GetComponent<SpikeController>().target = target;
        newSpike.GetComponent<SpikeController>().boss = gameObject;

        Vector3 targetPosition = target.transform.position;
        Vector3 spikePosition = newSpike.transform.position;

        newSpike.transform.LookAt(target.transform);
        newSpike.transform.Rotate(new Vector3(90, 0, 0));

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
        transform.localEulerAngles = rotation + (bodyTarget - rotation) * turnSpeed;
    }

    int attackMode = 0;
    bool attacking = false;
    bool attackReady = false;

    int attackDelay = 300;
    int spikeCounter = 0;

    void Attack(int counter)
    {

        //no attack
        if (attackMode == 0)
        {
            if (counter % attackDelay == 0)
            {
                spikeCounter = 0;
                attackMode = Mathf.CeilToInt(Random.value*3f);
            }
        }
        //sky attack
        else if (attackMode == 1)
        {
            int spikeDelay = 50;
            int spikeCount = 5;
            float attackSpeed = 2f;
            float attackHeight = 20f;
            float inflateValue = 1.5f;

            if (counter % spikeDelay == 0)
            {
                //attack start
                if (spikeCounter == 0)
                {
                    Fly(attackHeight);
                    moveSpeed *= attackSpeed;
                    inflateTarget *= inflateValue;
                    inflateSpeed *= attackSpeed;
                }
                
                //attack
                LaunchSpike(Vector3.zero);
                spikeCounter++;
            }

            //attack end
            if (spikeCounter == spikeCount)
            {
                attackMode = 0;
                Fly(-attackHeight);
                moveSpeed /= attackSpeed;
                inflateTarget /= inflateValue;
                inflateSpeed /= attackSpeed;
            }
        } 
        //triple attack
        else if (attackMode == 2)
        {
            int spikeDelay = 150;
            int spikeCount = 2;
            float attackSpeed = 10f;
            float attackHeight = .1f;
            float inflateValue = 1.5f;

            if (counter % spikeDelay == 0)
            {
                //attack start
                if (spikeCounter == 0)
                {
                    Fly(attackHeight);
                    moveSpeed *= attackSpeed;
                    inflateTarget *= inflateValue;
                }

                //attack

                float spread = 5f;
                LaunchSpike(new Vector3(0, spread, spread));
                LaunchSpike(new Vector3(0, 0, 0));
                LaunchSpike(new Vector3(0, spread, -spread));
                spikeCounter++;
            }

            //attack end
            if (spikeCounter == spikeCount)
            {
                attackMode = 0;
                Fly(-attackHeight);
                moveSpeed /= attackSpeed;
                inflateTarget /= inflateValue;
            }
        }
        //dual attack
        else if (attackMode == 3)
        {
            int spikeDelay = 100;
            int spikeCount = 3;
            float attackSpeed = 1f;
            float attackHeight = 0f;
            float inflateValue = 1.5f;

            if (counter % spikeDelay == 0)
            {
                //attack start
                if (spikeCounter == 0)
                {
                    Fly(attackHeight);
                    moveSpeed *= attackSpeed;
                    inflateTarget *= inflateValue;
                }

                //attack

                float spread = 5f;
                LaunchSpike(new Vector3(0, spread, spread));
                LaunchSpike(new Vector3(0, spread, -spread));
                spikeCounter++;
            }

            //attack end
            if (spikeCounter == spikeCount)
            {
                attackMode = 0;
                Fly(-attackHeight);
                moveSpeed /= attackSpeed;
                inflateTarget /= inflateValue;
            }
        }

    }

    float DamageValue() {
        return ((maxHealth - currentHealth) / maxHealth < 0) ? 0 : (maxHealth - currentHealth) / maxHealth; 
    }

    public void OnHit()
    {
        GetComponent<AudioSource>().PlayOneShot(hurt);

        currentHealth -= spikeDamage;
        Debug.Log(currentHealth);
        Color eyeColor = new Color(1, 1 - DamageValue(), 1 - DamageValue());
        leftEye.GetComponent<MeshRenderer>().materials[0].color = eyeColor;
        rightEye.GetComponent<MeshRenderer>().materials[0].color = eyeColor;

        eyeSpeed *= .8f;
        inflateTarget += breatheValue;
        moveTarget += breatheValue;

        if (currentHealth <= 0)
        {
            Debug.Log("Fish dead");
            
        }
        
    }

    private void Fly(float distance)
    {
        moveTarget += distance;
    }

    private void Puff(float scale)
    {

        transform.localScale = transform.localScale * (scale);
    }
}
