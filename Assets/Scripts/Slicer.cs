using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Rendering;
using Valve.VR.InteractionSystem;

namespace Assets.Scripts
{
    class Slicer : MonoBehaviour
    {
        public static Slicer instance;

        void Start()
        {
            instance = this;
        }

        /// <summary>
        /// Slice the object by the plane 
        /// </summary>
        /// <param name="plane"></param>
        /// <param name="objectToCut"></param>
        /// <returns></returns>
        public GameObject[] Slice(Plane plane, GameObject objectToCut)
        {            
            //Get the current mesh and its verts and tris
            Mesh mesh = objectToCut.GetComponent<MeshFilter>().mesh;
            var a = mesh.GetSubMesh(0);
            Sliceable sliceable = objectToCut.GetComponent<Sliceable>();

            if(sliceable == null)
            {
                //throw new NotSupportedException("Cannot slice non sliceable object, add the sliceable script to the object or inherit from sliceable to support slicing");
            }
                            //Create left and right slice of hollow object
            SlicesMetadata slicesMeta = new SlicesMetadata(plane, mesh, sliceable.IsSolid, sliceable.ReverseWireTriangles, sliceable.ShareVertices, sliceable.SmoothVertices);            

            GameObject positiveObject = CreateMeshGameObject(objectToCut);
            positiveObject.name = string.Format("{0}_positive", objectToCut.name);

            GameObject negativeObject = CreateMeshGameObject(objectToCut);
            negativeObject.name = string.Format("{0}_negative", objectToCut.name);

            var positiveSideMeshData = slicesMeta.PositiveSideMesh;
            var negativeSideMeshData = slicesMeta.NegativeSideMesh;

            positiveObject.GetComponent<MeshFilter>().mesh = positiveSideMeshData;
            negativeObject.GetComponent<MeshFilter>().mesh = negativeSideMeshData;

            SetupColliders(positiveObject, positiveSideMeshData);
            SetupColliders(negativeObject, negativeSideMeshData);

            return new GameObject[] { positiveObject, negativeObject};

        }        

        /// <summary>
        /// Creates the default mesh game object.
        /// </summary>
        /// <param name="originalObject">The original object.</param>
        /// <returns></returns>
        private GameObject CreateMeshGameObject(GameObject originalObject)
        {
            var originalMaterial = originalObject.GetComponent<MeshRenderer>().materials;

            GameObject meshGameObject = Instantiate(originalObject.GetComponent<Topping>().slice);

            meshGameObject.GetComponent<MeshRenderer>().materials = originalMaterial;

            meshGameObject.transform.localScale = originalObject.transform.localScale;
            meshGameObject.transform.rotation = originalObject.transform.rotation;
            meshGameObject.transform.position = originalObject.transform.position;

            meshGameObject.tag = originalObject.tag;

            //meshGameObject.AddComponent<Interactable>();
            //meshGameObject.AddComponent<Throwable>();

            return meshGameObject;
        }

        /// <summary>
        /// Add mesh collider and rigid body to game object
        /// </summary>
        /// <param name="refGameObject"></param>
        /// <param name="mesh"></param>
        private void SetupColliders(GameObject refGameObject, Mesh mesh)
        {                     
            MeshCollider meshCollider = refGameObject.GetComponent<MeshCollider>();
            meshCollider.sharedMesh = mesh;
            meshCollider.convex = true;
        }
    }
}
