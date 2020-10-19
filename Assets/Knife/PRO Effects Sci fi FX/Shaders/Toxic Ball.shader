// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Toxic Ball"
{
	Properties
	{
		_ColorDark("Color Dark", Color) = (0.2483057,0.9150943,0.1942417,1)
		_ColorBright("Color Bright", Color) = (0.2483057,0.9150943,0.1942417,1)
		_FresnelPower("Fresnel Power", Float) = 1
		_FresnelScale("Fresnel Scale", Float) = 1
		_Normal1("Normal 1", 2D) = "bump" {}
		_Normal2("Normal 2", 2D) = "bump" {}
		_NormalScale1("Normal Scale 1", Float) = 1
		_NormalScale2("Normal Scale 2", Float) = 1
		_NormalSpeed1("Normal Speed 1", Vector) = (0,0,0,0)
		_NormalSpeed2("Normal Speed 2", Vector) = (0,0,0,0)
		_Displacement("Displacement", Float) = 0
		_DisplacementNoiseSpeed1("Displacement Noise Speed 1", Float) = 0
		_DisplacementNoiseScale1("Displacement Noise Scale 1", Float) = 0
		_IntensityBright("Intensity Bright", Float) = 0
		_ReflectionIntensity("Reflection Intensity", Float) = 0
		_FakeReflections("Fake Reflections", CUBE) = "black" {}
		[Toggle(_USEPARTICLESIZE_ON)] _UseParticleSize("Use Particle Size", Float) = 0
		_ParticleSizeFactor("Particle Size Factor", Float) = 0

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend Off
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
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _USEPARTICLESIZE_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
			};

			uniform float _DisplacementNoiseSpeed1;
			uniform float _DisplacementNoiseScale1;
			uniform float _Displacement;
			uniform float _ParticleSizeFactor;
			uniform float4 _ColorDark;
			uniform float4 _ColorBright;
			uniform float _IntensityBright;
			uniform float _NormalScale1;
			uniform sampler2D _Normal1;
			uniform float2 _NormalSpeed1;
			uniform float4 _Normal1_ST;
			uniform float _NormalScale2;
			uniform sampler2D _Normal2;
			uniform float2 _NormalSpeed2;
			uniform float4 _Normal2_ST;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
			uniform float _ReflectionIntensity;
			uniform samplerCUBE _FakeReflections;
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
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				float mulTime41 = _Time.y * _DisplacementNoiseSpeed1;
				float simplePerlin3D37 = snoise( (ase_worldNormal*1.0 + mulTime41)*_DisplacementNoiseScale1 );
				simplePerlin3D37 = simplePerlin3D37*0.5 + 0.5;
				float3 uv053 = v.ase_texcoord.xyz;
				uv053.xy = v.ase_texcoord.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _USEPARTICLESIZE_ON
				float staticSwitch52 = ( uv053.z * _ParticleSizeFactor );
				#else
				float staticSwitch52 = 1.0;
				#endif
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord2.xyz = ase_worldTangent;
				o.ase_texcoord3.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				
				o.ase_texcoord1.xyz = v.ase_texcoord.xyz;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = ( simplePerlin3D37 * v.ase_normal * _Displacement * staticSwitch52 );
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
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(WorldPosition);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv0_Normal1 = i.ase_texcoord1.xyz * _Normal1_ST.xy + _Normal1_ST.zw;
				float2 panner15 = ( 1.0 * _Time.y * _NormalSpeed1 + uv0_Normal1);
				float2 uv0_Normal2 = i.ase_texcoord1.xyz.xy * _Normal2_ST.xy + _Normal2_ST.zw;
				float2 panner16 = ( 1.0 * _Time.y * _NormalSpeed2 + uv0_Normal2);
				float3 normalizeResult24 = normalize( ( UnpackScaleNormal( tex2D( _Normal1, panner15 ), _NormalScale1 ) + UnpackScaleNormal( tex2D( _Normal2, panner16 ), _NormalScale2 ) ) );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal8 = normalizeResult24;
				float3 worldNormal8 = float3(dot(tanToWorld0,tanNormal8), dot(tanToWorld1,tanNormal8), dot(tanToWorld2,tanNormal8));
				float fresnelNdotV3 = dot( worldNormal8, ase_worldViewDir );
				float fresnelNode3 = ( 0.0 + _FresnelScale * pow( 1.0 - fresnelNdotV3, _FresnelPower ) );
				float4 lerpResult21 = lerp( _ColorDark , ( _ColorBright * _IntensityBright ) , saturate( fresnelNode3 ));
				float3 worldRefl51 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, normalizeResult24 ), dot( tanToWorld1, normalizeResult24 ), dot( tanToWorld2, normalizeResult24 ) ) );
				
				
				finalColor = ( lerpResult21 + ( _ReflectionIntensity * texCUBE( _FakeReflections, worldRefl51 ) ) );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
-1857;201;1857;684;4354.696;-1156.163;2.704729;True;False
Node;AmplifyShaderEditor.Vector2Node;17;-3044,214.5;Inherit;False;Property;_NormalSpeed1;Normal Speed 1;8;0;Create;True;0;0;False;0;False;0,0;0.05,0.05;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;12;-3146,58.5;Inherit;False;0;6;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;13;-3092,386.5;Inherit;False;0;11;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;18;-2937,606.5;Inherit;False;Property;_NormalSpeed2;Normal Speed 2;9;0;Create;True;0;0;False;0;False;0,0;-0.05,-0.05;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;14;-2304,623.5;Inherit;False;Property;_NormalScale2;Normal Scale 2;7;0;Create;True;0;0;False;0;False;1;-0.8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-2369,239.5;Inherit;False;Property;_NormalScale1;Normal Scale 1;6;0;Create;True;0;0;False;0;False;1;0.8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;15;-2669,101.5;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;16;-2671,385.5;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;6;-2082,124.5;Inherit;True;Property;_Normal1;Normal 1;4;0;Create;True;0;0;False;0;False;-1;3e642b290e1041c45bbd75a4ab51cba7;3e642b290e1041c45bbd75a4ab51cba7;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;11;-2014,455.5;Inherit;True;Property;_Normal2;Normal 2;5;0;Create;True;0;0;False;0;False;-1;3e642b290e1041c45bbd75a4ab51cba7;3e642b290e1041c45bbd75a4ab51cba7;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;22;-1698.646,200.4689;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;24;-1537.646,188.4689;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-1292,437.5;Inherit;False;Property;_FresnelScale;Fresnel Scale;3;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;8;-1307,234.5;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;5;-1273,538.5;Inherit;False;Property;_FresnelPower;Fresnel Power;2;0;Create;True;0;0;False;0;False;1;1.05;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;42;-1820.761,2324.786;Inherit;False;Property;_DisplacementNoiseSpeed1;Displacement Noise Speed 1;11;0;Create;True;0;0;False;0;False;0;2.36;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;53;-1425.16,2521.745;Inherit;False;0;-1;3;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;44;-897.8334,87.49139;Inherit;False;Property;_IntensityBright;Intensity Bright;13;0;Create;True;0;0;False;0;False;0;2.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;20;-967.6455,-141.5311;Inherit;False;Property;_ColorBright;Color Bright;1;0;Create;True;0;0;False;0;False;0.2483057,0.9150943,0.1942417,1;0.5181475,0.9254902,0.08627438,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldNormalVector;38;-1706.761,2021.786;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;55;-1221.16,2697.745;Inherit;False;Property;_ParticleSizeFactor;Particle Size Factor;17;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;41;-1536.761,2311.786;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;3;-971,302.5;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldReflectionVector;51;-1164.056,768.3297;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ColorNode;1;-969,-348.5;Inherit;False;Property;_ColorDark;Color Dark;0;0;Create;True;0;0;False;0;False;0.2483057,0.9150943,0.1942417,1;0.4371973,0.66,0.2648406,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;54;-1130.16,2467.745;Inherit;False;Constant;_Float0;Float 0;17;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;45;-652.8334,-48.50861;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;46;-915.1531,848.6809;Inherit;True;Property;_FakeReflections;Fake Reflections;15;0;Create;True;0;0;False;0;False;-1;None;1f2d561d140125e44878214c349d5b23;True;0;False;black;LockedToCube;False;Object;-1;Auto;Cube;6;0;SAMPLER2D;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;9;-707,280.5;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;48;-824.8778,744.2048;Inherit;False;Property;_ReflectionIntensity;Reflection Intensity;14;0;Create;True;0;0;False;0;False;0;0.22;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;40;-1348.761,2085.786;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-1282.761,2267.786;Inherit;False;Property;_DisplacementNoiseScale1;Displacement Noise Scale 1;12;0;Create;True;0;0;False;0;False;0;0.62;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1067.16,2589.745;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-728.8935,2228.712;Inherit;False;Property;_Displacement;Displacement;10;0;Create;True;0;0;False;0;False;0;0.07;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;21;-358.6455,-47.53113;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;49;-510.0555,833.3297;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;37;-1074.761,2062.786;Inherit;False;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;34;-820.2391,2079.168;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;52;-810.1598,2511.745;Inherit;False;Property;_UseParticleSize;Use Particle Size;16;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;50;-150.0555,6.329712;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;35;-515.7906,1740.966;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;77,-8;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Toxic Ball;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;15;0;12;0
WireConnection;15;2;17;0
WireConnection;16;0;13;0
WireConnection;16;2;18;0
WireConnection;6;1;15;0
WireConnection;6;5;7;0
WireConnection;11;1;16;0
WireConnection;11;5;14;0
WireConnection;22;0;6;0
WireConnection;22;1;11;0
WireConnection;24;0;22;0
WireConnection;8;0;24;0
WireConnection;41;0;42;0
WireConnection;3;0;8;0
WireConnection;3;2;4;0
WireConnection;3;3;5;0
WireConnection;51;0;24;0
WireConnection;45;0;20;0
WireConnection;45;1;44;0
WireConnection;46;1;51;0
WireConnection;9;0;3;0
WireConnection;40;0;38;0
WireConnection;40;2;41;0
WireConnection;56;0;53;3
WireConnection;56;1;55;0
WireConnection;21;0;1;0
WireConnection;21;1;45;0
WireConnection;21;2;9;0
WireConnection;49;0;48;0
WireConnection;49;1;46;0
WireConnection;37;0;40;0
WireConnection;37;1;43;0
WireConnection;52;1;54;0
WireConnection;52;0;56;0
WireConnection;50;0;21;0
WireConnection;50;1;49;0
WireConnection;35;0;37;0
WireConnection;35;1;34;0
WireConnection;35;2;36;0
WireConnection;35;3;52;0
WireConnection;0;0;50;0
WireConnection;0;1;35;0
ASEEND*/
//CHKSM=C99FCE93A09EC19C687D941ED6C6F880F283E174