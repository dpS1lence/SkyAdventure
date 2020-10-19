// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Intersection"
{
	Properties
	{
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_IntersectionDistance("Intersection Distance", Float) = 1
		[Toggle(_PARTICLE_ON)] _Particle("Particle", Float) = 0
		_AlphaMask("Alpha Mask", 2D) = "white" {}
		_AlphaMaskUVSpeed("Alpha Mask UV Speed", Vector) = (0,0,0,0)

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off
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
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _PARTICLE_ON


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
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
			};

			uniform float4 _Color;
			UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
			uniform float4 _CameraDepthTexture_TexelSize;
			uniform float _IntersectionDistance;
			uniform sampler2D _AlphaMask;
			uniform float2 _AlphaMaskUVSpeed;
			uniform float4 _AlphaMask_ST;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord1 = screenPos;
				
				o.ase_color = v.color;
				o.ase_texcoord2 = v.ase_texcoord;
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
				float4 screenPos = i.ase_texcoord1;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 uv015 = i.ase_texcoord2;
				uv015.xy = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _PARTICLE_ON
				float staticSwitch19 = uv015.z;
				#else
				float staticSwitch19 = 1.0;
				#endif
				float DistanceMultiplier16 = staticSwitch19;
				float screenDepth6 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
				float distanceDepth6 = saturate( abs( ( screenDepth6 - LinearEyeDepth( ase_screenPosNorm.z ) ) / ( ( _IntersectionDistance * DistanceMultiplier16 ) ) ) );
				float2 uv0_AlphaMask = i.ase_texcoord2.xy * _AlphaMask_ST.xy + _AlphaMask_ST.zw;
				float2 panner24 = ( 1.0 * _Time.y * _AlphaMaskUVSpeed + uv0_AlphaMask);
				float4 appendResult10 = (float4((( _Color * i.ase_color )).rgb , ( _Color.a * ( 1.0 - distanceDepth6 ) * i.ase_color.a * tex2D( _AlphaMask, panner24 ).r )));
				
				
				finalColor = appendResult10;
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
0;202;1857;857;2028.668;-346.4904;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;22;-2292.668,756.4904;Inherit;False;Constant;_Float0;Float 0;4;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;15;-2460.668,922.4904;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;19;-2077.668,841.4904;Inherit;False;Property;_Particle;Particle;3;0;Create;True;0;0;False;0;False;0;0;1;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;16;-1816.668,817.4904;Inherit;False;DistanceMultiplier;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21;-1676.668,633.4904;Inherit;False;16;DistanceMultiplier;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1797.5,522.5;Inherit;False;Property;_IntersectionDistance;Intersection Distance;2;0;Create;True;0;0;False;0;False;1;2.36;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;25;-1375.668,833.4904;Inherit;False;0;23;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;26;-1390.668,995.4904;Inherit;False;Property;_AlphaMaskUVSpeed;Alpha Mask UV Speed;5;0;Create;True;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;17;-1392.668,518.4904;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-907.5,-69.5;Inherit;False;Property;_Color;Color;0;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;0.9935119,2.918441,4.636389,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.VertexColorNode;14;-807.2281,549.3338;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;24;-1142.668,852.4904;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DepthFade;6;-1135.5,489.5;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;13;-887.5,448.5;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;5;-531.5,96.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;23;-842.668,747.4904;Inherit;True;Property;_AlphaMask;Alpha Mask;4;0;Create;True;0;0;False;0;False;-1;None;b205647ec83e22c4e81b91e38ff9773f;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;11;-444.5,266.5;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;9;-387.5,103.5;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20;-1632.668,405.4904;Inherit;False;16;DistanceMultiplier;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade;3;-1192.5,269.5;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;10;-91.5,113.5;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-1748.5,295.5;Inherit;False;Property;_IntersectionColorDistance;Intersection Color Distance;1;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;12;-899.5,259.5;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-1375.668,312.4904;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;87,10;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Intersection;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;2;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;19;1;22;0
WireConnection;19;0;15;3
WireConnection;16;0;19;0
WireConnection;17;0;7;0
WireConnection;17;1;21;0
WireConnection;24;0;25;0
WireConnection;24;2;26;0
WireConnection;6;0;17;0
WireConnection;13;0;6;0
WireConnection;5;0;1;0
WireConnection;5;1;14;0
WireConnection;23;1;24;0
WireConnection;11;0;1;4
WireConnection;11;1;13;0
WireConnection;11;2;14;4
WireConnection;11;3;23;1
WireConnection;9;0;5;0
WireConnection;3;0;18;0
WireConnection;10;0;9;0
WireConnection;10;3;11;0
WireConnection;12;0;3;0
WireConnection;18;0;4;0
WireConnection;18;1;20;0
WireConnection;2;0;10;0
ASEEND*/
//CHKSM=7909DC6085DE8C959BAF094BEF6A571B90D9F6F5