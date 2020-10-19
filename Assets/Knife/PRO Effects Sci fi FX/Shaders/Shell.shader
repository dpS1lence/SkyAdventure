// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Shell"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_MainTex("Albedo", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		[NoScaleOffset]_BumpMap("Normal Map", 2D) = "bump" {}
		_NormalScale("Normal Scale", Float) = 1
		_SpecGlossMap("Specular", 2D) = "white" {}
		_Smoothness("Smoothness", Range( 0 , 1)) = 1
		_Emission("Emission", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		[Toggle(_PARTICLECONTROL_ON)] _ParticleControl("Particle Control", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _tex3coord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#pragma target 3.0
		#pragma shader_feature_local _PARTICLECONTROL_ON
		#pragma surface surf StandardSpecular keepalpha addshadow fullforwardshadows 
		#undef TRANSFORM_TEX
		#define TRANSFORM_TEX(tex,name) float4(tex.xy * name##_ST.xy + name##_ST.zw, tex.z, tex.w)
		struct Input
		{
			float2 uv_texcoord;
			float4 vertexColor : COLOR;
			float3 uv_tex3coord;
		};

		uniform float _NormalScale;
		uniform sampler2D _BumpMap;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform float4 _EmissionColor;
		uniform sampler2D _Emission;
		uniform float4 _Emission_ST;
		uniform sampler2D _SpecGlossMap;
		uniform float _Smoothness;
		uniform float _Cutoff = 0.5;

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv0_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			o.Normal = UnpackScaleNormal( tex2D( _BumpMap, uv0_MainTex ), _NormalScale );
			float4 temp_output_3_0 = ( _Color * tex2D( _MainTex, uv0_MainTex ) * i.vertexColor );
			o.Albedo = temp_output_3_0.rgb;
			float2 uv_Emission = i.uv_texcoord * _Emission_ST.xy + _Emission_ST.zw;
			#ifdef _PARTICLECONTROL_ON
				float staticSwitch17 = i.uv_tex3coord.z;
			#else
				float staticSwitch17 = 1.0;
			#endif
			o.Emission = ( _EmissionColor * tex2D( _Emission, uv_Emission ) * staticSwitch17 ).rgb;
			float4 tex2DNode9 = tex2D( _SpecGlossMap, uv0_MainTex );
			o.Specular = tex2DNode9.rgb;
			o.Smoothness = ( tex2DNode9.a * _Smoothness );
			o.Alpha = 1;
			clip( (temp_output_3_0).a - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18100
0;208;1857;851;1416.857;-804.2551;1;True;False
Node;AmplifyShaderEditor.TextureCoordinatesNode;8;-1312.5,147.7;Inherit;False;0;1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;2;-681.5,-270.5;Inherit;False;Property;_Color;Color;2;0;Create;True;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.VertexColorNode;4;-690.5,156.5;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1;-801.5,-59.5;Inherit;True;Property;_MainTex;Albedo;1;0;Create;False;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;16;-951.8823,1657.714;Inherit;False;0;-1;3;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;18;-796.2253,1591.472;Inherit;False;Constant;_Float0;Float 0;10;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;17;-606.9933,1661.014;Inherit;False;Property;_ParticleControl;Particle Control;9;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;13;-669.114,1122.11;Inherit;False;Property;_EmissionColor;Emission Color;8;1;[HDR];Create;True;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;12;-711.6836,1290.909;Inherit;True;Property;_Emission;Emission;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;9;-648.5,647.5;Inherit;True;Property;_SpecGlossMap;Specular;5;0;Create;False;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;7;-733.5,517.5;Inherit;False;Property;_NormalScale;Normal Scale;4;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3;-363.5,-174.5;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-628.5,928.5;Inherit;False;Property;_Smoothness;Smoothness;6;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;11;-287.5,796.5;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;6;-550.5,393.5;Inherit;True;Property;_BumpMap;Normal Map;3;1;[NoScaleOffset];Create;False;0;0;False;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;5;-244.5,-37.5;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;14;-145.5044,1056.015;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;168,-104;Float;False;True;-1;2;ASEMaterialInspector;0;0;StandardSpecular;Knife/Shell;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1;1;8;0
WireConnection;17;1;18;0
WireConnection;17;0;16;3
WireConnection;9;1;8;0
WireConnection;3;0;2;0
WireConnection;3;1;1;0
WireConnection;3;2;4;0
WireConnection;11;0;9;4
WireConnection;11;1;10;0
WireConnection;6;1;8;0
WireConnection;6;5;7;0
WireConnection;5;0;3;0
WireConnection;14;0;13;0
WireConnection;14;1;12;0
WireConnection;14;2;17;0
WireConnection;0;0;3;0
WireConnection;0;1;6;0
WireConnection;0;2;14;0
WireConnection;0;3;9;0
WireConnection;0;4;11;0
WireConnection;0;10;5;0
ASEEND*/
//CHKSM=85FB150572CD8D503C9906646B3FF5078AAD578E