using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SushiLightControler : MonoBehaviour
{
    public static SushiLightControler instance;
    public Material StartTexture;
    public Material GreenTexture;
    public Material RedTexture;
    
    int counter;




    // Start is called before the first frame update
    void Start()
    {
        GetComponent<Renderer>().material = StartTexture;
    }

    // Update is called once per frame
    void Update()
    {
        MeshRenderer meshRenderer = GetComponent<MeshRenderer>();
        counter++;
        if(counter > 300)
        {
            GetComponent<Renderer>().material = StartTexture;
        }
    }

    public void changeLightColor(double number)
    {
        MeshRenderer meshRenderer = GetComponent<MeshRenderer>();

        if (number > .60)
        {
            GetComponent<Renderer>().material = GreenTexture;
            counter = 0;
        }
        else
        {
            GetComponent<Renderer>().material = RedTexture;
            counter = 0;        
        }
    }



}
