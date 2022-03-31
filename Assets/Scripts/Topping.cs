using UnityEngine;

public class Topping : MonoBehaviour
{
    [SerializeField] public GameObject slice;

    public void onPickUpTopping(){
        SushiManager.instance.holding = gameObject;
    }

    public void onDropTopping()
    {
        SushiManager.instance.holding = null;
    }
}
