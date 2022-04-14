using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateLight : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        float degreesPerSecond = 20;
        private void Update()
        {
            transform.Rotate(new Vector3(0, degreesPerSecond, 0) * Time.deltaTime);
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
