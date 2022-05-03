using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TicketCheck : MonoBehaviour
{
    private TicketManager ticketManager;
    private RollManager rollManager;


    // Start is called before the first frame update
    void Start()
    {
        ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();
        rollManager = GameObject.FindGameObjectWithTag("RollManager").GetComponent<RollManager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    public void OnCollisionEnter(Collision other)
    {
        GameObject child1;
        GameObject child2;
        GameObject child3;
        string baseTag;
        string topping1Tag;
        string topping2Tag;

        if(other.gameObject.CompareTag("Plate"))
        {
            if(other.transform.childCount > 0)
            {
                child1 = other.transform.GetChild(0).gameObject;
                baseTag = child1.tag;

                if(child1.transform.childCount > 0)
                {
                    child2 = child1.transform.GetChild(0).gameObject;
                    topping1Tag = child2.tag;

                    if(child2.transform.childCount > 0)
                    {
                        child3 = child2.transform.GetChild(0).gameObject;
                        topping2Tag = child3.tag;
                    }else
                    {
                        topping2Tag = "None";
                    }
                }else
                {
                    topping1Tag = "None";
                    topping2Tag = "None";
                }
            }else{
                baseTag = "None";
                topping1Tag = "None";
                topping2Tag = "None";
            }

            Debug.Log(baseTag);
            Debug.Log(topping1Tag);
            Debug.Log(topping2Tag);

            double value = rollManager.CompareRoll(baseTag, topping1Tag, topping2Tag);
            Debug.Log(value);
            Destroy(other.gameObject);
            Destroy(gameObject);
            ticketManager.SpawnATicket();
            //StartCoroutine(spawnNewTicket());
        }
    }

    private IEnumerator spawnNewTicket()
    {
		yield return new WaitForSeconds(2);
		ticketManager.SpawnATicket();
    }


}
