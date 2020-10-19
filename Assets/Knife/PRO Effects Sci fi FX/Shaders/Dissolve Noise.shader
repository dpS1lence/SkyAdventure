// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Dissolve Noise"
{
	Properties
	{
		_Noise("Noise", 2D) = "white" {}
		_Dissolve("Dissolve", Range( 0 , 2)) = 0
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_DissolveSoftnessMin("Dissolve Softness Min", Range( 0 , 1)) = 0
		_DissolveSoftnessMax("Dissolve Softness Max", Range( 0 , 1)) = 1

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
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
			};

			uniform float4 _Color;
			uniform float _DissolveSoftnessMin;
			uniform float _DissolveSoftnessMax;
			uniform sampler2D _Noise;
			uniform float4 _Noise_ST;
			uniform float _Dissolve;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_color = v.color;
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
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
				float2 uv0_Noise = i.ase_texcoord1.xy * _Noise_ST.xy + _Noise_ST.zw;
				float smoothstepResult10 = smoothstep( _DissolveSoftnessMin , _DissolveSoftnessMax , ( ( tex2D( _Noise, frac( uv0_Noise ) ).r + 1.0 ) - ( _Dissolve * 2.0 ) ));
				float4 appendResult13 = (float4(1.0 , 1.0 , 1.0 , smoothstepResult10));
				
				
				finalColor = ( ( i.ase_color * _Color ) * appendResult13 );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
-1857;201;1857;684;2404.52;763.1993;1.98139;True;False
Node;AmplifyShaderEditor.TextureCoordinatesNode;16;-1732.994,-251.2884;Inherit;False;0;2;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FractNode;18;-1477.994,-261.2884;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;2;-1070,-151.5;Inherit;True;Property;_Noise;Noise;0;0;Create;True;0;0;False;0;False;-1;2140d5caeca76404cadd35cc48f45f10;2140d5caeca76404cadd35cc48f45f10;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;3;-1016.88,158.9666;Inherit;False;Property;_Dissolve;Dissolve;1;0;Create;True;0;0;False;0;False;0;0.38;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;4;-696,-97.5;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-662,210.5;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;12;-333,370.5;Inherit;False;Property;_DissolveSoftnessMax;Dissolve Softness Max;4;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;5;-417,44.5;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-447,308.5;Inherit;False;Property;_DissolveSoftnessMin;Dissolve Softness Min;3;0;Create;True;0;0;False;0;False;0;0.508;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;10;-131,115.5;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;8;-383,-238.5;Inherit;False;Property;_Color;Color;2;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;0.7387708,3.60376,0.9189588,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.VertexColorNode;14;-356,-412.5;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;13;90,20.5;Inherit;False;FLOAT4;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;-88,-219.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9;254,-52.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;824,-108;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Dissolve Noise;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;18;0;16;0
WireConnection;2;1;18;0
WireConnection;4;0;2;1
WireConnection;6;0;3;0
WireConnection;5;0;4;0
WireConnection;5;1;6;0
WireConnection;10;0;5;0
WireConnection;10;1;11;0
WireConnection;10;2;12;0
WireConnection;13;3;10;0
WireConnection;15;0;14;0
WireConnection;15;1;8;0
WireConnection;9;0;15;0
WireConnection;9;1;13;0
WireConnection;1;0;9;0
ASEEND*/
//CHKSM=BAC58B19A8CF0AD7FA08F80FD081B2FAE1544AC2