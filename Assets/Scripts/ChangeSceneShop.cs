using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;
//ChangeSceneShop

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneShop : MonoBehaviour
    {
        public string loadLevelName;

        void Start()
        {

        }

        public void OnButtonDown(Hand fromHand)
        {
            UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevelName);
        }

        public void OnButtonUp(Hand fromHand)
        {

        }

    }
}