using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenerateCity : MonoBehaviour
{
    public GameObject starterSection;

    public int numSections;

    // Start is called before the first frame update
    void Start()
    {
        GenerateCitySections();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GenerateCitySections()
    {
        for(int i = -numSections; i < numSections; i++)
        {
            Debug.Log("Generated city section: " + (i + numSections + 1));
            GameObject newSection = Instantiate(starterSection, new Vector3(transform.position.x + 30 * i, transform.position.y, transform.position.z), starterSection.transform.localRotation, transform);
        }
        Destroy(starterSection);
    }
}
