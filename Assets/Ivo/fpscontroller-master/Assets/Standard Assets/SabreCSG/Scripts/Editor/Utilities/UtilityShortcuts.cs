using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditorInternal;
using System.IO;
using System.Reflection;

namespace Sabresaurus.SabreCSG
{
	public class UtilityShortcuts : MonoBehaviour
	{
		[MenuItem("GameObject/Create CSG", false, 30)]
		static void CreateNewCSGObject()
		{
			// Create objects to hold the CSG Model and Work Brush (with associated scripts attached)
			

			// The automatic lightmapping conflicts when dealing with small brush counts, so default to user baking
			// The user can change this back to Auto if they want, but generally that'll only be an issue when they've
			// got a few brushes.
			Lightmapping.giWorkflowMode = Lightmapping.GIWorkflowMode.OnDemand;
		}
		
		static void Rebuild()
		{

			// Build the first csg model that is currently being edited
		}

//		[MenuItem("SabreCSG/About")]
//		static void ShowAboutDialog()
//		{
//			string message = "Version " + CSGModel.VERSION_STRING + 
//				"\nhttp://www.sabrecsg.com";
//			EditorUtility.DisplayDialog("SabreCSG", message, "Close");
//		}
		
		[MenuItem("Edit/Reset Scene Camera")]
		static void ResetSceneViewCamera()
		{
			// Sometimes have issues with the camera locking up, resetting both current tool and the view tool seems
			// to fix the issue. Generally this seems to be due to not consuming events correctly
			Tools.viewTool = ViewTool.None;
			Tools.current = UnityEditor.Tool.None;
		}

		[MenuItem("Window/CSG 4 Split")]
		static void CSG4Split()
		{
			string layoutsPath = Path.Combine(InternalEditorUtility.unityPreferencesFolder, "Layouts");
			string filePath = Path.Combine(layoutsPath, "4 Split.wlt");

			EditorUtility.LoadWindowLayout(filePath);

			for (int i = 0; i < 4; i++) 
			{
				SceneView sceneView = ((SceneView)SceneView.sceneViews[i]);
			}
			SceneView.RepaintAll();
		}

		private static SceneView.SceneViewState GetSceneViewState(SceneView sceneView)
		{
			// Unfortunately the SceneViewState (e.g. show fog, show skybox) is not exposed, so we need to reflect it
			BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Instance;
			FieldInfo fieldInfo = typeof(SceneView).GetField("m_SceneViewState", bindingFlags);
			return fieldInfo.GetValue(sceneView) as SceneView.SceneViewState;
		}
	}
}