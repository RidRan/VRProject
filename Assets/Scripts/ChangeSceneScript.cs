using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ChangeSceneScript : MonoBehaviour
    {
        public string loadLevelName;
        public bool cutscene = false;
        private int cutsceneLength = 600;
        private int counter = 0;

        void FixedUpdate()
        {
            counter++;
            if (cutscene && counter > cutsceneLength)
            {
                UnityEngine.SceneManagement.SceneManager.LoadScene(loadLevelName);
            }
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