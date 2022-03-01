using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenerateBuidlings : MonoBehaviour
{
    public GameObject starter;

    public float startDistance;
    public float endDistance;

    public Vector3 avg;
    public Vector3 std;

    // Start is called before the first frame update
    void Start()
    {
        float distance = startDistance;
        while (distance < endDistance)
        {
            distance += GenerateBuilding(distance);
        }
        Destroy(starter);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private float GenerateBuilding(float distance)
    {
        Vector3 scale = new Vector3(Random.Range(avg.x - std.x, avg.x + std.x), Random.Range(avg.y - std.y, avg.y + std.y), Random.Range(avg.z - std.z, avg.z + std.z));
        
        GameObject newBuilding = Instantiate(starter, new Vector3(distance + scale.x / 2, scale.y / 2, transform.position.z), starter.transform.localRotation, transform);
        newBuilding.transform.localScale = scale;

        return scale.x;
    }
}
