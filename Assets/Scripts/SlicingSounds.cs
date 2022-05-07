using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlicingSounds : MonoBehaviour
{
    public List<AudioClip> audioClips;
    public AudioClip currentClip;
    public AudioSource source;
 
    void Start()
    {
        source = GetComponent<AudioSource>();
    }
 
    void Update()
    {

    }

    public void OnCollisionEnter(Collision other)
    {
        if((other.gameObject.CompareTag("Puffer")) ||(other.gameObject.CompareTag("Salmon")) || (other.gameObject.CompareTag("Cod")))
        {
            if (!source.isPlaying)
            {
                currentClip = audioClips[0];
                source.clip = currentClip;
                source.Play();
            }
        } else if((other.gameObject.CompareTag("GreenOnion")) || (other.gameObject.CompareTag("SeaWeed")) | (other.gameObject.CompareTag("Cucumber")))
        {
            if (!source.isPlaying)
            {
                currentClip = audioClips[1];
                source.clip = currentClip;
                source.Play();
            }
        }
    }
}