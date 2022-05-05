using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Assets.Scripts;

public class CucumberSlice : MonoBehaviour
{
    private CucumberBossController CucumberBoss;

    // Start is called before the first frame update
    void Start()
    {
        CucumberBoss = GameObject.FindGameObjectWithTag("CucumberBossController").GetComponent<CucumberBossController>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Sword"))
        {
            if(gameObject.transform.localScale.x > 55)
            {

                Debug.Log(gameObject.transform.localScale);

                ContactPoint contact = other.contacts[0];
                Vector3 normal = contact.point;

                //Transform the normal so that it is aligned with the object we are slicing's transform.
                Vector3 transformedNormal = ((Vector3)(gameObject.transform.localToWorldMatrix.transpose * normal)).normalized;

                Plane plane = new Plane();

                var direction = Vector3.Dot(Vector3.up, transformedNormal);

                //Flip the plane so that we always know which side the positive mesh is on
                if (direction < 0)
                {
                    plane = plane.flipped;
                }

                //Sliceable sliceable = other.gameObject.GetComponent<Sliceable>();

                GameObject[] slices = Slicer.instance.Slice(plane, gameObject);
                foreach (GameObject go in slices)
                {
                    go.GetComponent<Rigidbody>().useGravity = true;
                }
                Destroy(gameObject);

                Rigidbody rigidbody = slices[1].GetComponent<Rigidbody>();
                Vector3 newNormal = transformedNormal + Vector3.up * 1;
                rigidbody.AddForce(newNormal, ForceMode.Impulse);
                
                CucumberBoss.setBossHealth();
            }
        }
    }
}
