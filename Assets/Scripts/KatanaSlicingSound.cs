using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KatanaSlicingSound : MonoBehaviour
{
    public List<AudioClip> audioClips;
    public AudioClip currentClip;
    public AudioSource source;

    // Start is called before the first frame update
    void Start()
    {
        source = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Cucumber"))
        {
            if (!source.isPlaying)
            {
                currentClip = audioClips[0];
                source.clip = currentClip;
                source.Play();
            }
        }
        
    }
}
