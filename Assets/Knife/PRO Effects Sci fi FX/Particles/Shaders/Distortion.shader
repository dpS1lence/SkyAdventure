// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Distortion"
{
	Properties
	{
		_NormalMap("NormalMap", 2D) = "bump" {}
		_NormalMap2("NormalMap2", 2D) = "bump" {}
		_DistortionAmount2("DistortionAmount2", Float) = 1
		_DistortionAmount("DistortionAmount", Float) = 1
		_AlphaMask("AlphaMask", 2D) = "white" {}
		[Toggle(_TWONORMALS_ON)] _TwoNormals("TwoNormals", Float) = 0
		_DistortionSpeed2("DistortionSpeed2", Vector) = (0,0,0,0)
		_DistortionSpeed("DistortionSpeed", Vector) = (0,0,0,0)
		[Toggle(_DEBUG_ON)] _Debug("Debug", Float) = 0
		[Toggle(_SCREENSPACEUV_ON)] _ScreenSpaceUV("ScreenSpaceUV", Float) = 0
		_Tiling2("Tiling2", Float) = 1
		_Tiling1("Tiling1", Float) = 1
		_FinalDistortion("FinalDistortion", Range( -1 , 1)) = 1
		[Toggle(_RADIALSECONDNORMALUV_ON)] _RadialSecondNormalUV("Radial Second Normal UV", Float) = 0
		_LengthScale("Length Scale", Float) = 0
		_RadialScale("Radial Scale", Float) = 1
		_DepthFade("Depth Fade", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_Cull]
		GrabPass{ }
		CGPROGRAM
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 4.0
		#pragma shader_feature _DEBUG_ON
		#pragma shader_feature _SCREENSPACEUV_ON
		#pragma shader_feature _TWONORMALS_ON
		#pragma shader_feature_local _RADIALSECONDNORMALUV_ON
		#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
		#else
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
		#endif
		#pragma surface surf Unlit alpha:fade keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float4 screenPos;
			float4 vertexColor : COLOR;
			float2 uv_texcoord;
		};

		uniform float _Cull;
		ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
		uniform float _DistortionAmount;
		uniform sampler2D _AlphaMask;
		uniform float4 _AlphaMask_ST;
		uniform float _FinalDistortion;
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float4 _CameraDepthTexture_TexelSize;
		uniform float _DepthFade;
		uniform sampler2D _NormalMap;
		uniform float2 _DistortionSpeed;
		uniform float4 _NormalMap_ST;
		uniform float _Tiling1;
		uniform float _DistortionAmount2;
		uniform sampler2D _NormalMap2;
		uniform float2 _DistortionSpeed2;
		uniform float4 _NormalMap2_ST;
		uniform float _Tiling2;
		uniform float _RadialScale;
		uniform float _LengthScale;


		inline float4 ASE_ComputeGrabScreenPos( float4 pos )
		{
			#if UNITY_UV_STARTS_AT_TOP
			float scale = -1.0;
			#else
			float scale = 1.0;
			#endif
			float4 o = pos;
			o.y = pos.w * 0.5f;
			o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
			return o;
		}


		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float2 uv_AlphaMask = i.uv_texcoord * _AlphaMask_ST.xy + _AlphaMask_ST.zw;
			float4 tex2DNode9 = tex2D( _AlphaMask, uv_AlphaMask );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float screenDepth49 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float distanceDepth49 = saturate( abs( ( screenDepth49 - LinearEyeDepth( ase_screenPosNorm.z ) ) / ( _DepthFade ) ) );
			float soft_depth51 = distanceDepth49;
			float2 uv0_NormalMap = i.uv_texcoord * _NormalMap_ST.xy + _NormalMap_ST.zw;
			float2 temp_output_28_0 = (ase_screenPosNorm).xy;
			#ifdef _SCREENSPACEUV_ON
				float2 staticSwitch25 = temp_output_28_0;
			#else
				float2 staticSwitch25 = uv0_NormalMap;
			#endif
			float2 panner16 = ( 1.0 * _Time.y * _DistortionSpeed + ( staticSwitch25 * _Tiling1 ));
			float3 tex2DNode1 = UnpackScaleNormal( tex2D( _NormalMap, panner16 ), ( _DistortionAmount * i.vertexColor.a * tex2DNode9.r * _FinalDistortion * soft_depth51 ) );
			float3 appendResult54 = (float3(tex2DNode1.r , -tex2DNode1.g , tex2DNode1.b));
			float2 uv0_NormalMap2 = i.uv_texcoord * _NormalMap2_ST.xy + _NormalMap2_ST.zw;
			#ifdef _SCREENSPACEUV_ON
				float2 staticSwitch26 = temp_output_28_0;
			#else
				float2 staticSwitch26 = uv0_NormalMap2;
			#endif
			float2 temp_output_32_0 = ( staticSwitch26 * _Tiling2 );
			float2 panner17 = ( 1.0 * _Time.y * _DistortionSpeed2 + temp_output_32_0);
			float2 CenteredUV15_g1 = ( temp_output_32_0 - ( _Tiling2 * float2( 0.5,0.5 ) ) );
			float2 break17_g1 = CenteredUV15_g1;
			float2 appendResult23_g1 = (float2(( length( CenteredUV15_g1 ) * _RadialScale * 2.0 ) , ( atan2( break17_g1.x , break17_g1.y ) * ( 1.0 / 6.28318548202515 ) * _LengthScale )));
			float2 panner40 = ( 1.0 * _Time.y * _DistortionSpeed2 + appendResult23_g1);
			#ifdef _RADIALSECONDNORMALUV_ON
				float2 staticSwitch42 = frac( panner40 );
			#else
				float2 staticSwitch42 = panner17;
			#endif
			float3 tex2DNode11 = UnpackScaleNormal( tex2D( _NormalMap2, staticSwitch42 ), ( _DistortionAmount2 * tex2DNode9.r * i.vertexColor.a * soft_depth51 ) );
			float3 appendResult57 = (float3(tex2DNode11.r , -tex2DNode11.g , tex2DNode11.b));
			#ifdef _TWONORMALS_ON
				float3 staticSwitch10 = appendResult57;
			#else
				float3 staticSwitch10 = float3( 0,0,0 );
			#endif
			float3 normalizeResult13 = normalize( ( appendResult54 + staticSwitch10 ) );
			float4 screenColor6 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,( ase_grabScreenPosNorm + float4( normalizeResult13 , 0.0 ) ).xy);
			#ifdef _DEBUG_ON
				float4 staticSwitch24 = tex2DNode9;
			#else
				float4 staticSwitch24 = screenColor6;
			#endif
			o.Emission = staticSwitch24.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18100
-1857;335;1857;684;1382.233;-187.9198;1;True;False
Node;AmplifyShaderEditor.ScreenPosInputsNode;27;-3758.998,294.2185;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;28;-3531.998,283.2185;Inherit;False;True;True;False;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;23;-3804.332,623.5005;Inherit;False;0;11;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;31;-2894.666,682.6489;Inherit;False;Property;_Tiling2;Tiling2;10;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;47;-3246.032,1355.066;Inherit;False;Constant;_Vector0;Vector 0;16;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;26;-3053.998,511.2185;Inherit;False;Property;_ScreenSpaceUV;ScreenSpaceUV;9;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;25;False;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;48;-3004.408,1375.896;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;45;-3004.501,1537.832;Inherit;False;Property;_RadialScale;Radial Scale;15;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;32;-2716.047,561.0468;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-2985.501,1637.832;Inherit;False;Property;_LengthScale;Length Scale;14;0;Create;True;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-4425.035,1112.435;Inherit;False;Property;_DepthFade;Depth Fade;16;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;39;-2764.01,1451.114;Inherit;True;Polar Coordinates;-1;;1;7dab8e02884cf104ebefaa2e788e4162;0;4;1;FLOAT2;0,0;False;2;FLOAT2;0.25,0.25;False;3;FLOAT;1;False;4;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;22;-2668.911,1068.287;Inherit;False;Property;_DistortionSpeed2;DistortionSpeed2;6;0;Create;True;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DepthFade;49;-4144.035,1059.435;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;21;-3601.431,-203.3576;Inherit;False;0;1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;40;-2351.011,1478.114;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;-1,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-3879.802,1051.623;Inherit;False;soft_depth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;52;-2283.802,234.623;Inherit;False;51;soft_depth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;3;-2669.5,119.5;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FractNode;41;-2054.012,1460.114;Inherit;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;17;-2338.003,847.5898;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-2400.933,528.5466;Inherit;False;Property;_DistortionAmount2;DistortionAmount2;2;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;9;-2628.5,288.5;Inherit;True;Property;_AlphaMask;AlphaMask;4;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;29;-3039.998,-4.781494;Inherit;False;Property;_Tiling1;Tiling1;11;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;25;-3224.172,-201.2526;Inherit;False;Property;_ScreenSpaceUV;ScreenSpaceUV;9;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;2;-2609.5,-110.5;Inherit;False;Property;_DistortionAmount;DistortionAmount;3;0;Create;True;0;0;False;0;False;1;0.2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-2697.893,-10.90457;Inherit;False;Property;_FinalDistortion;FinalDistortion;12;0;Create;True;0;0;False;0;False;1;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;20;-2415.931,-209.4576;Inherit;False;Property;_DistortionSpeed;DistortionSpeed;7;0;Create;True;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;30;-2863.998,-197.7815;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;42;-2023.823,814.6749;Inherit;False;Property;_RadialSecondNormalUV;Radial Second Normal UV;13;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;14;-2033.933,433.5466;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;4;-2185.5,28.5;Inherit;False;5;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;16;-2109.931,-340.4576;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;11;-1834.933,421.5466;Inherit;True;Property;_NormalMap2;NormalMap2;1;0;Create;True;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;64;-1426.508,584.138;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;63;-1492.808,417.738;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;62;-1506.708,483.138;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-1814.5,8.5;Inherit;True;Property;_NormalMap;NormalMap;0;0;Create;True;0;0;False;0;False;-1;None;5ad25c2f13d1f084f9051db6fe99f2df;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;66;-1442.108,32.93798;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;65;-1485.908,89.23798;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;67;-1443.408,186.338;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;57;-1339.358,385.6381;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;10;-1194.733,334.0466;Inherit;False;Property;_TwoNormals;TwoNormals;5;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;54;-1303.955,32.03796;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;12;-1133.933,53.54663;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GrabScreenPosition;5;-1006.5,-265.5;Inherit;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;13;-987.9326,82.54663;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8;-693.5,-74.5;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenColorNode;6;-354.2642,-37.43468;Inherit;False;Global;_GrabScreen0;Grab Screen 0;2;0;Create;True;0;0;False;0;False;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;24;-195.0104,185.1603;Inherit;False;Property;_Debug;Debug;8;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;68;-180.4866,610.1821;Inherit;False;Property;_Cull;Cull;17;1;[Enum];Create;True;0;1;UnityEngine.Rendering.CullMode;True;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;45,-27;Float;False;True;-1;4;ASEMaterialInspector;0;0;Unlit;Knife/Distortion;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;2;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Spherical;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;68;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;28;0;27;0
WireConnection;26;1;23;0
WireConnection;26;0;28;0
WireConnection;48;0;31;0
WireConnection;48;1;47;0
WireConnection;32;0;26;0
WireConnection;32;1;31;0
WireConnection;39;1;32;0
WireConnection;39;2;48;0
WireConnection;39;3;45;0
WireConnection;39;4;46;0
WireConnection;49;0;50;0
WireConnection;40;0;39;0
WireConnection;40;2;22;0
WireConnection;51;0;49;0
WireConnection;41;0;40;0
WireConnection;17;0;32;0
WireConnection;17;2;22;0
WireConnection;25;1;21;0
WireConnection;25;0;28;0
WireConnection;30;0;25;0
WireConnection;30;1;29;0
WireConnection;42;1;17;0
WireConnection;42;0;41;0
WireConnection;14;0;15;0
WireConnection;14;1;9;1
WireConnection;14;2;3;4
WireConnection;14;3;52;0
WireConnection;4;0;2;0
WireConnection;4;1;3;4
WireConnection;4;2;9;1
WireConnection;4;3;37;0
WireConnection;4;4;52;0
WireConnection;16;0;30;0
WireConnection;16;2;20;0
WireConnection;11;1;42;0
WireConnection;11;5;14;0
WireConnection;64;0;11;3
WireConnection;63;0;11;1
WireConnection;62;0;11;2
WireConnection;1;1;16;0
WireConnection;1;5;4;0
WireConnection;66;0;1;1
WireConnection;65;0;1;2
WireConnection;67;0;1;3
WireConnection;57;0;63;0
WireConnection;57;1;62;0
WireConnection;57;2;64;0
WireConnection;10;0;57;0
WireConnection;54;0;66;0
WireConnection;54;1;65;0
WireConnection;54;2;67;0
WireConnection;12;0;54;0
WireConnection;12;1;10;0
WireConnection;13;0;12;0
WireConnection;8;0;5;0
WireConnection;8;1;13;0
WireConnection;6;0;8;0
WireConnection;24;1;6;0
WireConnection;24;0;9;0
WireConnection;0;2;24;0
ASEEND*/
//CHKSM=57959F853A47752D11EAE93D62DEB88125652933