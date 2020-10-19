// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Knife/Lightning"
{
	Properties
	{
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_NoiseScale("Noise Scale", Float) = 1
		_SecondNoiseScale("Second Noise Scale", Float) = 1
		_MainOffset("Main Offset", Float) = 1
		_SecondOffset("Second Offset", Float) = 1
		_ShowFraction("Show Fraction", Range( 0 , 2)) = 1
		_FinalOffset("Final Offset", Range( 0 , 1)) = 1
		_FinalSecondOffset("Final Second Offset", Range( 0 , 1)) = 1
		_FinalArc("Final Arc", Range( 0 , 1)) = 1
		_FinalMainOffset("Final Main Offset", Range( 0 , 1)) = 1
		_Thickness("Thickness", Range( -0.1 , 0.1)) = 0
		_FinalThickness("Final Thickness", Range( 0 , 1)) = 0.1773244
		_SecondNoiseSpeed("Second Noise Speed", Float) = 0
		_MainNoiseSpeed("Main Noise Speed", Float) = 0
		_FinalAlpha("Final Alpha", Range( 0 , 1)) = 1
		_Arc("Arc", Float) = 0
		_Random("Random", Float) = 0
		[KeywordEnum(U,V)] _ShowFractionMode("Show Fraction Mode", Float) = 1
		[Toggle(_INVERTUV_ON)] _InvertUV("Invert UV", Float) = 1
		[Toggle]_ZWrite("ZWrite", Float) = 0
		[Toggle(_UVALPHAGRADIENT_ON)] _UVAlphaGradient("UV Alpha Gradient", Float) = 0
		_ThicknessNoiseSpeed("Thickness Noise Speed", Float) = 0
		_ThicknessNoiseScale("Thickness Noise Scale", Float) = 0
		_ThicknessNoiseAmount("Thickness Noise Amount", Float) = 0
		_ThicknessTexture("Thickness Texture", 2D) = "white" {}

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
		ZWrite [_ZWrite]
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
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _INVERTUV_ON
			#pragma shader_feature_local _SHOWFRACTIONMODE_U _SHOWFRACTIONMODE_V
			#pragma shader_feature_local _UVALPHAGRADIENT_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float3 ase_normal : NORMAL;
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
			};

			uniform float _ZWrite;
			uniform float _Random;
			uniform float _MainNoiseSpeed;
			uniform float _NoiseScale;
			uniform float _MainOffset;
			uniform float _FinalMainOffset;
			uniform float _SecondNoiseSpeed;
			uniform float _SecondNoiseScale;
			uniform float _SecondOffset;
			uniform float _FinalSecondOffset;
			uniform float _FinalArc;
			uniform float _Arc;
			uniform float _FinalOffset;
			uniform float _Thickness;
			uniform float _FinalThickness;
			uniform float _ThicknessNoiseAmount;
			uniform sampler2D _ThicknessTexture;
			uniform float _ThicknessNoiseScale;
			uniform float _ThicknessNoiseSpeed;
			uniform float4 _Color;
			uniform float _ShowFraction;
			uniform float _FinalAlpha;
			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float random178 = _Random;
				float2 appendResult6 = (float2(random178 , v.vertex.xyz.z));
				float mulTime137 = _Time.y * _MainNoiseSpeed;
				float2 vertex_position_small133 = (appendResult6*1.0 + ( random178 + mulTime137 ));
				float simplePerlin2D3 = snoise( vertex_position_small133*_NoiseScale );
				float mulTime108 = _Time.y * _SecondNoiseSpeed;
				float2 vertex_position_big102 = (appendResult6*1.0 + ( random178 + mulTime108 ));
				float simplePerlin2D52 = snoise( vertex_position_big102*_SecondNoiseScale );
				float2 uv012 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_13_0 = (uv012).y;
				float length_mask143 = ( 1.0 - ( abs( ( temp_output_13_0 - 0.5 ) ) * 2.0 ) );
				float simplePerlin2D29 = snoise( ( vertex_position_small133 + float2( 500.2515,500.2515 ) )*_NoiseScale );
				float simplePerlin2D51 = snoise( ( vertex_position_big102 + float2( 500.2515,500.2515 ) )*_SecondNoiseScale );
				float4 appendResult31 = (float4(( ( simplePerlin2D3 * _MainOffset * _FinalMainOffset ) + ( simplePerlin2D52 * _SecondOffset * _FinalSecondOffset * length_mask143 ) ) , ( ( _MainOffset * simplePerlin2D29 * _FinalMainOffset ) + ( simplePerlin2D51 * _SecondOffset * _FinalSecondOffset * length_mask143 ) ) , 0.0 , 0.0));
				float smoothstepResult125 = smoothstep( -1.0 , 1.0 , abs( ( temp_output_13_0 - 0.5 ) ));
				float temp_output_124_0 = ( ( smoothstepResult125 * 2.0 ) * _FinalArc );
				float3 appendResult122 = (float3(( sin( random178 ) * temp_output_124_0 ) , ( cos( random178 ) * -temp_output_124_0 ) , 0.0));
				float3 break100 = ( v.ase_normal * ( _Thickness * _FinalThickness ) );
				float3 appendResult101 = (float3(break100.x , break100.y , 0.0));
				float2 uv0218 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult219 = (float2(random178 , uv0218.y));
				float mulTime217 = _Time.y * _ThicknessNoiseSpeed;
				float2 temp_output_215_0 = (appendResult219*_ThicknessNoiseScale + mulTime217);
				float3 break222 = ( v.ase_normal * ( _ThicknessNoiseAmount * tex2Dlod( _ThicknessTexture, float4( temp_output_215_0, 0, 0.0) ).r ) );
				float3 appendResult221 = (float3(break222.x , break222.y , 0.0));
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = ( ( ( appendResult31 + float4( ( appendResult122 * _Arc * length_mask143 ) , 0.0 ) ) * _FinalOffset ) + float4( ( appendResult101 + appendResult221 ) , 0.0 ) ).xyz;
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
				float2 uv033 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#if defined(_SHOWFRACTIONMODE_U)
				float staticSwitch197 = uv033.x;
				#elif defined(_SHOWFRACTIONMODE_V)
				float staticSwitch197 = uv033.y;
				#else
				float staticSwitch197 = uv033.y;
				#endif
				#ifdef _INVERTUV_ON
				float staticSwitch198 = ( 1.0 - staticSwitch197 );
				#else
				float staticSwitch198 = staticSwitch197;
				#endif
				float smoothstepResult77 = smoothstep( 0.9 , 1.0 , saturate( ( staticSwitch198 - ( 1.0 - _ShowFraction ) ) ));
				#ifdef _UVALPHAGRADIENT_ON
				float staticSwitch200 = staticSwitch198;
				#else
				float staticSwitch200 = 1.0;
				#endif
				float smoothstepResult202 = smoothstep( 0.0 , 1.0 , staticSwitch200);
				float4 appendResult185 = (float4(1.0 , 1.0 , 1.0 , ( smoothstepResult77 * _FinalAlpha * smoothstepResult202 )));
				
				
				finalColor = ( _Color * appendResult185 );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
-1857;201;1857;684;2201.183;-1458.25;1.3;True;False
Node;AmplifyShaderEditor.RangedFloatNode;177;-6290.202,575.1053;Inherit;False;Property;_Random;Random;16;0;Create;True;0;0;False;0;False;0;38.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;12;-3323.854,1796.301;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;83;-6024.536,185.8295;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;178;-6034.81,605.5458;Inherit;False;random;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;135;-5149.058,1183.414;Inherit;False;Property;_MainNoiseSpeed;Main Noise Speed;13;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;110;-5494.615,816.7367;Inherit;False;Property;_SecondNoiseSpeed;Second Noise Speed;12;0;Create;True;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;137;-4957.392,1119.453;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;108;-5178.949,774.7758;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-5180.533,564.1154;Inherit;False;178;random;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;90;-5657.916,238.2539;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;181;-4856.88,990.4272;Inherit;False;178;random;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-5097.533,5.115417;Inherit;False;178;random;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;13;-3046.571,1792.603;Inherit;True;False;True;True;True;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;130;-2694.286,1552.269;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;115;-4794.768,554.3836;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;6;-4859.326,10.35932;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;14;-2687.086,1800.008;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;142;-4588.21,950.0611;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;109;-4614.105,11.09136;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.AbsOpNode;15;-2362.086,1827.008;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;126;-2423.786,1562.769;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;134;-4533.424,511.2191;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SmoothstepOpNode;125;-2242.365,1557.129;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-2155.086,1806.008;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;102;-4246.611,44.52262;Inherit;False;vertex_position_big;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;216;-1289.235,2006.553;Inherit;False;Property;_ThicknessNoiseSpeed;Thickness Noise Speed;21;0;Create;True;0;0;False;0;False;0;-1.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;218;-1374.402,1723.573;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;33;-1672.367,-39.6615;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;133;-4243.316,255.8842;Inherit;False;vertex_position_small;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;220;-1363.026,1874.811;Inherit;False;178;random;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;19;-1908.086,1824.008;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;197;-1309.397,75.93732;Inherit;False;Property;_ShowFractionMode;Show Fraction Mode;17;0;Create;True;0;0;False;0;False;0;1;1;True;;KeywordEnum;2;U;V;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;104;-3543.312,316.3384;Inherit;False;133;vertex_position_small;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;217;-973.5688,1964.593;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;219;-1053.402,1770.573;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;132;-2079.286,1710.269;Inherit;False;Property;_FinalArc;Final Arc;8;0;Create;True;0;0;False;0;False;1;0.019;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;106;-3064.312,836.3384;Inherit;False;102;vertex_position_big;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;127;-2056.786,1510.769;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-1089.433,2160.304;Inherit;False;Property;_ThicknessNoiseScale;Thickness Noise Scale;22;0;Create;True;0;0;False;0;False;0;15.48;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;30;-3282.842,391.6825;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;500.2515,500.2515;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;34;-1404.367,281.3385;Inherit;False;Property;_ShowFraction;Show Fraction;5;0;Create;True;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;215;-786.2817,1800.66;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;105;-3161.312,577.3384;Inherit;False;102;vertex_position_big;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-3382.002,14.69993;Inherit;False;Property;_NoiseScale;Noise Scale;1;0;Create;True;0;0;False;0;False;1;35;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;124;-1758.128,1335.932;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;56;-2765.162,852.9488;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;500.2515,500.2515;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-2783.111,773.558;Inherit;False;Property;_SecondNoiseScale;Second Noise Scale;2;0;Create;True;0;0;False;0;False;1;2.39;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;183;-2264.152,1250.109;Inherit;False;178;random;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;143;-1668.813,1843.716;Inherit;False;length_mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;103;-3189.312,-99.66159;Inherit;False;133;vertex_position_small;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;76;-996.7751,177.6744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;131;-1598.286,1424.269;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-2506.5,109.2998;Inherit;False;Property;_MainOffset;Main Offset;3;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;29;-2725.408,377.9825;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;147;-2240.201,777.2574;Inherit;False;143;length_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;144;-2451.048,1172.127;Inherit;False;143;length_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;152;-1742.805,1197.113;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;196;-916.7495,1552.018;Inherit;False;Property;_FinalThickness;Final Thickness;11;0;Create;True;0;0;False;0;False;0.1773244;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;80;-905.5026,1460.077;Inherit;False;Property;_Thickness;Thickness;10;0;Create;True;0;0;False;0;False;0;0;-0.1;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;63;-2194.123,1027.259;Inherit;False;Property;_SecondOffset;Second Offset;4;0;Create;True;0;0;False;0;False;1;5.83;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;150;-1736.805,1095.113;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;198;-944.397,41.93729;Inherit;False;Property;_InvertUV;Invert UV;18;0;Create;True;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;119;-2577.344,1070.886;Inherit;False;Property;_FinalSecondOffset;Final Second Offset;7;0;Create;True;0;0;False;0;False;1;0.348;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;120;-2396.507,-93.43604;Inherit;False;Property;_FinalMainOffset;Final Main Offset;9;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;223;-564.7198,1981.58;Inherit;True;Property;_ThicknessTexture;Thickness Texture;24;0;Create;True;0;0;False;0;False;-1;None;fc0aa0f7b945b224fab73509db5301ef;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NoiseGeneratorNode;3;-2736.1,-127.1;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;52;-2432.878,548.9323;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;51;-2556.887,834.1149;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;210;-488.623,1720.451;Inherit;False;Property;_ThicknessNoiseAmount;Thickness Noise Amount;23;0;Create;True;0;0;False;0;False;0;0.17;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;36;-871.3672,330.3385;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;213;-270.2816,1502.463;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;65;-2244.204,289.3355;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;211;-88.62291,1775.451;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;35;-695.3672,185.3385;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;-1521.805,1039.113;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;201;-926.3469,-115.881;Inherit;False;Constant;_Float2;Float 2;22;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;61;-2133.706,470.0357;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;64;-2203.904,77.43556;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;62;-1963.404,749.5356;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;155;-1498.805,1156.113;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;99;-685.7335,1138.216;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;204;-546.6468,1356.152;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;149;-1173.747,1462.063;Inherit;False;143;length_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;98;-327.909,1173.094;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;59;-1807.223,181.2267;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;200;-778.3469,-86.88098;Inherit;False;Property;_UVAlphaGradient;UV Alpha Gradient;20;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;123;-1191.128,1326.932;Inherit;False;Property;_Arc;Arc;15;0;Create;True;0;0;False;0;False;0;1.14;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;214;162.7184,1557.463;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;60;-1822.94,378.1489;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;37;-499.3672,203.3385;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;122;-1302.65,1140.218;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;118;-184.5284,350.0526;Inherit;False;Property;_FinalAlpha;Final Alpha;14;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;77;-287.7751,186.6744;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.9;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;202;-386.347,43.11899;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;31;-985.3299,511.5181;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.BreakToComponentsNode;100;-166.2126,1155.095;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;222;132.8251,1396.413;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;157;-913.8054,1079.113;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;121;-683.7516,570.1896;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;221;312.225,1253.413;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;101;57.78735,989.0949;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;67;-679.3622,972.0912;Inherit;False;Property;_FinalOffset;Final Offset;6;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;117;106.4716,202.0526;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;185;201.7859,13.58139;Inherit;False;FLOAT4;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9;-395,649.5;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;1;-485.9,-160.4;Inherit;False;Property;_Color;Color;0;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;22.62741,4.817704,3.198639,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;212;266.3618,1064.724;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;172;-5359.055,-134.4595;Inherit;False;Constant;_Float0;Float 0;17;0;Create;True;0;0;False;0;False;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;186;329.6859,-67.51859;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ObjectToWorldTransfNode;91;-5583.303,-36.78464;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;199;510.6531,356.119;Inherit;False;Property;_ZWrite;ZWrite;19;1;[Toggle];Create;True;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;167;-5658.729,-290.2344;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;206;-4506.819,212.5752;Inherit;False;randomed_vertex_position;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;75;-2496.208,236.6239;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;-1;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RoundOpNode;170;-4966.218,-291.8214;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;193;-435.564,1822.225;Inherit;False;Simplex2D;True;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;171;-4847.218,-285.8214;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;169;-5109.218,-293.8214;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;173;-5867.055,-206.4595;Inherit;False;Constant;_Float1;Float 1;17;0;Create;True;0;0;False;0;False;15;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;156;-1135.429,975.516;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;78;99.81519,419.2777;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;192;614.3,-40.7;Float;False;True;-1;2;ASEMaterialInspector;100;1;Knife/Lightning;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;True;199;True;3;False;-1;True;False;0;False;-1;0;False;-1;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;178;0;177;0
WireConnection;137;0;135;0
WireConnection;108;0;110;0
WireConnection;90;0;83;0
WireConnection;13;0;12;0
WireConnection;130;0;13;0
WireConnection;115;0;179;0
WireConnection;115;1;108;0
WireConnection;6;0;180;0
WireConnection;6;1;90;2
WireConnection;14;0;13;0
WireConnection;142;0;181;0
WireConnection;142;1;137;0
WireConnection;109;0;6;0
WireConnection;109;2;115;0
WireConnection;15;0;14;0
WireConnection;126;0;130;0
WireConnection;134;0;6;0
WireConnection;134;2;142;0
WireConnection;125;0;126;0
WireConnection;18;0;15;0
WireConnection;102;0;109;0
WireConnection;133;0;134;0
WireConnection;19;0;18;0
WireConnection;197;1;33;1
WireConnection;197;0;33;2
WireConnection;217;0;216;0
WireConnection;219;0;220;0
WireConnection;219;1;218;2
WireConnection;127;0;125;0
WireConnection;30;0;104;0
WireConnection;215;0;219;0
WireConnection;215;1;195;0
WireConnection;215;2;217;0
WireConnection;124;0;127;0
WireConnection;124;1;132;0
WireConnection;56;0;106;0
WireConnection;143;0;19;0
WireConnection;76;0;197;0
WireConnection;131;0;124;0
WireConnection;29;0;30;0
WireConnection;29;1;4;0
WireConnection;152;0;183;0
WireConnection;150;0;183;0
WireConnection;198;1;197;0
WireConnection;198;0;76;0
WireConnection;223;1;215;0
WireConnection;3;0;103;0
WireConnection;3;1;4;0
WireConnection;52;0;105;0
WireConnection;52;1;53;0
WireConnection;51;0;56;0
WireConnection;51;1;53;0
WireConnection;36;0;34;0
WireConnection;65;0;7;0
WireConnection;65;1;29;0
WireConnection;65;2;120;0
WireConnection;211;0;210;0
WireConnection;211;1;223;1
WireConnection;35;0;198;0
WireConnection;35;1;36;0
WireConnection;154;0;150;0
WireConnection;154;1;124;0
WireConnection;61;0;52;0
WireConnection;61;1;63;0
WireConnection;61;2;119;0
WireConnection;61;3;147;0
WireConnection;64;0;3;0
WireConnection;64;1;7;0
WireConnection;64;2;120;0
WireConnection;62;0;51;0
WireConnection;62;1;63;0
WireConnection;62;2;119;0
WireConnection;62;3;144;0
WireConnection;155;0;152;0
WireConnection;155;1;131;0
WireConnection;204;0;80;0
WireConnection;204;1;196;0
WireConnection;98;0;99;0
WireConnection;98;1;204;0
WireConnection;59;0;64;0
WireConnection;59;1;61;0
WireConnection;200;1;201;0
WireConnection;200;0;198;0
WireConnection;214;0;213;0
WireConnection;214;1;211;0
WireConnection;60;0;65;0
WireConnection;60;1;62;0
WireConnection;37;0;35;0
WireConnection;122;0;154;0
WireConnection;122;1;155;0
WireConnection;77;0;37;0
WireConnection;202;0;200;0
WireConnection;31;0;59;0
WireConnection;31;1;60;0
WireConnection;100;0;98;0
WireConnection;222;0;214;0
WireConnection;157;0;122;0
WireConnection;157;1;123;0
WireConnection;157;2;149;0
WireConnection;121;0;31;0
WireConnection;121;1;157;0
WireConnection;221;0;222;0
WireConnection;221;1;222;1
WireConnection;101;0;100;0
WireConnection;101;1;100;1
WireConnection;117;0;77;0
WireConnection;117;1;118;0
WireConnection;117;2;202;0
WireConnection;185;3;117;0
WireConnection;9;0;121;0
WireConnection;9;1;67;0
WireConnection;212;0;101;0
WireConnection;212;1;221;0
WireConnection;186;0;1;0
WireConnection;186;1;185;0
WireConnection;167;0;173;0
WireConnection;206;0;6;0
WireConnection;170;0;169;0
WireConnection;193;0;215;0
WireConnection;171;0;170;0
WireConnection;171;1;172;0
WireConnection;169;0;167;0
WireConnection;169;1;172;0
WireConnection;78;0;9;0
WireConnection;78;1;212;0
WireConnection;192;0;186;0
WireConnection;192;1;78;0
ASEEND*/
//CHKSM=82EA0D21EE4BC1080D40A97F51CD0E1EAEF0C920