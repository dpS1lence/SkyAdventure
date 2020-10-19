// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Trail"
{
	Properties
	{
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_AlphaSoftnessMin("Alpha Softness Min", Range( 0 , 1)) = 0
		_AlphaSoftnessMax("Alpha Softness Max", Range( 0 , 1)) = 1

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Back
		ColorMask RGBA
		ZWrite Off
		ZTest LEqual
		
		
		
		Pass
		{
			Name "Unlit"
			Tags { "LightMode"="ForwardBase" }
			CGPROGRAM

			

			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			//only defining to not throw compilation error over Unity 5.5
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#define ASE_NEEDS_FRAG_COLOR


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_color : COLOR;
			};

			uniform float4 _Color;
			uniform float _AlphaSoftnessMin;
			uniform float _AlphaSoftnessMax;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_color = v.color;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = vertexValue;
				#if ASE_ABSOLUTE_VERTEX_POS
				v.vertex.xyz = vertexValue;
				#else
				v.vertex.xyz += vertexValue;
				#endif
				o.vertex = UnityObjectToClipPos(v.vertex);

#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
#endif
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				fixed4 finalColor;
#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 WorldPosition = i.worldPos;
#endif
				float smoothstepResult10 = smoothstep( _AlphaSoftnessMin , _AlphaSoftnessMax , i.ase_color.a);
				float4 appendResult13 = (float4((( i.ase_color * _Color )).rgb , smoothstepResult10));
				
				
				finalColor = appendResult13;
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
0;208;1857;851;940.66;416.1019;1;True;False
Node;AmplifyShaderEditor.VertexColorNode;14;-578.5139,-314.7744;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;8;-892.6769,-106.1945;Inherit;False;Property;_Color;Color;0;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;4.566374,10.88904,22.36352,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;-88,-219.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;12;-355,424.5;Inherit;False;Property;_AlphaSoftnessMax;Alpha Softness Max;2;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-438,328.5;Inherit;False;Property;_AlphaSoftnessMin;Alpha Softness Min;1;0;Create;True;0;0;False;0;False;0;0.647;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;10;-131,115.5;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;24;67.33997,-170.1019;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;13;278,-19.5;Inherit;False;FLOAT4;4;0;FLOAT3;1,0,0;False;1;FLOAT;1;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;824,-108;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Trail;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;15;0;14;0
WireConnection;15;1;8;0
WireConnection;10;0;14;4
WireConnection;10;1;11;0
WireConnection;10;2;12;0
WireConnection;24;0;15;0
WireConnection;13;0;24;0
WireConnection;13;3;10;0
WireConnection;1;0;13;0
ASEEND*/
//CHKSM=40979F24572CB3B4E49BB87840B61018B68F48E1