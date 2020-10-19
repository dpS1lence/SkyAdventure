// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Toxic"
{
	Properties
	{
		[NoScaleOffset]_MainTex("Base Color", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		[NoScaleOffset]_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalScale("Normal Scale", Float) = 1
		[NoScaleOffset]_Specular("Specular", 2D) = "white" {}
		_Smoothness("Smoothness", Range( 0 , 1)) = 1
		[NoScaleOffset]_DissolveMask("Dissolve Mask", 2D) = "white" {}
		_Blend("Blend", Range( 0 , 1)) = 0
		_Dissolved("Dissolved", 2D) = "white" {}
		[NoScaleOffset]_DissolvedNormalMap("Dissolved Normal Map", 2D) = "bump" {}
		_DissolvedNormalScale("Dissolved Normal Scale", Float) = 0
		[NoScaleOffset]_DissolvedSpecular("Dissolved Specular", 2D) = "white" {}
		_DissolvedSmoothness("Dissolved Smoothness", Range( 0 , 1)) = 1
		_DissolveHardness("Dissolve Hardness", Range( 0 , 1)) = 0
		_Emissive("Emissive", Float) = 0
		_DepthFadeDistance("Depth Fade Distance", Float) = 0
		[NoScaleOffset]_Emission("Emission", 2D) = "black" {}
		_ShowFraction("Show Fraction", Range( 0 , 1)) = 0
		_ShowHardnessMin("Show Hardness Min", Range( 0 , 1)) = 0
		_ShowHardnessMax("Show Hardness Max", Range( 0 , 1)) = 0
		_Columns("Columns", Float) = 0
		_Rows("Rows", Float) = 0
		_Random("Random", Int) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		struct Input
		{
			float2 uv_texcoord;
			float4 screenPos;
		};

		uniform float _NormalScale;
		uniform sampler2D _NormalMap;
		uniform float _Columns;
		uniform float _Rows;
		uniform int _Random;
		uniform float _DissolvedNormalScale;
		uniform sampler2D _DissolvedNormalMap;
		uniform float _DissolveHardness;
		uniform sampler2D _DissolveMask;
		uniform float _Blend;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform sampler2D _Dissolved;
		uniform sampler2D _Emission;
		uniform float _Emissive;
		uniform sampler2D _Specular;
		uniform float _Smoothness;
		uniform sampler2D _DissolvedSpecular;
		uniform float _DissolvedSmoothness;
		uniform float _ShowHardnessMin;
		uniform float _ShowHardnessMax;
		uniform float _ShowFraction;
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float4 _CameraDepthTexture_TexelSize;
		uniform float _DepthFadeDistance;


		float3 mod3D289( float3 x ) { return x - floor( x / 289.0 ) * 289.0; }

		float4 mod3D289( float4 x ) { return x - floor( x / 289.0 ) * 289.0; }

		float4 permute( float4 x ) { return mod3D289( ( x * 34.0 + 1.0 ) * x ); }

		float4 taylorInvSqrt( float4 r ) { return 1.79284291400159 - r * 0.85373472095314; }

		float snoise( float3 v )
		{
			const float2 C = float2( 1.0 / 6.0, 1.0 / 3.0 );
			float3 i = floor( v + dot( v, C.yyy ) );
			float3 x0 = v - i + dot( i, C.xxx );
			float3 g = step( x0.yzx, x0.xyz );
			float3 l = 1.0 - g;
			float3 i1 = min( g.xyz, l.zxy );
			float3 i2 = max( g.xyz, l.zxy );
			float3 x1 = x0 - i1 + C.xxx;
			float3 x2 = x0 - i2 + C.yyy;
			float3 x3 = x0 - 0.5;
			i = mod3D289( i);
			float4 p = permute( permute( permute( i.z + float4( 0.0, i1.z, i2.z, 1.0 ) ) + i.y + float4( 0.0, i1.y, i2.y, 1.0 ) ) + i.x + float4( 0.0, i1.x, i2.x, 1.0 ) );
			float4 j = p - 49.0 * floor( p / 49.0 );  // mod(p,7*7)
			float4 x_ = floor( j / 7.0 );
			float4 y_ = floor( j - 7.0 * x_ );  // mod(j,N)
			float4 x = ( x_ * 2.0 + 0.5 ) / 7.0 - 1.0;
			float4 y = ( y_ * 2.0 + 0.5 ) / 7.0 - 1.0;
			float4 h = 1.0 - abs( x ) - abs( y );
			float4 b0 = float4( x.xy, y.xy );
			float4 b1 = float4( x.zw, y.zw );
			float4 s0 = floor( b0 ) * 2.0 + 1.0;
			float4 s1 = floor( b1 ) * 2.0 + 1.0;
			float4 sh = -step( h, 0.0 );
			float4 a0 = b0.xzyw + s0.xzyw * sh.xxyy;
			float4 a1 = b1.xzyw + s1.xzyw * sh.zzww;
			float3 g0 = float3( a0.xy, h.x );
			float3 g1 = float3( a0.zw, h.y );
			float3 g2 = float3( a1.xy, h.z );
			float3 g3 = float3( a1.zw, h.w );
			float4 norm = taylorInvSqrt( float4( dot( g0, g0 ), dot( g1, g1 ), dot( g2, g2 ), dot( g3, g3 ) ) );
			g0 *= norm.x;
			g1 *= norm.y;
			g2 *= norm.z;
			g3 *= norm.w;
			float4 m = max( 0.6 - float4( dot( x0, x0 ), dot( x1, x1 ), dot( x2, x2 ), dot( x3, x3 ) ), 0.0 );
			m = m* m;
			m = m* m;
			float4 px = float4( dot( x0, g0 ), dot( x1, g1 ), dot( x2, g2 ), dot( x3, g3 ) );
			return 42.0 * dot( m, px);
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float max_frames166 = ( _Columns * _Rows );
			float3 temp_cast_0 = _Random;
			float simplePerlin3D164 = snoise( temp_cast_0*100.0 );
			simplePerlin3D164 = simplePerlin3D164*0.5 + 0.5;
			// *** BEGIN Flipbook UV Animation vars ***
			// Total tiles of Flipbook Texture
			float fbtotaltiles159 = _Columns * _Rows;
			// Offsets for cols and rows of Flipbook Texture
			float fbcolsoffset159 = 1.0f / _Columns;
			float fbrowsoffset159 = 1.0f / _Rows;
			// Speed of animation
			float fbspeed159 = _Time[ 1 ] * 0.0;
			// UV Tiling (col and row offset)
			float2 fbtiling159 = float2(fbcolsoffset159, fbrowsoffset159);
			// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
			// Calculate current tile linear index
			float fbcurrenttileindex159 = round( fmod( fbspeed159 + ( max_frames166 * simplePerlin3D164 ), fbtotaltiles159) );
			fbcurrenttileindex159 += ( fbcurrenttileindex159 < 0) ? fbtotaltiles159 : 0;
			// Obtain Offset X coordinate from current tile linear index
			float fblinearindextox159 = round ( fmod ( fbcurrenttileindex159, _Columns ) );
			// Multiply Offset X by coloffset
			float fboffsetx159 = fblinearindextox159 * fbcolsoffset159;
			// Obtain Offset Y coordinate from current tile linear index
			float fblinearindextoy159 = round( fmod( ( fbcurrenttileindex159 - fblinearindextox159 ) / _Columns, _Rows ) );
			// Reverse Y to get tiles from Top to Bottom
			fblinearindextoy159 = (int)(_Rows-1) - fblinearindextoy159;
			// Multiply Offset Y by rowoffset
			float fboffsety159 = fblinearindextoy159 * fbrowsoffset159;
			// UV Offset
			float2 fboffset159 = float2(fboffsetx159, fboffsety159);
			// Flipbook UV
			half2 fbuv159 = i.uv_texcoord * fbtiling159 + fboffset159;
			// *** END Flipbook UV Animation vars ***
			float2 final_uv158 = fbuv159;
			float3 base_normal50 = UnpackScaleNormal( tex2D( _NormalMap, final_uv158 ), _NormalScale );
			float3 dissolved_normal77 = UnpackScaleNormal( tex2D( _DissolvedNormalMap, final_uv158 ), _DissolvedNormalScale );
			float smoothstepResult102 = smoothstep( _DissolveHardness , 1.0 , ( 1.0 - saturate( ( (1.0 + (tex2D( _DissolveMask, final_uv158 ).r - 0.0) * (2.0 - 1.0) / (1.0 - 0.0)) - (0.0 + (_Blend - 0.0) * (2.0 - 0.0) / (1.0 - 0.0)) ) ) ));
			float dissolve_blend44 = saturate( smoothstepResult102 );
			float3 lerpResult81 = lerp( base_normal50 , dissolved_normal77 , dissolve_blend44);
			o.Normal = lerpResult81;
			float4 base_color48 = ( _Color * tex2D( _MainTex, final_uv158 ) );
			float4 dissolved_color76 = tex2D( _Dissolved, final_uv158 );
			float4 lerpResult79 = lerp( base_color48 , dissolved_color76 , dissolve_blend44);
			o.Albedo = lerpResult79.rgb;
			float4 emission131 = tex2D( _Emission, final_uv158 );
			float4 lerpResult107 = lerp( ( emission131 * _Emissive ) , float4( 0,0,0,0 ) , dissolve_blend44);
			o.Emission = lerpResult107.rgb;
			float4 tex2DNode133 = tex2D( _Specular, final_uv158 );
			float4 appendResult136 = (float4((tex2DNode133).rgb , ( tex2DNode133.b * _Smoothness )));
			float4 base_specular52 = appendResult136;
			float4 tex2DNode85 = tex2D( _DissolvedSpecular, final_uv158 );
			float4 appendResult92 = (float4((tex2DNode85).rgb , ( tex2DNode85.a * _DissolvedSmoothness )));
			float4 dissolved_specular89 = appendResult92;
			float4 lerpResult96 = lerp( base_specular52 , dissolved_specular89 , dissolve_blend44);
			o.Specular = lerpResult96.xyz;
			o.Smoothness = (lerpResult96).w;
			float smoothstepResult153 = smoothstep( _ShowHardnessMin , _ShowHardnessMax , ( 1.0 - saturate( ( (1.0 + (saturate( ( distance( i.uv_texcoord , float2( 0.5,0.5 ) ) * 2.0 ) ) - 0.0) * (2.0 - 1.0) / (1.0 - 0.0)) - (0.0 + (_ShowFraction - 0.0) * (2.0 - 0.0) / (1.0 - 0.0)) ) ) ));
			float show_mask150 = smoothstepResult153;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float screenDepth124 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float distanceDepth124 = saturate( abs( ( screenDepth124 - LinearEyeDepth( ase_screenPosNorm.z ) ) / ( _DepthFadeDistance ) ) );
			o.Alpha = ( lerpResult79.a * show_mask150 * sign( ( 1.0 - distanceDepth124 ) ) );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular alpha:fade keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
				float4 screenPos : TEXCOORD3;
				float4 tSpace0 : TEXCOORD4;
				float4 tSpace1 : TEXCOORD5;
				float4 tSpace2 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.screenPos = ComputeScreenPos( o.pos );
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.screenPos = IN.screenPos;
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18100
-1857;201;1857;684;4100.286;-206.0956;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;161;-3116.808,-40.53355;Inherit;False;Property;_Rows;Rows;21;0;Create;True;0;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;160;-3124.808,-124.5336;Inherit;False;Property;_Columns;Columns;20;0;Create;True;0;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;165;-2865.808,38.46645;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;181;-3296.286,574.5956;Inherit;False;Property;_Random;Random;22;0;Create;True;0;0;False;0;False;0;0;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;166;-2739.808,36.46645;Inherit;False;max_frames;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;164;-2785.808,534.4664;Inherit;True;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;167;-2842.808,438.4664;Inherit;False;166;max_frames;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;62;-2836.735,189.1722;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;172;-2550.808,478.4664;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCFlipBookUVAnimation;159;-2392.201,-124.8522;Inherit;False;0;0;6;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;158;-2061.017,-56.39265;Inherit;False;final_uv;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-3879.308,937.9151;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;139;573.2832,1298.297;Inherit;True;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;40;-3428.297,1269.18;Inherit;False;Property;_Blend;Blend;7;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;37;-3609.61,896.7826;Inherit;True;Property;_DissolveMask;Dissolve Mask;6;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;228c996c3fcc8084d919824e71d43ae3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DistanceOpNode;140;911.2832,1316.297;Inherit;True;2;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;38;-3145.939,910.5288;Inherit;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;42;-3105.297,1215.18;Inherit;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;141;1170.283,1348.297;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;39;-2755.105,959.5288;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;145;1474.283,1769.297;Inherit;False;Property;_ShowFraction;Show Fraction;17;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;147;1394.283,1282.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;43;-2485.939,1015.529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;175;-725.8429,613.2791;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;103;-2427.799,1248.316;Inherit;False;Property;_DissolveHardness;Dissolve Hardness;13;0;Create;True;0;0;False;0;False;0;0.711;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;143;1677.283,1394.297;Inherit;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-498.635,1848.181;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;146;1899.283,1785.297;Inherit;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;84;-2338.834,1077.053;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;173;-945.5429,75.07903;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SmoothstepOpNode;102;-2158.299,1098.316;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-563.2285,719.5116;Inherit;False;Property;_Smoothness;Smoothness;5;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;85;-291.8257,1793;Inherit;True;Property;_DissolvedSpecular;Dissolved Specular;11;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;36b0344021e05674e9a86c339167809b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;8;-638.2,-17.8;Inherit;True;Property;_MainTex;Base Color;0;1;[NoScaleOffset];Create;False;0;0;False;0;False;-1;None;a3a7558974ca72d47bef700e80482c3d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;133;-547.2285,514.5116;Inherit;True;Property;_Specular;Specular;4;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;dd831c9fd06b43e49b0bacdad8659fc6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;144;2105.283,1460.297;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;9;-575.5,-183.5;Inherit;False;Property;_Color;Color;1;0;Create;True;0;0;False;0;False;1,1,1,1;0.462264,0.462264,0.462264,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;177;-540.4077,1191.426;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;90;-134.8257,2103;Inherit;False;Property;_DissolvedSmoothness;Dissolved Smoothness;12;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;148;2353.283,1486.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;176;-723.2428,907.079;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-261.5,-5.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;91;241.1743,1999;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;58;-315.8374,1111.323;Inherit;True;Property;_Dissolved;Dissolved;8;0;Create;True;0;0;False;0;False;-1;None;2c9675679193a1242980162c77419124;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;123;-1971.709,1120.899;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;93;95.1743,1800;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;137;-261.2285,552.5116;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;135;-218.2285,633.5116;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;178;-503.4349,1382.582;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;92;312.1743,1793;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;34;-820.5734,397.6963;Inherit;False;Property;_NormalScale;Normal Scale;3;0;Create;True;0;0;False;0;False;1;1.72;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;130;-494.9761,844.9632;Inherit;True;Property;_Emission;Emission;16;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;142d5887429140d42b4c310b17a6cfdf;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;136;-50.22852,580.5116;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;44;-1750.622,1074.558;Inherit;False;dissolve_blend;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;155;2478.962,1895.097;Inherit;False;Property;_ShowHardnessMax;Show Hardness Max;19;0;Create;True;0;0;False;0;False;0;0.142;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;149;2543.318,1439.321;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;48;-15.19668,-16.38461;Inherit;False;base_color;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;154;2442.962,1741.097;Inherit;False;Property;_ShowHardnessMin;Show Hardness Min;18;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;125;1089.426,822.0466;Inherit;False;Property;_DepthFadeDistance;Depth Fade Distance;15;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;22.25769,1144.808;Inherit;False;dissolved_color;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;75;-484.9072,1549.65;Inherit;False;Property;_DissolvedNormalScale;Dissolved Normal Scale;10;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;174;-828.5428,315.579;Inherit;False;158;final_uv;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DepthFade;124;1416.426,855.0466;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;60;-223.6165,1333.46;Inherit;True;Property;_DissolvedNormalMap;Dissolved Normal Map;9;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;1e396c829aa611a46aa43da641822de1;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;52;66.38341,501.7567;Inherit;False;base_specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;153;2766.962,1456.097;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;49;249.9033,-724.8846;Inherit;False;48;base_color;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;31;-587.4761,259.1026;Inherit;True;Property;_NormalMap;Normal Map;2;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;8807b91faa6c1094e9c6c66c4f065a5c;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;78;292.6793,-588.5723;Inherit;False;76;dissolved_color;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;131;4.937628,790.3063;Inherit;False;emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;89;520.1743,1782;Inherit;False;dissolved_specular;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;80;351.6793,-514.5723;Inherit;False;44;dissolve_blend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;150;3005.835,1457.206;Inherit;False;show_mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;95;734.8514,432.9478;Inherit;False;44;dissolve_blend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;50;-191.7072,252.148;Inherit;False;base_normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;94;695.8514,334.9478;Inherit;False;89;dissolved_specular;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;53;797.6833,218.9566;Inherit;False;52;base_specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;79;589.6793,-679.5723;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;127;1738.426,773.0466;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;108;112.7743,-326.4886;Inherit;False;Property;_Emissive;Emissive;14;0;Create;True;0;0;False;0;False;0;3.07;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;132;124.7546,-416.8695;Inherit;False;131;emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;77;140.2577,1338.808;Inherit;False;dissolved_normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;82;654.6793,65.42773;Inherit;False;44;dissolve_blend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;138;1044.421,-528.9171;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;151;1838.928,561.6215;Inherit;False;150;show_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;96;1036.851,200.9478;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;105;213.4683,-156.1606;Inherit;False;44;dissolve_blend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;83;590.6793,-33.57227;Inherit;False;77;dissolved_normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SignOpNode;129;1866.426,709.0466;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;51;529.7929,-121.352;Inherit;False;50;base_normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;109;490.7743,-385.4886;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;107;700.4683,-390.1606;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;81;880.6793,-58.57227;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;142;1305.283,1609.297;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;152;2174.085,265.0869;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;55;1211.484,450.5567;Inherit;False;False;False;False;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;33;2387.81,-134.7471;Float;False;True;-1;2;ASEMaterialInspector;0;0;StandardSpecular;Knife/Toxic;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;2;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;165;0;160;0
WireConnection;165;1;161;0
WireConnection;166;0;165;0
WireConnection;164;0;181;0
WireConnection;172;0;167;0
WireConnection;172;1;164;0
WireConnection;159;0;62;0
WireConnection;159;1;160;0
WireConnection;159;2;161;0
WireConnection;159;4;172;0
WireConnection;158;0;159;0
WireConnection;37;1;180;0
WireConnection;140;0;139;0
WireConnection;38;0;37;1
WireConnection;42;0;40;0
WireConnection;141;0;140;0
WireConnection;39;0;38;0
WireConnection;39;1;42;0
WireConnection;147;0;141;0
WireConnection;43;0;39;0
WireConnection;143;0;147;0
WireConnection;146;0;145;0
WireConnection;84;0;43;0
WireConnection;102;0;84;0
WireConnection;102;1;103;0
WireConnection;85;1;179;0
WireConnection;8;1;173;0
WireConnection;133;1;175;0
WireConnection;144;0;143;0
WireConnection;144;1;146;0
WireConnection;148;0;144;0
WireConnection;10;0;9;0
WireConnection;10;1;8;0
WireConnection;91;0;85;4
WireConnection;91;1;90;0
WireConnection;58;1;177;0
WireConnection;123;0;102;0
WireConnection;93;0;85;0
WireConnection;137;0;133;0
WireConnection;135;0;133;3
WireConnection;135;1;134;0
WireConnection;92;0;93;0
WireConnection;92;3;91;0
WireConnection;130;1;176;0
WireConnection;136;0;137;0
WireConnection;136;3;135;0
WireConnection;44;0;123;0
WireConnection;149;0;148;0
WireConnection;48;0;10;0
WireConnection;76;0;58;0
WireConnection;124;0;125;0
WireConnection;60;1;178;0
WireConnection;60;5;75;0
WireConnection;52;0;136;0
WireConnection;153;0;149;0
WireConnection;153;1;154;0
WireConnection;153;2;155;0
WireConnection;31;1;174;0
WireConnection;31;5;34;0
WireConnection;131;0;130;0
WireConnection;89;0;92;0
WireConnection;150;0;153;0
WireConnection;50;0;31;0
WireConnection;79;0;49;0
WireConnection;79;1;78;0
WireConnection;79;2;80;0
WireConnection;127;0;124;0
WireConnection;77;0;60;0
WireConnection;138;0;79;0
WireConnection;96;0;53;0
WireConnection;96;1;94;0
WireConnection;96;2;95;0
WireConnection;129;0;127;0
WireConnection;109;0;132;0
WireConnection;109;1;108;0
WireConnection;107;0;109;0
WireConnection;107;2;105;0
WireConnection;81;0;51;0
WireConnection;81;1;83;0
WireConnection;81;2;82;0
WireConnection;152;0;138;3
WireConnection;152;1;151;0
WireConnection;152;2;129;0
WireConnection;55;0;96;0
WireConnection;33;0;79;0
WireConnection;33;1;81;0
WireConnection;33;2;107;0
WireConnection;33;3;96;0
WireConnection;33;4;55;0
WireConnection;33;9;152;0
ASEEND*/
//CHKSM=EF097D47836E6E5F910AFACDF412F2295E0B7407