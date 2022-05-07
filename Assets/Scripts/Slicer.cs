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

            Sliceable sliceable = objectToCut.GetComponent<Sliceable>();

            //Create left and right slice of hollow object
            //SlicesMetadata slicesMeta = new SlicesMetadata(plane, mesh, sliceable.IsSolid, sliceable.ReverseWireTriangles, sliceable.ShareVertices, sliceable.SmoothVertices);

            //GameObject positiveObject = CreateMeshGameObject(objectToCut, -1f);
            GameObject positiveObject = Instantiate(objectToCut, objectToCut.transform.position, objectToCut.transform.rotation);
            positiveObject.name = string.Format("{0}_positive", objectToCut.name);

            //GameObject negativeObject = CreateMeshGameObject(objectToCut, 1f);
            GameObject negativeObject = Instantiate(objectToCut, objectToCut.transform.position, objectToCut.transform.rotation);

            negativeObject.name = string.Format("{0}_negative", objectToCut.name);

            positiveObject.transform.localScale = objectToCut.transform.localScale * .5f;
            negativeObject.transform.localScale = objectToCut.transform.localScale * .5f;

            //var positiveSideMeshData = slicesMeta.PositiveSideMesh;
            //var negativeSideMeshData = slicesMeta.NegativeSideMesh;

            //positiveObject.GetComponent<MeshFilter>().mesh = positiveSideMeshData;
            //negativeObject.GetComponent<MeshFilter>().mesh = negativeSideMeshData;

            //SetupColliders(positiveObject, positiveSideMeshData);
            //SetupColliders(negativeObject, negativeSideMeshData);

            return new GameObject[] { positiveObject, negativeObject };
        
        }        

        /// <summary>
        /// Creates the default mesh game object.
        /// </summary>
        /// <param name="originalObject">The original object.</param>
        /// <returns></returns>
        private GameObject CreateMeshGameObject(GameObject originalObject, float direction)
        {
            var originalMaterial = originalObject.GetComponent<MeshRenderer>().materials;

            GameObject meshGameObject = Instantiate(originalObject.GetComponent<Topping>().slice);

            meshGameObject.GetComponent<MeshRenderer>().materials = originalMaterial;

            meshGameObject.transform.localScale = originalObject.transform.localScale * .05f;
            meshGameObject.transform.rotation = originalObject.transform.rotation;
            meshGameObject.transform.position = new Vector3(originalObject.transform.position.x + (.1f* direction), originalObject.transform.position.y, originalObject.transform.position.z);

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
            Rigidbody rb = refGameObject.GetComponent<Rigidbody>();
            rb.useGravity = true;
            rb.isKinematic = false;
        }
    }
}
