// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Liquid/Sphere Errosion Unlit"
{
	Properties
	{
		_ColorBright1("Color Bright", Color) = (0.2483057,0.9150943,0.1942417,1)
		_FresnelPower1("Fresnel Power", Float) = 1
		_FresnelScale1("Fresnel Scale", Float) = 1
		_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Normal]_Normal("Normal", 2D) = "bump" {}
		_Errosion("Errosion", Range( 0 , 1)) = 0
		_Scale("Scale", Range( 0 , 1)) = 0
		_Softness("Softness", Range( 0 , 1)) = 1
		_NormalScale("NormalScale", Float) = 0
		_IntensityBright1("Intensity Bright", Float) = 0
		_FadeDistance("FadeDistance", Float) = 0.02
		_ReflectionMap("ReflectionMap", CUBE) = "black" {}
		_Specular("Specular", Range( 0 , 1)) = 0
		_Tint("Tint", Color) = (0,0,0,0)
		[Toggle(_PARTICLESCALEAFFECT_ON)] _ParticleScaleAffect("ParticleScaleAffect", Float) = 0
		_DisplacementNoiseScale("Displacement Noise Scale", Float) = 1
		_DisplacementNoiseSpeed("Displacement Noise Speed", Vector) = (0,0,0,0)
		_MaxDisplacement("MaxDisplacement", Float) = 0.1
		_MaxScale("MaxScale", Float) = 1

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
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature _PARTICLESCALEAFFECT_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
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
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
			};

			uniform float _MaxDisplacement;
			uniform float3 _DisplacementNoiseSpeed;
			uniform float _DisplacementNoiseScale;
			uniform float _MaxScale;
			uniform float _Scale;
			uniform float4 _Tint;
			uniform float _Specular;
			uniform samplerCUBE _ReflectionMap;
			uniform float _NormalScale;
			uniform sampler2D _Normal;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _ColorBright1;
			uniform float _IntensityBright1;
			uniform float _FresnelScale1;
			uniform float _FresnelPower1;
			UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
			uniform float4 _CameraDepthTexture_TexelSize;
			uniform float _FadeDistance;
			uniform float _Errosion;
			uniform float _Softness;
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
				float simplePerlin3D91 = snoise( (ase_worldNormal*1.0 + ( _DisplacementNoiseSpeed * _Time.y ))*_DisplacementNoiseScale );
				simplePerlin3D91 = simplePerlin3D91*0.5 + 0.5;
				float4 uv023 = v.ase_texcoord;
				uv023.xy = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float Scale69 = ( uv023.w + _Scale );
				float2 uv175 = v.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _PARTICLESCALEAFFECT_ON
				float staticSwitch76 = uv175.x;
				#else
				float staticSwitch76 = 1.0;
				#endif
				float3 temp_output_65_0 = ( ( ( _MaxDisplacement * simplePerlin3D91 ) + _MaxScale ) * v.ase_normal * Scale69 * staticSwitch76 );
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord2.xyz = ase_worldTangent;
				o.ase_texcoord3.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				float3 vertexPos53 = ( v.vertex.xyz + temp_output_65_0 );
				float4 ase_clipPos53 = UnityObjectToClipPos(vertexPos53);
				float4 screenPos53 = ComputeScreenPos(ase_clipPos53);
				o.ase_texcoord5 = screenPos53;
				
				o.ase_color = v.color;
				o.ase_texcoord1 = v.ase_texcoord;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = temp_output_65_0;
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
			
			fixed4 frag (v2f i , half ase_vface : VFACE) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				fixed4 finalColor;
#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 WorldPosition = i.worldPos;
#endif
				float2 uv0_MainTex = i.ase_texcoord1 * _MainTex_ST.xy + _MainTex_ST.zw;
				float3 tex2DNode2 = UnpackScaleNormal( tex2D( _Normal, uv0_MainTex ), _NormalScale );
				float switchResult70 = (((ase_vface>0)?(tex2DNode2.b):(-tex2DNode2.b)));
				float3 appendResult71 = (float3(tex2DNode2.r , tex2DNode2.g , switchResult70));
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(WorldPosition);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl16 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, appendResult71 ), dot( tanToWorld1, appendResult71 ), dot( tanToWorld2, appendResult71 ) ) ) );
				float4 temp_output_17_0 = ( ( i.ase_color * _Tint ) + ( _Specular * texCUBE( _ReflectionMap, worldRefl16 ) ) );
				float3 tanNormal84 = tex2DNode2;
				float3 worldNormal84 = float3(dot(tanToWorld0,tanNormal84), dot(tanToWorld1,tanNormal84), dot(tanToWorld2,tanNormal84));
				float fresnelNdotV82 = dot( worldNormal84, ase_worldViewDir );
				float fresnelNode82 = ( 0.0 + _FresnelScale1 * pow( 1.0 - fresnelNdotV82, _FresnelPower1 ) );
				float4 lerpResult89 = lerp( temp_output_17_0 , ( _ColorBright1 * _IntensityBright1 ) , saturate( fresnelNode82 ));
				float4 screenPos53 = i.ase_texcoord5;
				float4 ase_screenPosNorm53 = screenPos53 / screenPos53.w;
				ase_screenPosNorm53.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm53.z : ase_screenPosNorm53.z * 0.5 + 0.5;
				float screenDepth53 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm53.xy ));
				float distanceDepth53 = saturate( abs( ( screenDepth53 - LinearEyeDepth( ase_screenPosNorm53.z ) ) / ( _FadeDistance ) ) );
				float4 uv023 = i.ase_texcoord1;
				uv023.xy = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_24_0 = ( _Errosion + uv023.z );
				float FinalAlpha54 = ( distanceDepth53 * ( i.ase_color.a * saturate( ( ( tex2D( _MainTex, uv0_MainTex ).r - temp_output_24_0 ) / _Softness ) ) ) );
				float4 appendResult100 = (float4((lerpResult89).rgb , saturate( FinalAlpha54 )));
				
				
				finalColor = appendResult100;
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
0;58;1857;1001;1574.499;700.9748;2.251584;True;False
Node;AmplifyShaderEditor.Vector3Node;95;-261.7794,1264.151;Inherit;False;Property;_DisplacementNoiseSpeed;Displacement Noise Speed;22;0;Create;True;0;0;False;0;False;0,0,0;0.9,0.9,0.9;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleTimeNode;96;-168.7794,1460.151;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;90;167.9969,1082.296;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;97;82.22064,1399.151;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;93;347.4781,1399.92;Inherit;False;Property;_DisplacementNoiseScale;Displacement Noise Scale;19;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;67;-2201.511,809.5727;Float;False;Property;_Scale;Scale;7;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;38;-1867.268,96.96561;Inherit;False;0;1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScaleAndOffsetNode;92;450.4781,1102.92;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;14;-1357.071,929.3242;Float;False;Property;_NormalScale;NormalScale;11;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;23;-2041.179,437.683;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NoiseGeneratorNode;91;706.9969,1111.296;Inherit;False;Simplex3D;True;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;68;-1813.512,719.5727;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;911.2635,693.3096;Float;False;Property;_MaxDisplacement;MaxDisplacement;23;0;Create;True;0;0;False;0;False;0.1;0.62;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-2084.694,329.7405;Float;False;Property;_Errosion;Errosion;6;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;2;-1207.246,499.47;Inherit;True;Property;_Normal;Normal;5;2;[NoScaleOffset];[Normal];Create;True;0;0;False;0;False;-1;None;53985a8e5eda8f84b94ddbb54e933402;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;63;1031.264,1032.309;Float;False;Property;_MaxScale;MaxScale;24;0;Create;True;0;0;False;0;False;1;0.32;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;60;1186.264,642.3096;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;77;934.531,1310.74;Float;False;Constant;_Float0;Float 0;19;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;69;-1641.512,762.5727;Float;False;Scale;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;75;922.531,1448.74;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NegateNode;73;-931.7946,738.5438;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24;-1745.198,386.5111;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-1265.283,-115.5145;Inherit;True;Property;_MainTex;MainTex;4;0;Create;True;0;0;False;0;False;-1;None;0599eaf09cd5d734f847e95c9d63f93c;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;56;1285.089,1169.926;Inherit;False;69;Scale;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;76;1262.531,1398.74;Float;False;Property;_ParticleScaleAffect;ParticleScaleAffect;18;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;62;1451.264,824.3096;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;5;-658.2833,-0.5145569;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-778.9198,205.4213;Float;False;Property;_Softness;Softness;8;0;Create;True;0;0;False;0;False;1;0.036;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;70;-810.3787,617.7672;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;66;1335.7,961.6089;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;65;1602.264,885.3096;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;6;-483.2833,59.48547;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;71;-598.7823,548.6122;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode;104;710.8594,364.0245;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;105;960.7852,316.7413;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldReflectionVector;16;-388.9095,742.3661;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SaturateNode;8;-341.2833,91.48548;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;9;-1023.184,-311.7146;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;48;258.8332,-162.5158;Float;False;Property;_FadeDistance;FadeDistance;13;0;Create;True;0;0;False;0;False;0.02;0.02;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade;53;442.8331,-226.5158;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;15;496.2905,657.666;Inherit;True;Property;_ReflectionMap;ReflectionMap;14;0;Create;True;0;0;False;0;False;-1;None;1f2d561d140125e44878214c349d5b23;True;0;False;black;LockedToCube;False;Object;-1;Auto;Cube;6;0;SAMPLER2D;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;80;-65.05733,-611.8793;Inherit;False;Property;_FresnelScale1;Fresnel Scale;3;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;20;-1026.793,-490.8484;Float;False;Property;_Tint;Tint;16;0;Create;True;0;0;False;0;False;0,0,0,0;0.437197,0.66,0.2648403,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;81;-33.05733,-499.8792;Inherit;False;Property;_FresnelPower1;Fresnel Power;2;0;Create;True;0;0;False;0;False;1;1.05;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;18;-48.30959,602.6661;Float;False;Property;_Specular;Specular;15;0;Create;True;0;0;False;0;False;0;0.357;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;84;-129.0574,-819.8792;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;25;-62.00797,90.96698;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;86;131.8092,-1027.588;Inherit;False;Property;_IntensityBright1;Intensity Bright;12;0;Create;True;0;0;False;0;False;0;2.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;50;865.8332,-49.51572;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;82;270.9426,-739.8793;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;85;61.99712,-1256.611;Inherit;False;Property;_ColorBright1;Color Bright;1;0;Create;True;0;0;False;0;False;0.2483057,0.9150943,0.1942417,1;0.5181475,0.9254902,0.08627423,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-583.2833,-332.5146;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;241.5905,484.3661;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;17;202.3736,-314.3759;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;87;376.8093,-1163.588;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;54;987.6033,57.25665;Float;False;FinalAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;83;526.9426,-755.8793;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;89;670.9971,-1162.611;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;103;821.8439,-551.3269;Inherit;False;54;FinalAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;102;1172.931,-726.7933;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;99;983.0256,-978.8687;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;88;60.64262,-1463.579;Inherit;False;Property;_ColorDark1;Color Dark;0;0;Create;True;0;0;False;0;False;0.2483057,0.9150943,0.1942417,1;0.4371973,0.66,0.2648406,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;11;-537.2833,-113.5145;Float;False;Property;_Metallic;Metallic;9;1;[Gamma];Create;True;0;0;False;0;False;0;0.75;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;44;-178.364,720.7702;Inherit;False;True;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-287.364,944.7702;Float;False;Property;_SpecularNormalMul;SpecularNormalMul;20;0;Create;True;0;0;False;0;False;0;0.05;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;45;44.63599,744.7702;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.NormalizeNode;42;366.636,868.7702;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;100;1397.726,-752.6687;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ComponentMaskNode;101;909.3256,-785.1687;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;74;1369.967,155.3058;Float;False;Property;_SpecularColor;SpecularColor;17;0;Create;True;0;0;False;0;False;0,0,0,0;0.4509804,0.4509804,0.4509804,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;46;174.636,767.7702;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;12;-442.2833,-25.51455;Float;False;Property;_Smothness;Smothness;10;0;Create;True;0;0;False;0;False;0.9529412;0.923;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;55;-1601.688,459.9107;Float;False;Errosion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;58;808.5776,796.4774;Inherit;True;Property;_DisplacementNoise;DisplacementNoise;21;0;Create;True;0;0;False;0;False;-1;None;6192d775099a88644a551ec0a86187b1;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;98;1995.079,-380.9609;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Liquid/Sphere Errosion Unlit;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;97;0;95;0
WireConnection;97;1;96;0
WireConnection;92;0;90;0
WireConnection;92;2;97;0
WireConnection;91;0;92;0
WireConnection;91;1;93;0
WireConnection;68;0;23;4
WireConnection;68;1;67;0
WireConnection;2;1;38;0
WireConnection;2;5;14;0
WireConnection;60;0;59;0
WireConnection;60;1;91;0
WireConnection;69;0;68;0
WireConnection;73;0;2;3
WireConnection;24;0;4;0
WireConnection;24;1;23;3
WireConnection;1;1;38;0
WireConnection;76;1;77;0
WireConnection;76;0;75;1
WireConnection;62;0;60;0
WireConnection;62;1;63;0
WireConnection;5;0;1;1
WireConnection;5;1;24;0
WireConnection;70;0;2;3
WireConnection;70;1;73;0
WireConnection;65;0;62;0
WireConnection;65;1;66;0
WireConnection;65;2;56;0
WireConnection;65;3;76;0
WireConnection;6;0;5;0
WireConnection;6;1;7;0
WireConnection;71;0;2;1
WireConnection;71;1;2;2
WireConnection;71;2;70;0
WireConnection;105;0;104;0
WireConnection;105;1;65;0
WireConnection;16;0;71;0
WireConnection;8;0;6;0
WireConnection;53;1;105;0
WireConnection;53;0;48;0
WireConnection;15;1;16;0
WireConnection;84;0;2;0
WireConnection;25;0;9;4
WireConnection;25;1;8;0
WireConnection;50;0;53;0
WireConnection;50;1;25;0
WireConnection;82;0;84;0
WireConnection;82;2;80;0
WireConnection;82;3;81;0
WireConnection;10;0;9;0
WireConnection;10;1;20;0
WireConnection;19;0;18;0
WireConnection;19;1;15;0
WireConnection;17;0;10;0
WireConnection;17;1;19;0
WireConnection;87;0;85;0
WireConnection;87;1;86;0
WireConnection;54;0;50;0
WireConnection;83;0;82;0
WireConnection;89;0;17;0
WireConnection;89;1;87;0
WireConnection;89;2;83;0
WireConnection;102;0;103;0
WireConnection;99;0;89;0
WireConnection;44;0;16;0
WireConnection;45;0;44;0
WireConnection;45;1;40;0
WireConnection;42;0;46;0
WireConnection;100;0;99;0
WireConnection;100;3;102;0
WireConnection;101;0;17;0
WireConnection;46;0;45;0
WireConnection;46;2;16;3
WireConnection;55;0;24;0
WireConnection;98;0;100;0
WireConnection;98;1;65;0
ASEEND*/
//CHKSM=3BC4F7C2A485F6AF94F261D9D0635A1A361FE6D3