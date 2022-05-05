using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneToShop : MonoBehaviour
    {

        public bool cutscene = false;
        private int cutsceneLength = 1200;
        private int counter = 0;

        public string loadLevelName;

        void Start()
        {

        }

        void FixedUpdate()
        {
            counter++;
            if (cutscene && counter > cutsceneLength)
            {
                SceneManager.LoadScene(loadLevelName);
            }
        }
    }
}