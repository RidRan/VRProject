using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SushiManager : MonoBehaviour
{
    public static SushiManager instance;
    public GameObject holding;
    


    // Start is called before the first frame update
    void Start()
    {
        instance = this;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void onPickUpTopping(GameObject topping){
        holding = topping;
    }


    public void onDropTopping(){
        holding = null;
    }
}
