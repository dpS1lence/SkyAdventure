// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Toxic Sphere"
{
	Properties
	{
		_Mask("Mask", 2D) = "white" {}
		_Color("Color", Color) = (0.1790029,0.9528302,0.1573068,1)
		_EmissionIntensity("Emission Intensity", Float) = 1
		_Dissolve("Dissolve", Range( -1 , 1)) = 0
		_MaskHardnessMin("Mask Hardness Min", Range( 0 , 1)) = 0
		_MaskHardnessMax("Mask Hardness Max", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

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
			

			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
			};

			uniform float _EmissionIntensity;
			uniform float4 _Color;
			uniform float _MaskHardnessMin;
			uniform float _MaskHardnessMax;
			uniform sampler2D _Mask;
			uniform float4 _Mask_ST;
			uniform float _Dissolve;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				o.ase_color = v.color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
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
				float2 uv_Mask = i.ase_texcoord1.xy * _Mask_ST.xy + _Mask_ST.zw;
				float lerpResult17 = lerp( _Dissolve , 1.0 , i.ase_color.a);
				float smoothstepResult11 = smoothstep( _MaskHardnessMin , _MaskHardnessMax , saturate( ( tex2D( _Mask, uv_Mask ).r - lerpResult17 ) ));
				float4 appendResult7 = (float4((( _EmissionIntensity * _Color )).rgb , smoothstepResult11));
				
				
				finalColor = appendResult7;
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
-1857;201;1857;684;2136.5;-53;1;True;False
Node;AmplifyShaderEditor.VertexColorNode;14;-1271.5,453.5;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9;-1469.5,292.5;Inherit;False;Property;_Dissolve;Dissolve;3;0;Create;True;0;0;False;0;False;0;-0.237;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-1287.5,-70.5;Inherit;True;Property;_Mask;Mask;0;0;Create;True;0;0;False;0;False;-1;0599eaf09cd5d734f847e95c9d63f93c;0599eaf09cd5d734f847e95c9d63f93c;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;17;-1093.5,306.5;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;3;-592.5,-263.5;Inherit;False;Property;_Color;Color;1;0;Create;True;0;0;False;0;False;0.1790029,0.9528302,0.1573068,1;0.6143576,0.8113207,0.210484,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;4;-590.5,-391.5;Inherit;False;Property;_EmissionIntensity;Emission Intensity;2;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;8;-829.5,56.5;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;5;-335.5,-265.5;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;12;-961.5,447.5;Inherit;False;Property;_MaskHardnessMin;Mask Hardness Min;4;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;13;-909.5,570.5;Inherit;False;Property;_MaskHardnessMax;Mask Hardness Max;5;0;Create;True;0;0;False;0;False;0;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;10;-553.5,138.5;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;6;-155.5,-167.5;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;11;-248.5,68.5;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;7;69.5,-65.5;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;309,-22;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Toxic Sphere;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;17;0;9;0
WireConnection;17;2;14;4
WireConnection;8;0;1;1
WireConnection;8;1;17;0
WireConnection;5;0;4;0
WireConnection;5;1;3;0
WireConnection;10;0;8;0
WireConnection;6;0;5;0
WireConnection;11;0;10;0
WireConnection;11;1;12;0
WireConnection;11;2;13;0
WireConnection;7;0;6;0
WireConnection;7;3;11;0
WireConnection;0;0;7;0
ASEEND*/
//CHKSM=2E02D38D172B0108A0B8A385D64C1557D075DAAC