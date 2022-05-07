using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlicerFix : MonoBehaviour
{
    public GameObject cucumberSlicePrefab;
    public GameObject greenOnionSlicePrefab;
    public GameObject pufferSlicePrefab;
    public GameObject salmonSlicePrefab;
    public GameObject codSlicePrefab;
    public GameObject seaweedSlicePrefab;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public GameObject[] SliceGood(GameObject objectToCut, GameObject objectAfterCut, float scaleSizeAfter)
    {
        //Get the current mesh and its verts and tris
        Mesh mesh = objectToCut.GetComponent<MeshFilter>().mesh;

        //Sliceable sliceable = objectToCut.GetComponent<Sliceable>();

        GameObject positiveObject = Instantiate(objectAfterCut, objectToCut.transform.position, objectToCut.transform.rotation);
        positiveObject.name = string.Format("{0}_positive", objectToCut.name);

        GameObject negativeObject = Instantiate(objectAfterCut, objectToCut.transform.position, objectToCut.transform.rotation);

        negativeObject.name = string.Format("{0}_negative", objectToCut.name);

        positiveObject.transform.localScale = objectToCut.transform.localScale * scaleSizeAfter;
        negativeObject.transform.localScale = objectToCut.transform.localScale * scaleSizeAfter;


        return new GameObject[] { positiveObject, negativeObject };
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Cucumber"))
        {
            GameObject[] slices = SliceGood(other.gameObject, cucumberSlicePrefab, 1f);
            Destroy(other.gameObject);
        }
        else if(other.gameObject.CompareTag("GreenOnion"))
        {
            GameObject[] slices = SliceGood(other.gameObject, greenOnionSlicePrefab, 2.5f);
            Destroy(other.gameObject);
        }
        else if(other.gameObject.CompareTag("Cod"))
        {
            GameObject[] slices = SliceGood(other.gameObject, codSlicePrefab, .5f);
            Destroy(other.gameObject);
        }
        else if(other.gameObject.CompareTag("Puffer"))
        {
            GameObject[] slices = SliceGood(other.gameObject, pufferSlicePrefab, .5f);
            Destroy(other.gameObject);
        }
        else if(other.gameObject.CompareTag("SeaWeed"))
        {
            GameObject[] slices = SliceGood(other.gameObject, seaweedSlicePrefab, .5f);
            Destroy(other.gameObject);
        }
        else if(other.gameObject.CompareTag("Salmon"))
        {
            GameObject[] slices = SliceGood(other.gameObject, salmonSlicePrefab, .5f);
            Destroy(other.gameObject);
        }
        

    }
}
