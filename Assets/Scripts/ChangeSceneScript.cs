using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneScript : MonoBehaviour
    {
        private TicketManager ticketManager;

        public bool cutscene = false;
        private int cutsceneLength = 1200;
        private int counter = 0;

        public string loadLevel1Name;

        public string loadLevel2Name;

        public GameObject saveData;
        public SaveData data;

        void Start()
        {
            GameObject saveDataInstance = GameObject.FindGameObjectWithTag("SaveData");
            if (saveDataInstance == null)
            {
                saveDataInstance = Instantiate(saveData);
            }

            data = saveDataInstance.GetComponent<SaveData>();
        }

        void FixedUpdate()
        {
            counter++;
            if (cutscene && counter > cutsceneLength)
            {
                if (data.totalTickets > 9)
                {
                    UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel2Name);
                }
                else 
                {
                    UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel1Name);
                }
            }
        }
    }
}