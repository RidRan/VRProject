using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SaveData : MonoBehaviour
{

    public int totalTickets = 0; 
    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad(gameObject);
    }


}
