using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Assets.Scripts;

public class CucumberSlice : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Sword"))
        {
            Debug.Log("Cut");

            //Get the point perpendicular to the triangle above which is the normal
            //https://docs.unity3d.com/Manual/ComputingNormalPerpendicularVector.html
            ContactPoint contact = other.contacts[0];
            Vector3 normal = contact.point;

            //Transform the normal so that it is aligned with the object we are slicing's transform.
            Vector3 transformedNormal = ((Vector3)(other.gameObject.transform.localToWorldMatrix.transpose * normal)).normalized;

            Plane plane = new Plane();


            var direction = Vector3.Dot(Vector3.up, transformedNormal);

            //Flip the plane so that we always know which side the positive mesh is on
            if (direction < 0)
            {
                plane = plane.flipped;
            }

            Sliceable sliceable = other.gameObject.GetComponent<Sliceable>();

            if (sliceable != null)
            {
                GameObject[] slices = Slicer.instance.Slice(plane, other.gameObject);
                Destroy(other.gameObject);

                Rigidbody rigidbody = slices[1].GetComponent<Rigidbody>();
                Vector3 newNormal = transformedNormal + Vector3.up * 1;
                rigidbody.AddForce(newNormal, ForceMode.Impulse);
            }
        }
    }
}
