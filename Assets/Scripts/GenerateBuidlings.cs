using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenerateBuidlings : MonoBehaviour
{
    public GameObject starterBuilding;

    public float startDistance;
    public float endDistance;

    public Vector3 avg;
    public Vector3 std;

    // Start is called before the first frame update
    void Start()
    {
        GenerateCitySection();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GenerateCitySection()
    {
        float distance = startDistance;
        while (distance < endDistance)
        {
            distance += GenerateBuilding(distance);
        }
        Destroy(starterBuilding);
    }

    private float GenerateBuilding(float distance)
    {
        Vector3 scale = new Vector3(Random.Range(avg.x - std.x, avg.x + std.x), Random.Range(avg.y - std.y, avg.y + std.y), Random.Range(avg.z - std.z, avg.z + std.z));
        
        GameObject newBuilding = Instantiate(starterBuilding, new Vector3(distance + scale.x / 2 + transform.position.x, scale.y / 2, transform.position.z), starterBuilding.transform.localRotation, transform);
        newBuilding.transform.localScale = scale;

        return scale.x;
    }
}
