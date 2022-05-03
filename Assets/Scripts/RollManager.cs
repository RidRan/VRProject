using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RollManager : MonoBehaviour
{
    public string baseTag;
    public string topping1Tag;
    public string topping2Tag;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void setRollTags(string b1, string t1, string t2)
    {
        baseTag = b1;
        topping1Tag = t1;
        topping2Tag = t2;
    }

    public double CompareRoll(string b1, string t1, string t2)
    {
        double valuePercent = 0;

        if(string.Compare(b1, baseTag) == 0)
        {
            valuePercent += .34;
        }

        if(string.Compare(t1, topping1Tag) == 0)
        {
            valuePercent += .33;
        }else if(string.Compare(t1, topping2Tag) == 0)
        {
            valuePercent += .15;
        }

        if(string.Compare(t2, topping2Tag) == 0)
        {
            valuePercent += .33;
        }else if(string.Compare(t2, topping1Tag) == 0)
        {
            valuePercent += .15;
        }

        return valuePercent;
    }
}
