// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Fresnel"
{
	Properties
	{
		_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 3
		_TessPhongStrength( "Phong Tess Strength", Range( 0, 1 ) ) = 0.5
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_FresnelPower1("Fresnel Power 1", Float) = 1
		_FresnelPower2("Fresnel Power 2", Float) = 1
		_FresnelScale1("Fresnel Scale 1", Float) = 1
		_FresnelScale2("Fresnel Scale 2", Float) = 1
		_NoiseScale1("Noise Scale 1", Float) = 0
		_NoiseScale2("Noise Scale 2", Float) = 0
		_NoiseScale3("Noise Scale 3", Float) = 0
		_NoiseAmount1("Noise Amount 1", Float) = 0
		_NoiseAmount2("Noise Amount 2", Float) = 0
		_NoiseAmount3("Noise Amount 3", Float) = 0
		_NoiseSpeed1("Noise Speed 1", Float) = 0
		_NoiseSpeed2("Noise Speed 2", Float) = 0
		_NoiseSpeed3("Noise Speed 3", Float) = 0
		_NoiseSpeedTotal("Noise Speed Total", Float) = 0
		_DisplacementAmount("Displacement Amount", Float) = 1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		struct Input
		{
			float3 worldPos;
			float3 worldNormal;
		};

		uniform float _NoiseSpeed1;
		uniform float _NoiseSpeedTotal;
		uniform float _NoiseScale1;
		uniform float _NoiseAmount1;
		uniform float _NoiseSpeed2;
		uniform float _NoiseScale2;
		uniform float _NoiseAmount2;
		uniform float _NoiseSpeed3;
		uniform float _NoiseScale3;
		uniform float _NoiseAmount3;
		uniform float _DisplacementAmount;
		uniform float4 _Color;
		uniform float _FresnelScale2;
		uniform float _FresnelPower2;
		uniform float _FresnelScale1;
		uniform float _FresnelPower1;
		uniform float _TessValue;
		uniform float _TessPhongStrength;


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


		float4 tessFunction( )
		{
			return _TessValue;
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float mulTime70 = _Time.y * _NoiseSpeedTotal;
			float3 noise_sample_coord_184 = (ase_vertexNormal*1.0 + (( _NoiseSpeed1 * mulTime70 )).xxx);
			float simplePerlin3D53 = snoise( noise_sample_coord_184*_NoiseScale1 );
			simplePerlin3D53 = simplePerlin3D53*0.5 + 0.5;
			float mulTime75 = _Time.y * _NoiseSpeedTotal;
			float3 noise_sample_coord_285 = (ase_vertexNormal*1.0 + (( _NoiseSpeed2 * mulTime75 )).xxx);
			float simplePerlin3D55 = snoise( noise_sample_coord_285*_NoiseScale2 );
			simplePerlin3D55 = simplePerlin3D55*0.5 + 0.5;
			float blendOpSrc58 = ( simplePerlin3D53 * _NoiseAmount1 );
			float blendOpDest58 = ( simplePerlin3D55 * _NoiseAmount2 );
			float mulTime81 = _Time.y * _NoiseSpeedTotal;
			float3 noise_sample_coord_386 = (ase_vertexNormal*1.0 + (( _NoiseSpeed3 * mulTime81 )).xxx);
			float simplePerlin3D56 = snoise( noise_sample_coord_386*_NoiseScale3 );
			simplePerlin3D56 = simplePerlin3D56*0.5 + 0.5;
			float blendOpSrc57 = ( blendOpDest58 - blendOpSrc58 );
			float blendOpDest57 = ( simplePerlin3D56 * _NoiseAmount3 );
			float fractal_noise90 = abs( blendOpSrc57 - blendOpDest57 );
			v.vertex.xyz += ( ase_vertexNormal * fractal_noise90 * _DisplacementAmount );
		}

		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = i.worldNormal;
			float fresnelNdotV104 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode104 = ( 0.0 + _FresnelScale2 * pow( 1.0 - fresnelNdotV104, _FresnelPower2 ) );
			float fresnelNdotV3 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode3 = ( 0.0 + _FresnelScale1 * pow( 1.0 - fresnelNdotV3, _FresnelPower1 ) );
			float4 appendResult6 = (float4(1.0 , 1.0 , 1.0 , ( saturate( fresnelNode104 ) + saturate( fresnelNode3 ) )));
			float4 temp_output_9_0 = ( _Color * appendResult6 );
			o.Emission = temp_output_9_0.rgb;
			o.Alpha = saturate( (temp_output_9_0).a );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Unlit alpha:fade keepalpha fullforwardshadows vertex:vertexDataFunc tessellate:tessFunction tessphong:_TessPhongStrength 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.6
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
				float3 worldPos : TEXCOORD1;
				float3 worldNormal : TEXCOORD2;
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
				vertexDataFunc( v );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				o.worldNormal = worldNormal;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = IN.worldNormal;
				SurfaceOutput o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutput, o )
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
-1857;201;1857;684;2562.595;-1792.58;1.6;True;False
Node;AmplifyShaderEditor.RangedFloatNode;98;-3479.858,3455.282;Inherit;False;Property;_NoiseSpeedTotal;Noise Speed Total;19;0;Create;True;0;0;False;0;False;0;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;75;-2654.206,3558.628;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;70;-2579.871,2876.681;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;77;-2554.606,3357.628;Inherit;False;Property;_NoiseSpeed2;Noise Speed 2;17;0;Create;True;0;0;False;0;False;0;-0.2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;67;-2481.871,2675.681;Inherit;False;Property;_NoiseSpeed1;Noise Speed 1;16;0;Create;True;0;0;False;0;False;0;0.63;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;81;-2725.206,4238.537;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;72;-2408.206,3503.628;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;83;-2627.206,4037.537;Inherit;False;Property;_NoiseSpeed3;Noise Speed 3;18;0;Create;True;0;0;False;0;False;0;0.3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;66;-2333.871,2821.681;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;68;-2142.871,2733.681;Inherit;False;FLOAT3;0;1;2;3;1;0;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalVertexDataNode;100;-2518.981,3088.626;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;101;-2335.761,2424.152;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;-2479.206,4183.537;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;73;-2217.206,3415.628;Inherit;False;FLOAT3;0;1;2;3;1;0;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalVertexDataNode;99;-2574.732,3810.299;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwizzleNode;79;-2288.206,4095.537;Inherit;False;FLOAT3;0;1;2;3;1;0;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;74;-1967.207,3151.628;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;69;-1892.872,2469.681;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-1655.005,2532.272;Inherit;False;noise_sample_coord_1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;80;-2038.207,3831.537;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;85;-1662.433,3078.463;Inherit;False;noise_sample_coord_2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;5;-1135.252,867.6468;Inherit;False;Property;_FresnelPower1;Fresnel Power 1;6;0;Create;True;0;0;False;0;False;1;1.8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;88;-1453.303,2314.479;Inherit;False;85;noise_sample_coord_2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;59;-1411.734,2104.162;Inherit;False;Property;_NoiseScale1;Noise Scale 1;10;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;86;-1775.16,3739.642;Inherit;False;noise_sample_coord_3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-1512.303,1964.479;Inherit;False;84;noise_sample_coord_1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;103;-1222.014,439.4839;Inherit;False;Property;_FresnelScale2;Fresnel Scale 2;9;0;Create;True;0;0;False;0;False;1;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-1145.252,777.6468;Inherit;False;Property;_FresnelScale1;Fresnel Scale 1;8;0;Create;True;0;0;False;0;False;1;0.3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;-1350.734,2396.163;Inherit;False;Property;_NoiseScale2;Noise Scale 2;11;0;Create;True;0;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;102;-1212.014,529.4839;Inherit;False;Property;_FresnelPower2;Fresnel Power 2;7;0;Create;True;0;0;False;0;False;1;100;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;61;-1010.734,2689.163;Inherit;False;Property;_NoiseScale3;Noise Scale 3;12;0;Create;True;0;0;False;0;False;0;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;92;-1068.69,2201.229;Inherit;False;Property;_NoiseAmount1;Noise Amount 1;13;0;Create;True;0;0;False;0;False;0;3.19;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;94;-810.6902,2448.229;Inherit;False;Property;_NoiseAmount2;Noise Amount 2;14;0;Create;True;0;0;False;0;False;0;1.41;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;89;-1187.303,2543.479;Inherit;False;86;noise_sample_coord_3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FresnelNode;3;-931.2519,667.6469;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;55;-1033.258,2291.891;Inherit;True;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;53;-1100.932,1933.922;Inherit;True;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;104;-1008.014,329.484;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;105;-747.0144,354.484;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;8;-670.2519,692.6469;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;93;-824.6902,2008.229;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;56;-781.1581,2568.991;Inherit;True;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;15;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;96;-548.1902,2705.729;Inherit;False;Property;_NoiseAmount3;Noise Amount 3;15;0;Create;True;0;0;False;0;False;0;1.55;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;95;-701.6902,2255.229;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;97;-450.1902,2496.729;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;58;-491.7343,2160.163;Inherit;True;Subtract;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;106;-536.1628,450.1475;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;57;-187.155,2359.974;Inherit;True;Difference;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;6;-458.5,180.5;Inherit;False;FLOAT4;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;2;-679.5,-68.5;Inherit;False;Property;_Color;Color;5;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;1.022446,1.808795,5.278031,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;90;110.6066,2335.008;Inherit;False;fractal_noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9;-326.5,-34.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;16;-429.8673,1386.941;Inherit;False;Property;_DisplacementAmount;Displacement Amount;20;0;Create;True;0;0;False;0;False;1;0.09;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;91;-364.3334,1547.518;Inherit;False;90;fractal_noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;15;-430.8673,1045.941;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;22;-173.8325,84.84323;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;23;44.16748,162.8432;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;17;-154.8673,1114.941;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;54;-1749.658,2230.591;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;21;183,-23;Float;False;True;-1;6;ASEMaterialInspector;0;0;Unlit;Knife/Fresnel;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;True;1;3;10;25;True;0.5;True;2;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;0;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;75;0;98;0
WireConnection;70;0;98;0
WireConnection;81;0;98;0
WireConnection;72;0;77;0
WireConnection;72;1;75;0
WireConnection;66;0;67;0
WireConnection;66;1;70;0
WireConnection;68;0;66;0
WireConnection;78;0;83;0
WireConnection;78;1;81;0
WireConnection;73;0;72;0
WireConnection;79;0;78;0
WireConnection;74;0;100;0
WireConnection;74;2;73;0
WireConnection;69;0;101;0
WireConnection;69;2;68;0
WireConnection;84;0;69;0
WireConnection;80;0;99;0
WireConnection;80;2;79;0
WireConnection;85;0;74;0
WireConnection;86;0;80;0
WireConnection;3;2;4;0
WireConnection;3;3;5;0
WireConnection;55;0;88;0
WireConnection;55;1;60;0
WireConnection;53;0;87;0
WireConnection;53;1;59;0
WireConnection;104;2;103;0
WireConnection;104;3;102;0
WireConnection;105;0;104;0
WireConnection;8;0;3;0
WireConnection;93;0;53;0
WireConnection;93;1;92;0
WireConnection;56;0;89;0
WireConnection;56;1;61;0
WireConnection;95;0;55;0
WireConnection;95;1;94;0
WireConnection;97;0;56;0
WireConnection;97;1;96;0
WireConnection;58;0;93;0
WireConnection;58;1;95;0
WireConnection;106;0;105;0
WireConnection;106;1;8;0
WireConnection;57;0;58;0
WireConnection;57;1;97;0
WireConnection;6;3;106;0
WireConnection;90;0;57;0
WireConnection;9;0;2;0
WireConnection;9;1;6;0
WireConnection;22;0;9;0
WireConnection;23;0;22;0
WireConnection;17;0;15;0
WireConnection;17;1;91;0
WireConnection;17;2;16;0
WireConnection;21;2;9;0
WireConnection;21;9;23;0
WireConnection;21;11;17;0
ASEEND*/
//CHKSM=9C06D5B1FC515DAD3EC21B9EC28582181290D186