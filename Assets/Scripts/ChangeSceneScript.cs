using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneScript : MonoBehaviour
    {
        public string loadLevelName;

        public void OnButtonDown(Hand fromHand)
        {
            UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevelName);
        }

        public void OnButtonUp(Hand fromHand)
        {
            
        }


    }
}