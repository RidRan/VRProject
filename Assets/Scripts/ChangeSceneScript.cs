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
                if (data.totalTickets <= 5)
                {
                    UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel1Name);
                }
                else if (data.totalTickets > 5)
                {
                    UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel2Name);
                }
            }
        }
    }
}

/*
using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneScript : MonoBehaviour
    {
        private TicketManager ticketManager;

        public string loadLevel1Name;

        public string loadLevel2Name;
        public bool cutscene = false;
        private int cutsceneLength = 1200;
        private int counter = 0;

        void Start()
	    {
            ticketManager = GameObject.FindGameObjectWithTag("TicketManager").GetComponent<TicketManager>();

        }

        void FixedUpdate()
        {
            counter++;
            if (cutscene && counter > cutsceneLength)
            {
                UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel1Name);
            }
        }


        public void OnButtonDown(Hand fromHand)
        {
            if (ticketManager.data.totalTickets <= 5)
			{
                UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel1Name);
			} else if (ticketManager.data.totalTickets > 5)
            {
                UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevel2Name);
            }
        }

        public void OnButtonUp(Hand fromHand)
        {
            
        }


    }
}
*/