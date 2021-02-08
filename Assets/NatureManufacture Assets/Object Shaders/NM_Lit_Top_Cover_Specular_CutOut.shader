Shader "NatureManufacture/HDRP/Lit/Specular Top Cover CutOut"
{
    Properties
    {
        _AlphaCutoff("Alpha Cutoff", Range(0, 1)) = 0
        _BaseColor("Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_BaseColorMap("Base Map(RGB) Alpha(A)", 2D) = "white" {}
        [ToggleUI]_BaseUsePlanarUV("Base Use Planar UV", Float) = 0
        _BaseTilingOffset("Base Tiling and Offset", Vector) = (1, 1, 0, 0)
        _SpecularColor("Specular Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_SpecularColorMap("Specular Map", 2D) = "white" {}
        [NoScaleOffset]_BaseNormalMap("Base Normal Map", 2D) = "bump" {}
        _BaseNormalScale("Base Normal Scale", Range(0, 8)) = 1
        [NoScaleOffset]_BaseMaskMap("Base Mask Map AO(G) SM(A)", 2D) = "white" {}
        _BaseAORemapMin("Base AO Remap Min", Range(0, 1)) = 0
        _BaseAORemapMax("Base AO Remap Max", Range(0, 1)) = 1
        _BaseSmoothnessRemapMin("Base Smoothness Remap Min", Range(0, 1)) = 0
        _BaseSmoothnessRemapMax("Base Smoothness Remap Max", Range(0, 1)) = 1
        [ToggleUI]_USEDYNAMICCOVERTSTATICMASKF("Use Dynamic Cover (T) Static Mask (F)", Float) = 1
        [NoScaleOffset]_CoverMaskA("Cover Mask (A)", 2D) = "white" {}
        _CoverMaskPower("Cover Mask Power", Range(0, 10)) = 1
        _Cover_Amount("Cover Amount", Range(0, 2)) = 2
        _Cover_Amount_Grow_Speed("Cover Amount Grow Speed", Range(0, 3)) = 3
        _Cover_Max_Angle("Cover Max Angle", Range(0.001, 90)) = 35
        _Cover_Min_Height("Cover Min Height", Float) = -10000
        _Cover_Min_Height_Blending("Cover Min Height Blending", Range(0, 500)) = 1
        _CoverBaseColor("Cover Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_CoverBaseColorMap("Cover Base Map", 2D) = "white" {}
        [ToggleUI]_CoverUsePlanarUV("Cover Use Planar UV", Float) = 1
        _CoverTilingOffset("Cover Tiling Offset", Vector) = (1, 1, 0, 0)
        _CoverSpecularColor("Cover Specular Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_CoverSpecularColorMap("Cover Specular Map", 2D) = "white" {}
        [NoScaleOffset]_CoverNormalMap("Cover Normal Map", 2D) = "bump" {}
        _CoverNormalScale("Cover Normal Scale", Range(0, 8)) = 1
        _CoverNormalBlendHardness("Cover Normal Blend Hardness", Range(0, 8)) = 1
        _CoverHardness("Cover Hardness", Range(0, 10)) = 5
        _CoverHeightMapMin("Cover Height Map Min", Float) = 0
        _CoverHeightMapMax("Cover Height Map Max", Float) = 1
        _CoverHeightMapOffset("Cover Height Map Offset", Float) = 0
        [NoScaleOffset]_CoverMaskMap("Cover Mask Map AO(G) H(B) SM(A)", 2D) = "white" {}
        _CoverAORemapMin("Cover AO Remap Min", Range(0, 1)) = 0
        _CoverAORemapMax("Cover AO Remap Max", Range(0, 1)) = 1
        _CoverSmoothnessRemapMin("Cover Smoothness Remap Min", Range(0, 1)) = 0
        _CoverSmoothnessRemapMax("Cover Smoothness Remap Max", Range(0, 1)) = 1
        [NoScaleOffset]_DetailMap("Detail Map Base (R) Ny(G) Sm(B) Nx(A)", 2D) = "white" {}
        _DetailTilingOffset("Detail Tiling Offset", Vector) = (1, 1, 0, 0)
        _DetailAlbedoScale("Detail Albedo Scale", Range(0, 2)) = 0
        _DetailNormalScale("Detail Normal Scale", Range(0, 2)) = 0
        _DetailSmoothnessScale("Detail Smoothness Scale", Range(0, 2)) = 0
        _WetColor("Wet Color Vertex(R)", Color) = (0.7735849, 0.7735849, 0.7735849, 0)
        _WetSmoothness("Wet Smoothness Vertex(R)", Range(0, 1)) = 1
        [HideInInspector]_EmissionColor("Color", Color) = (1, 1, 1, 1)
        [HideInInspector]_RenderQueueType("Vector1", Float) = 1
        [HideInInspector]_StencilRef("Vector1", Int) = 2
        [HideInInspector]_StencilWriteMask("Vector1", Int) = 3
        [HideInInspector]_StencilRefDepth("Vector1", Int) = 0
        [HideInInspector]_StencilWriteMaskDepth("Vector1", Int) = 48
        [HideInInspector]_StencilRefMV("Vector1", Int) = 128
        [HideInInspector]_StencilWriteMaskMV("Vector1", Int) = 176
        [HideInInspector]_StencilRefDistortionVec("Vector1", Int) = 64
        [HideInInspector]_StencilWriteMaskDistortionVec("Vector1", Int) = 64
        [HideInInspector]_StencilWriteMaskGBuffer("Vector1", Int) = 51
        [HideInInspector]_StencilRefGBuffer("Vector1", Int) = 2
        [HideInInspector]_ZTestGBuffer("Vector1", Int) = 4
        [HideInInspector][ToggleUI]_RequireSplitLighting("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_ReceivesSSR("Boolean", Float) = 1
        [HideInInspector]_SurfaceType("Vector1", Float) = 0
        [HideInInspector]_BlendMode("Vector1", Float) = 0
        [HideInInspector]_SrcBlend("Vector1", Float) = 1
        [HideInInspector]_DstBlend("Vector1", Float) = 0
        [HideInInspector]_AlphaSrcBlend("Vector1", Float) = 1
        [HideInInspector]_AlphaDstBlend("Vector1", Float) = 0
        [HideInInspector][ToggleUI]_ZWrite("Boolean", Float) = 0
        [HideInInspector]_CullMode("Vector1", Float) = 2
        [HideInInspector]_TransparentSortPriority("Vector1", Int) = 0
        [HideInInspector]_CullModeForward("Vector1", Float) = 2
        [HideInInspector][Enum(Front, 1, Back, 2)]_TransparentCullMode("Vector1", Float) = 2
        [HideInInspector]_ZTestDepthEqualForOpaque("Vector1", Int) = 4
        [HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)]_ZTestTransparent("Vector1", Float) = 4
        [HideInInspector][ToggleUI]_TransparentBackfaceEnable("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_AlphaCutoffEnable("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_UseShadowThreshold("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_DoubleSidedEnable("Boolean", Float) = 0
        [HideInInspector][Enum(Flip, 0, Mirror, 1, None, 2)]_DoubleSidedNormalMode("Vector1", Float) = 2
        [HideInInspector]_DoubleSidedConstants("Vector4", Vector) = (1, 1, -1, 0)
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
            "RenderType"="HDLitShader"
            "Queue" = "AlphaTest+0"
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "ShadowCaster"
            Tags { "LightMode" = "ShadowCaster" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            ZClip [_ZClip]
        
            
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_SHADOWS
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.uv0
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float4 texCoord0; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float4 interp01 : TEXCOORD1; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyzw = input.texCoord0;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.texCoord0 = input.interp01.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 TangentSpaceNormal; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    // output.texCoord1 = input.texCoord1;
                    // output.texCoord2 = input.texCoord2;
                    // output.texCoord3 = input.texCoord3;
                    // output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    // output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    // output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    // output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    // output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                // surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                // normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "META"
            Tags { "LightMode" = "META" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull Off
        
            
            
            
            
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                float4 uv1 : TEXCOORD1; // optional
                float4 uv2 : TEXCOORD2; // optional
                float4 color : COLOR; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 color; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                float4 interp04 : TEXCOORD4; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                output.interp02.xyzw = input.tangentWS;
                output.interp03.xyzw = input.texCoord0;
                output.interp04.xyzw = input.color;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                output.tangentWS = input.interp02.xyzw;
                output.texCoord0 = input.interp03.xyzw;
                output.color = input.interp04.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    // output.texCoord1 = input.texCoord1;
                    // output.texCoord2 = input.texCoord2;
                    // output.texCoord3 = input.texCoord3;
                    output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassLightTransport.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "SceneSelectionPass"
            Tags { "LightMode" = "SceneSelectionPass" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            
            
            
            
            
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_DEPTH_ONLY
                #define SCENESELECTIONPASS
                #pragma editor_sync_compilation
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.uv0
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float4 texCoord0; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float4 interp01 : TEXCOORD1; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyzw = input.texCoord0;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.texCoord0 = input.interp01.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 TangentSpaceNormal; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    // output.texCoord1 = input.texCoord1;
                    // output.texCoord2 = input.texCoord2;
                    // output.texCoord3 = input.texCoord3;
                    // output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    // output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    // output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    // output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    // output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                // surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                // normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "DepthOnly"
            Tags { "LightMode" = "DepthOnly" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskDepth]
           Ref [_StencilRefDepth]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_DEPTH_ONLY
                #pragma multi_compile _ WRITE_NORMAL_BUFFER
                #pragma multi_compile _ WRITE_MSAA_DEPTH
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   AttributesMesh.uv3
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord3
                //   FragInputs.color
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord3
                //   VaryingsMeshToPS.color
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                float4 uv1 : TEXCOORD1; // optional
                float4 uv2 : TEXCOORD2; // optional
                float4 uv3 : TEXCOORD3; // optional
                float4 color : COLOR; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 texCoord1; // optional
                float4 texCoord2; // optional
                float4 texCoord3; // optional
                float4 color; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                float4 interp04 : TEXCOORD4; // auto-packed
                float4 interp05 : TEXCOORD5; // auto-packed
                float4 interp06 : TEXCOORD6; // auto-packed
                float4 interp07 : TEXCOORD7; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                output.interp02.xyzw = input.tangentWS;
                output.interp03.xyzw = input.texCoord0;
                output.interp04.xyzw = input.texCoord1;
                output.interp05.xyzw = input.texCoord2;
                output.interp06.xyzw = input.texCoord3;
                output.interp07.xyzw = input.color;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                output.tangentWS = input.interp02.xyzw;
                output.texCoord0 = input.interp03.xyzw;
                output.texCoord1 = input.interp04.xyzw;
                output.texCoord2 = input.interp05.xyzw;
                output.texCoord3 = input.interp06.xyzw;
                output.color = input.interp07.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    output.texCoord1 = input.texCoord1;
                    output.texCoord2 = input.texCoord2;
                    output.texCoord3 = input.texCoord3;
                    output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "GBuffer"
            Tags { "LightMode" = "GBuffer" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            ZTest [_ZTestGBuffer]
        
            
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskGBuffer]
           Ref [_StencilRefGBuffer]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_GBUFFER
                #pragma multi_compile _ DEBUG_DISPLAY
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #pragma multi_compile _ SHADOWS_SHADOWMASK
                #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
                #pragma multi_compile _ LIGHT_LAYERS
                #define RAYTRACING_SHADER_GRAPH_HIGH
                #ifndef DEBUG_DISPLAY
    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
    #endif
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.color
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                float4 uv1 : TEXCOORD1; // optional
                float4 uv2 : TEXCOORD2; // optional
                float4 color : COLOR; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 texCoord1; // optional
                float4 texCoord2; // optional
                float4 color; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                float4 interp04 : TEXCOORD4; // auto-packed
                float4 interp05 : TEXCOORD5; // auto-packed
                float4 interp06 : TEXCOORD6; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                output.interp02.xyzw = input.tangentWS;
                output.interp03.xyzw = input.texCoord0;
                output.interp04.xyzw = input.texCoord1;
                output.interp05.xyzw = input.texCoord2;
                output.interp06.xyzw = input.color;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                output.tangentWS = input.interp02.xyzw;
                output.texCoord0 = input.interp03.xyzw;
                output.texCoord1 = input.interp04.xyzw;
                output.texCoord2 = input.interp05.xyzw;
                output.color = input.interp06.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    output.texCoord1 = input.texCoord1;
                    output.texCoord2 = input.texCoord2;
                    // output.texCoord3 = input.texCoord3;
                    output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassGBuffer.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "MotionVectors"
            Tags { "LightMode" = "MotionVectors" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskMV]
           Ref [_StencilRefMV]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_MOTION_VECTORS
                #pragma multi_compile _ WRITE_NORMAL_BUFFER
                #pragma multi_compile _ WRITE_MSAA_DEPTH
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   AttributesMesh.uv3
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord3
                //   FragInputs.color
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord3
                //   VaryingsMeshToPS.color
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                float4 uv1 : TEXCOORD1; // optional
                float4 uv2 : TEXCOORD2; // optional
                float4 uv3 : TEXCOORD3; // optional
                float4 color : COLOR; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 texCoord1; // optional
                float4 texCoord2; // optional
                float4 texCoord3; // optional
                float4 color; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                float4 interp04 : TEXCOORD4; // auto-packed
                float4 interp05 : TEXCOORD5; // auto-packed
                float4 interp06 : TEXCOORD6; // auto-packed
                float4 interp07 : TEXCOORD7; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                output.interp02.xyzw = input.tangentWS;
                output.interp03.xyzw = input.texCoord0;
                output.interp04.xyzw = input.texCoord1;
                output.interp05.xyzw = input.texCoord2;
                output.interp06.xyzw = input.texCoord3;
                output.interp07.xyzw = input.color;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                output.tangentWS = input.interp02.xyzw;
                output.texCoord0 = input.interp03.xyzw;
                output.texCoord1 = input.interp04.xyzw;
                output.texCoord2 = input.interp05.xyzw;
                output.texCoord3 = input.interp06.xyzw;
                output.color = input.interp07.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    output.texCoord1 = input.texCoord1;
                    output.texCoord2 = input.texCoord2;
                    output.texCoord3 = input.texCoord3;
                    output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassMotionVectors.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "Forward"
            Tags { "LightMode" = "Forward" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
        
            Cull [_CullModeForward]
        
            ZTest Equal
        
            ZWrite [_ZWrite]
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMask]
           Ref [_StencilRef]
           Comp Always
           Pass Replace
        }
        
            ColorMask [_ColorMaskTransparentVel] 1
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_FORWARD
                #pragma multi_compile _ DEBUG_DISPLAY
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #pragma multi_compile _ SHADOWS_SHADOWMASK
                #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
                #pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
                #pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH
                #ifndef DEBUG_DISPLAY
    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
    #endif
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.color
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
            // Generated Type: AttributesMesh
            struct AttributesMesh
            {
                float3 positionOS : POSITION;
                float3 normalOS : NORMAL; // optional
                float4 tangentOS : TANGENT; // optional
                float4 uv0 : TEXCOORD0; // optional
                float4 uv1 : TEXCOORD1; // optional
                float4 uv2 : TEXCOORD2; // optional
                float4 color : COLOR; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
                float3 positionRWS; // optional
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 texCoord1; // optional
                float4 texCoord2; // optional
                float4 color; // optional
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            };
            
            // Generated Type: PackedVaryingsMeshToPS
            struct PackedVaryingsMeshToPS
            {
                float4 positionCS : SV_Position; // unpacked
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                float4 interp04 : TEXCOORD4; // auto-packed
                float4 interp05 : TEXCOORD5; // auto-packed
                float4 interp06 : TEXCOORD6; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                output.interp02.xyzw = input.tangentWS;
                output.interp03.xyzw = input.texCoord0;
                output.interp04.xyzw = input.texCoord1;
                output.interp05.xyzw = input.texCoord2;
                output.interp06.xyzw = input.color;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToPS
            VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
            {
                VaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                output.tangentWS = input.interp02.xyzw;
                output.texCoord0 = input.interp03.xyzw;
                output.texCoord1 = input.interp04.xyzw;
                output.texCoord2 = input.interp05.xyzw;
                output.color = input.interp06.xyzw;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                output.cullFace = input.cullFace;
                #endif // conditional
                return output;
            }
            // Generated Type: VaryingsMeshToDS
            struct VaryingsMeshToDS
            {
                float3 positionRWS;
                float3 normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            
            // Generated Type: PackedVaryingsMeshToDS
            struct PackedVaryingsMeshToDS
            {
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
                #endif // conditional
                float3 interp00 : TEXCOORD0; // auto-packed
                float3 interp01 : TEXCOORD1; // auto-packed
            };
            
            // Packed Type: VaryingsMeshToDS
            PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
            {
                PackedVaryingsMeshToDS output;
                output.interp00.xyz = input.positionRWS;
                output.interp01.xyz = input.normalWS;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            
            // Unpacked Type: VaryingsMeshToDS
            VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
            {
                VaryingsMeshToDS output;
                output.positionRWS = input.interp00.xyz;
                output.normalWS = input.interp01.xyz;
                #if UNITY_ANY_INSTANCING_ENABLED
                output.instanceID = input.instanceID;
                #endif // conditional
                return output;
            }
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
                FragInputs BuildFragInputs(VaryingsMeshToPS input)
                {
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.positionCS;       // input.positionCS is SV_Position
            
                    output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    output.texCoord1 = input.texCoord1;
                    output.texCoord2 = input.texCoord2;
                    // output.texCoord3 = input.texCoord3;
                    output.color = input.color;
                    #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                    output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #elif SHADER_STAGE_FRAGMENT
                    // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                    #endif // SHADER_STAGE_FRAGMENT
            
                    return output;
                }
            
                SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
            
                    output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                    // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                    // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                    output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                    output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                    // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                    // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                    // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                    output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                    // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                    // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                    // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                    // output.WorldSpaceViewDirection =     normalize(viewWS);
                    // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                    // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                    // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                    // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                    // output.WorldSpacePosition =          input.positionRWS;
                    // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                    // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                    // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                    output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    // output.uv3 =                         input.texCoord3;
                    output.VertexColor =                 input.color;
                    // output.FaceSign =                    input.isFrontFace;
                    // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
            
                    return output;
                }
            
                // existing HDRP code uses the combined function to go directly from packed to frag inputs
                FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                    return BuildFragInputs(unpacked);
                }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : SharedCode.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    // Both uses and modifies 'surfaceData.normalWS'.
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassForward.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "IndirectDXR"
            Tags { "LightMode" = "IndirectDXR" }
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        
            //#pragma enable_d3d11_debug_symbols
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _SURFACE_TYPE_TRANSPARENT 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma raytracing test
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_RAYTRACING_INDIRECT
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #pragma multi_compile _ DIFFUSE_LIGHTING_ONLY
                #define SHADOW_LOW
                #define RAYTRACING_SHADER_GRAPH_LOW
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #endif
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #define HAS_LIGHTLOOP
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #endif
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
            
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingCommon.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                surfaceDescription.Alpha = 1.0;
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
        
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
            }
        
            bool GetSurfaceDataFromIntersection(FragInputs fragInputs, float3 V, PositionInputs posInput, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, intersectionVertex, rayCone, surfaceData, bentNormalWS);
        
        #if defined(DEBUG_DISPLAY)
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1,  fragInputs.texCoord2, builtinData);
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // TODO: Handle depth offset
                //builtinData.depthOffset = 0.0;
        
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
        
                // The surface should not be culled
                return true;
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingIndirect.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "VisibilityDXR"
            Tags { "LightMode" = "VisibilityDXR" }
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        
            //#pragma enable_d3d11_debug_symbols
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _SURFACE_TYPE_TRANSPARENT 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma raytracing test
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_RAYTRACING_VISIBILITY
                #define RAYTRACING_SHADER_GRAPH_LOW
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #endif
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #define HAS_LIGHTLOOP
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #endif
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
            
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingCommon.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                surfaceDescription.Alpha = 1.0;
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
        
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
            }
        
            bool GetSurfaceDataFromIntersection(FragInputs fragInputs, float3 V, PositionInputs posInput, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, intersectionVertex, rayCone, surfaceData, bentNormalWS);
        
        #if defined(DEBUG_DISPLAY)
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1,  fragInputs.texCoord2, builtinData);
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // TODO: Handle depth offset
                //builtinData.depthOffset = 0.0;
        
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
        
                // The surface should not be culled
                return true;
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingVisibility.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "ForwardDXR"
            Tags { "LightMode" = "ForwardDXR" }
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        
            //#pragma enable_d3d11_debug_symbols
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _SURFACE_TYPE_TRANSPARENT 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma raytracing test
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_RAYTRACING_FORWARD
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #define SHADOW_LOW
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #endif
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #define HAS_LIGHTLOOP
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #endif
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
            
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingCommon.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                surfaceDescription.Alpha = 1.0;
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
        
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
            }
        
            bool GetSurfaceDataFromIntersection(FragInputs fragInputs, float3 V, PositionInputs posInput, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, intersectionVertex, rayCone, surfaceData, bentNormalWS);
        
        #if defined(DEBUG_DISPLAY)
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1,  fragInputs.texCoord2, builtinData);
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // TODO: Handle depth offset
                //builtinData.depthOffset = 0.0;
        
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
        
                // The surface should not be culled
                return true;
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingForward.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "GBufferDXR"
            Tags { "LightMode" = "GBufferDXR" }
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        
            //#pragma enable_d3d11_debug_symbols
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _SURFACE_TYPE_TRANSPARENT 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma raytracing test
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_RAYTRACING_GBUFFER
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #define SHADOW_LOW
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #endif
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #define HAS_LIGHTLOOP
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #endif
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
            
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingCommon.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                surfaceDescription.Alpha = 1.0;
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
        
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
            }
        
            bool GetSurfaceDataFromIntersection(FragInputs fragInputs, float3 V, PositionInputs posInput, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, intersectionVertex, rayCone, surfaceData, bentNormalWS);
        
        #if defined(DEBUG_DISPLAY)
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1,  fragInputs.texCoord2, builtinData);
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // TODO: Handle depth offset
                //builtinData.depthOffset = 0.0;
        
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
        
                // The surface should not be culled
                return true;
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderpassRaytracingGBuffer.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "PathTracingDXR"
            Tags { "LightMode" = "PathTracingDXR" }
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        
            //#pragma enable_d3d11_debug_symbols
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _SURFACE_TYPE_TRANSPARENT 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma raytracing test
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_PATH_TRACING
                #define SHADOW_LOW
                #define RAYTRACING_SHADER_GRAPH_HIGH
                // ACTIVE FIELDS:
                //   Material.SpecularColor
                //   AlphaTest
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.AbsoluteWorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.Specular
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   SurfaceDescription.AlphaClipThreshold
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.color
                //   AttributesMesh.uv0
                // Shared Graph Keywords
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        	
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #endif
        
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #define HAS_LIGHTLOOP
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #if (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #endif
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
            
        #if (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS_RAYTRACING_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingCommon.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float _AlphaCutoff;
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float4 _SpecularColor;
                    float _BaseNormalScale;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _USEDYNAMICCOVERTSTATICMASKF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float _CoverUsePlanarUV;
                    float4 _CoverTilingOffset;
                    float4 _CoverSpecularColor;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_SpecularColorMap); SAMPLER(sampler_SpecularColorMap); float4 _SpecularColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverSpecularColorMap); SAMPLER(sampler_CoverSpecularColorMap); float4 _CoverSpecularColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                    SAMPLER(_SampleTexture2D_AF934D9A_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_C528E171_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_44CC6A15_Sampler_3_Linear_Repeat);
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 AbsoluteWorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float3 Specular;
                        float CoatMask;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ_2)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ_2 = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4_1)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4_1 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 AbsoluteWorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Texture2D_80A3D28F_TexelSize, float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ_2)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 Transform_D163BAD_tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, Transform_D163BAD_tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ_2 = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay_1)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay_1 = _Lerp_CA077B77_Out_3;
                    }
                
                    void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_2353C4BE_Out_0 = _BaseTilingOffset;
                        float _Property_7041A8C7_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_555FFE40;
                        _PlanarNM_555FFE40.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_555FFE40.uv0 = IN.uv0;
                        float4 _PlanarNM_555FFE40_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _BaseColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_555FFE40, _PlanarNM_555FFE40_XZ_2);
                        float4 _Property_4911F5D7_Out_0 = _BaseColor;
                        float4 _Multiply_31F5318C_Out_2;
                        Unity_Multiply_float(_PlanarNM_555FFE40_XZ_2, _Property_4911F5D7_Out_0, _Multiply_31F5318C_Out_2);
                        float4 _Property_C8DC4D5A_Out_0 = _DetailTilingOffset;
                        float _Split_B319801A_R_1 = _Property_C8DC4D5A_Out_0[0];
                        float _Split_B319801A_G_2 = _Property_C8DC4D5A_Out_0[1];
                        float _Split_B319801A_B_3 = _Property_C8DC4D5A_Out_0[2];
                        float _Split_B319801A_A_4 = _Property_C8DC4D5A_Out_0[3];
                        float2 _Vector2_16DD2F52_Out_0 = float2(_Split_B319801A_R_1, _Split_B319801A_G_2);
                        float2 _Vector2_FBC2C1ED_Out_0 = float2(_Split_B319801A_B_3, _Split_B319801A_A_4);
                        float2 _TilingAndOffset_4CFC5AC4_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_16DD2F52_Out_0, _Vector2_FBC2C1ED_Out_0, _TilingAndOffset_4CFC5AC4_Out_3);
                        float4 _SampleTexture2D_C528E171_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_4CFC5AC4_Out_3);
                        float _SampleTexture2D_C528E171_R_4 = _SampleTexture2D_C528E171_RGBA_0.r;
                        float _SampleTexture2D_C528E171_G_5 = _SampleTexture2D_C528E171_RGBA_0.g;
                        float _SampleTexture2D_C528E171_B_6 = _SampleTexture2D_C528E171_RGBA_0.b;
                        float _SampleTexture2D_C528E171_A_7 = _SampleTexture2D_C528E171_RGBA_0.a;
                        float _Multiply_7AE1E402_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_R_4, 2, _Multiply_7AE1E402_Out_2);
                        float _Add_CA41C8A3_Out_2;
                        Unity_Add_float(_Multiply_7AE1E402_Out_2, -1, _Add_CA41C8A3_Out_2);
                        float _Property_47823B1C_Out_0 = _DetailAlbedoScale;
                        float _Multiply_C7254760_Out_2;
                        Unity_Multiply_float(_Add_CA41C8A3_Out_2, _Property_47823B1C_Out_0, _Multiply_C7254760_Out_2);
                        float _Saturate_5208A998_Out_1;
                        Unity_Saturate_float(_Multiply_C7254760_Out_2, _Saturate_5208A998_Out_1);
                        float _Absolute_793AB6AE_Out_1;
                        Unity_Absolute_float(_Saturate_5208A998_Out_1, _Absolute_793AB6AE_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_886A4F00;
                        float3 _BlendOverlayBaseColor_886A4F00_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_31F5318C_Out_2, _Add_CA41C8A3_Out_2, _Absolute_793AB6AE_Out_1, _BlendOverlayBaseColor_886A4F00, _BlendOverlayBaseColor_886A4F00_OutVector4_1);
                        float4 _Property_2588572B_Out_0 = _CoverTilingOffset;
                        float _Property_1E3AA10A_Out_0 = _CoverUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_3662EA60;
                        _PlanarNM_3662EA60.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_3662EA60.uv0 = IN.uv0;
                        float4 _PlanarNM_3662EA60_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), _CoverBaseColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_3662EA60, _PlanarNM_3662EA60_XZ_2);
                        float4 _Property_4218B3F7_Out_0 = _CoverBaseColor;
                        float4 _Multiply_F4981DC6_Out_2;
                        Unity_Multiply_float(_PlanarNM_3662EA60_XZ_2, _Property_4218B3F7_Out_0, _Multiply_F4981DC6_Out_2);
                        float _Property_D33A83D3_Out_0 = _USEDYNAMICCOVERTSTATICMASKF;
                        float4 _UV_B08781C9_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_44CC6A15_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_B08781C9_Out_0.xy));
                        float _SampleTexture2D_44CC6A15_R_4 = _SampleTexture2D_44CC6A15_RGBA_0.r;
                        float _SampleTexture2D_44CC6A15_G_5 = _SampleTexture2D_44CC6A15_RGBA_0.g;
                        float _SampleTexture2D_44CC6A15_B_6 = _SampleTexture2D_44CC6A15_RGBA_0.b;
                        float _SampleTexture2D_44CC6A15_A_7 = _SampleTexture2D_44CC6A15_RGBA_0.a;
                        float _Property_555A7626_Out_0 = _CoverMaskPower;
                        float _Multiply_6D4B3B6C_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_44CC6A15_A_7, _Property_555A7626_Out_0, _Multiply_6D4B3B6C_Out_2);
                        float _Clamp_15F63226_Out_3;
                        Unity_Clamp_float(_Multiply_6D4B3B6C_Out_2, 0, 1, _Clamp_15F63226_Out_3);
                        float2 _Vector2_61AC7BF9_Out_0 = float2(_SampleTexture2D_C528E171_A_7, _SampleTexture2D_C528E171_G_5);
                        float2 _Multiply_75C5F756_Out_2;
                        Unity_Multiply_float(_Vector2_61AC7BF9_Out_0, float2(2, 2), _Multiply_75C5F756_Out_2);
                        float2 _Add_3FF160B8_Out_2;
                        Unity_Add_float2(_Multiply_75C5F756_Out_2, float2(-1, -1), _Add_3FF160B8_Out_2);
                        float _Property_9DF695BF_Out_0 = _DetailNormalScale;
                        float2 _Multiply_948A9666_Out_2;
                        Unity_Multiply_float(_Add_3FF160B8_Out_2, (_Property_9DF695BF_Out_0.xx), _Multiply_948A9666_Out_2);
                        float _Split_42E50D56_R_1 = _Multiply_948A9666_Out_2[0];
                        float _Split_42E50D56_G_2 = _Multiply_948A9666_Out_2[1];
                        float _Split_42E50D56_B_3 = 0;
                        float _Split_42E50D56_A_4 = 0;
                        float _DotProduct_1E6A05BC_Out_2;
                        Unity_DotProduct_float2(_Multiply_948A9666_Out_2, _Multiply_948A9666_Out_2, _DotProduct_1E6A05BC_Out_2);
                        float _Saturate_E3E11BCE_Out_1;
                        Unity_Saturate_float(_DotProduct_1E6A05BC_Out_2, _Saturate_E3E11BCE_Out_1);
                        float _OneMinus_C8433E6A_Out_1;
                        Unity_OneMinus_float(_Saturate_E3E11BCE_Out_1, _OneMinus_C8433E6A_Out_1);
                        float _SquareRoot_4B17DF4F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_C8433E6A_Out_1, _SquareRoot_4B17DF4F_Out_1);
                        float3 _Vector3_D09BAD9D_Out_0 = float3(_Split_42E50D56_R_1, _Split_42E50D56_G_2, _SquareRoot_4B17DF4F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_C2F28C9D;
                        _PlanarNMn_C2F28C9D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_C2F28C9D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_C2F28C9D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_C2F28C9D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_C2F28C9D.uv0 = IN.uv0;
                        float4 _PlanarNMn_C2F28C9D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _BaseNormalMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNMn_C2F28C9D, _PlanarNMn_C2F28C9D_XZ_2);
                        float _Property_9F0599BE_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_A0E6073F_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_C2F28C9D_XZ_2.xyz), _Property_9F0599BE_Out_0, _NormalStrength_A0E6073F_Out_2);
                        float3 _NormalBlend_D80EE7E9_Out_2;
                        Unity_NormalBlend_float(_Vector3_D09BAD9D_Out_0, _NormalStrength_A0E6073F_Out_2, _NormalBlend_D80EE7E9_Out_2);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_FD467CB3;
                        _PlanarNMn_FD467CB3.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_FD467CB3.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_FD467CB3.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_FD467CB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNMn_FD467CB3.uv0 = IN.uv0;
                        float4 _PlanarNMn_FD467CB3_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), _CoverNormalMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNMn_FD467CB3, _PlanarNMn_FD467CB3_XZ_2);
                        float _Property_5D22E650_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D243D011_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_5D22E650_Out_0, _NormalStrength_D243D011_Out_2);
                        float _Split_D8E8AB08_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_D8E8AB08_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_D8E8AB08_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_D8E8AB08_A_4 = 0;
                        float _Property_AB2E2F63_Out_0 = _Cover_Amount;
                        float _Property_39C08465_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_FC68F470_Out_2;
                        Unity_Subtract_float(4, _Property_39C08465_Out_0, _Subtract_FC68F470_Out_2);
                        float _Divide_21BBDF4F_Out_2;
                        Unity_Divide_float(_Property_AB2E2F63_Out_0, _Subtract_FC68F470_Out_2, _Divide_21BBDF4F_Out_2);
                        float _Absolute_D6CC9688_Out_1;
                        Unity_Absolute_float(_Divide_21BBDF4F_Out_2, _Absolute_D6CC9688_Out_1);
                        float _Power_891D4BCD_Out_2;
                        Unity_Power_float(_Absolute_D6CC9688_Out_1, _Subtract_FC68F470_Out_2, _Power_891D4BCD_Out_2);
                        float _Clamp_A2BC7E07_Out_3;
                        Unity_Clamp_float(_Power_891D4BCD_Out_2, 0, 2, _Clamp_A2BC7E07_Out_3);
                        float _Multiply_B4330D97_Out_2;
                        Unity_Multiply_float(_Split_D8E8AB08_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_B4330D97_Out_2);
                        float _Saturate_447D6D83_Out_1;
                        Unity_Saturate_float(_Multiply_B4330D97_Out_2, _Saturate_447D6D83_Out_1);
                        float _Clamp_F935C9D4_Out_3;
                        Unity_Clamp_float(_Split_D8E8AB08_G_2, 0, 0.9999, _Clamp_F935C9D4_Out_3);
                        float _Property_6E452A15_Out_0 = _Cover_Max_Angle;
                        float _Divide_C2EB0AC8_Out_2;
                        Unity_Divide_float(_Property_6E452A15_Out_0, 45, _Divide_C2EB0AC8_Out_2);
                        float _OneMinus_98F307E5_Out_1;
                        Unity_OneMinus_float(_Divide_C2EB0AC8_Out_2, _OneMinus_98F307E5_Out_1);
                        float _Subtract_5AF5ED83_Out_2;
                        Unity_Subtract_float(_Clamp_F935C9D4_Out_3, _OneMinus_98F307E5_Out_1, _Subtract_5AF5ED83_Out_2);
                        float _Clamp_FB39A4BC_Out_3;
                        Unity_Clamp_float(_Subtract_5AF5ED83_Out_2, 0, 2, _Clamp_FB39A4BC_Out_3);
                        float _Divide_1BE200E3_Out_2;
                        Unity_Divide_float(1, _Divide_C2EB0AC8_Out_2, _Divide_1BE200E3_Out_2);
                        float _Multiply_27F32FB8_Out_2;
                        Unity_Multiply_float(_Clamp_FB39A4BC_Out_3, _Divide_1BE200E3_Out_2, _Multiply_27F32FB8_Out_2);
                        float _Absolute_AB127FAC_Out_1;
                        Unity_Absolute_float(_Multiply_27F32FB8_Out_2, _Absolute_AB127FAC_Out_1);
                        float _Property_C0785FF7_Out_0 = _CoverHardness;
                        float _Power_F8AB2E72_Out_2;
                        Unity_Power_float(_Absolute_AB127FAC_Out_1, _Property_C0785FF7_Out_0, _Power_F8AB2E72_Out_2);
                        float _Property_EAC27AC4_Out_0 = _Cover_Min_Height;
                        float _OneMinus_151D5F73_Out_1;
                        Unity_OneMinus_float(_Property_EAC27AC4_Out_0, _OneMinus_151D5F73_Out_1);
                        float _Split_17815511_R_1 = IN.AbsoluteWorldSpacePosition[0];
                        float _Split_17815511_G_2 = IN.AbsoluteWorldSpacePosition[1];
                        float _Split_17815511_B_3 = IN.AbsoluteWorldSpacePosition[2];
                        float _Split_17815511_A_4 = 0;
                        float _Add_3AA3722F_Out_2;
                        Unity_Add_float(_OneMinus_151D5F73_Out_1, _Split_17815511_G_2, _Add_3AA3722F_Out_2);
                        float _Add_D5280906_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, 1, _Add_D5280906_Out_2);
                        float _Clamp_B69E1E53_Out_3;
                        Unity_Clamp_float(_Add_D5280906_Out_2, 0, 1, _Clamp_B69E1E53_Out_3);
                        float _Property_F7D146E0_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_5216631C_Out_2;
                        Unity_Add_float(_Add_3AA3722F_Out_2, _Property_F7D146E0_Out_0, _Add_5216631C_Out_2);
                        float _Divide_284218EE_Out_2;
                        Unity_Divide_float(_Add_5216631C_Out_2, _Add_3AA3722F_Out_2, _Divide_284218EE_Out_2);
                        float _OneMinus_B52B988B_Out_1;
                        Unity_OneMinus_float(_Divide_284218EE_Out_2, _OneMinus_B52B988B_Out_1);
                        float _Add_FCDCCAAB_Out_2;
                        Unity_Add_float(_OneMinus_B52B988B_Out_1, -0.5, _Add_FCDCCAAB_Out_2);
                        float _Clamp_1B93AB72_Out_3;
                        Unity_Clamp_float(_Add_FCDCCAAB_Out_2, 0, 1, _Clamp_1B93AB72_Out_3);
                        float _Add_E2140EE3_Out_2;
                        Unity_Add_float(_Clamp_B69E1E53_Out_3, _Clamp_1B93AB72_Out_3, _Add_E2140EE3_Out_2);
                        float _Clamp_BFB7682F_Out_3;
                        Unity_Clamp_float(_Add_E2140EE3_Out_2, 0, 1, _Clamp_BFB7682F_Out_3);
                        float _Multiply_62BD5957_Out_2;
                        Unity_Multiply_float(_Power_F8AB2E72_Out_2, _Clamp_BFB7682F_Out_3, _Multiply_62BD5957_Out_2);
                        float _Multiply_39244F81_Out_2;
                        Unity_Multiply_float(_Saturate_447D6D83_Out_1, _Multiply_62BD5957_Out_2, _Multiply_39244F81_Out_2);
                        float3 _Lerp_73D15502_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_D243D011_Out_2, (_Multiply_39244F81_Out_2.xxx), _Lerp_73D15502_Out_3);
                        float3x3 Transform_86338BFC_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_86338BFC_Out_1 = mul(Transform_86338BFC_transposeTangent, _Lerp_73D15502_Out_3.xyz).xyz;
                        float _Split_476C18D3_R_1 = _Transform_86338BFC_Out_1[0];
                        float _Split_476C18D3_G_2 = _Transform_86338BFC_Out_1[1];
                        float _Split_476C18D3_B_3 = _Transform_86338BFC_Out_1[2];
                        float _Split_476C18D3_A_4 = 0;
                        float _Multiply_EA4DD46E_Out_2;
                        Unity_Multiply_float(_Split_476C18D3_G_2, _Clamp_A2BC7E07_Out_3, _Multiply_EA4DD46E_Out_2);
                        float _Multiply_4C16B9EE_Out_2;
                        Unity_Multiply_float(_Clamp_A2BC7E07_Out_3, _Property_C0785FF7_Out_0, _Multiply_4C16B9EE_Out_2);
                        float _Multiply_B707382C_Out_2;
                        Unity_Multiply_float(_Multiply_4C16B9EE_Out_2, _Multiply_62BD5957_Out_2, _Multiply_B707382C_Out_2);
                        float _Multiply_63966917_Out_2;
                        Unity_Multiply_float(_Multiply_EA4DD46E_Out_2, _Multiply_B707382C_Out_2, _Multiply_63966917_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_66DB1422;
                        _PlanarNM_66DB1422.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_66DB1422.uv0 = IN.uv0;
                        float4 _PlanarNM_66DB1422_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), _CoverMaskMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_66DB1422, _PlanarNM_66DB1422_XZ_2);
                        float _Split_647CAA85_R_1 = _PlanarNM_66DB1422_XZ_2[0];
                        float _Split_647CAA85_G_2 = _PlanarNM_66DB1422_XZ_2[1];
                        float _Split_647CAA85_B_3 = _PlanarNM_66DB1422_XZ_2[2];
                        float _Split_647CAA85_A_4 = _PlanarNM_66DB1422_XZ_2[3];
                        float _Property_2840B685_Out_0 = _CoverHeightMapMin;
                        float _Property_7AE3B988_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_232666CA_Out_0 = float2(_Property_2840B685_Out_0, _Property_7AE3B988_Out_0);
                        float _Property_DC88D03B_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_E5274882_Out_2;
                        Unity_Add_float2(_Vector2_232666CA_Out_0, (_Property_DC88D03B_Out_0.xx), _Add_E5274882_Out_2);
                        float _Remap_F5F64F9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_B_3, float2 (0, 1), _Add_E5274882_Out_2, _Remap_F5F64F9_Out_3);
                        float _Multiply_3EC201E7_Out_2;
                        Unity_Multiply_float(_Multiply_63966917_Out_2, _Remap_F5F64F9_Out_3, _Multiply_3EC201E7_Out_2);
                        float _Split_115A57AE_R_1 = IN.VertexColor[0];
                        float _Split_115A57AE_G_2 = IN.VertexColor[1];
                        float _Split_115A57AE_B_3 = IN.VertexColor[2];
                        float _Split_115A57AE_A_4 = IN.VertexColor[3];
                        float _Multiply_5A00B35F_Out_2;
                        Unity_Multiply_float(_Multiply_3EC201E7_Out_2, _Split_115A57AE_G_2, _Multiply_5A00B35F_Out_2);
                        float _Saturate_C4BF0275_Out_1;
                        Unity_Saturate_float(_Multiply_5A00B35F_Out_2, _Saturate_C4BF0275_Out_1);
                        float _Multiply_82D5F0CF_Out_2;
                        Unity_Multiply_float(_Clamp_15F63226_Out_3, _Saturate_C4BF0275_Out_1, _Multiply_82D5F0CF_Out_2);
                        float _Branch_DC4A2362_Out_3;
                        Unity_Branch_float(_Property_D33A83D3_Out_0, _Multiply_82D5F0CF_Out_2, _Clamp_15F63226_Out_3, _Branch_DC4A2362_Out_3);
                        float3 _Lerp_E76EB7E0_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_886A4F00_OutVector4_1, (_Multiply_F4981DC6_Out_2.xyz), (_Branch_DC4A2362_Out_3.xxx), _Lerp_E76EB7E0_Out_3);
                        float4 _Property_54C603D4_Out_0 = _WetColor;
                        float3 _Multiply_F0FCB9CA_Out_2;
                        Unity_Multiply_float((_Property_54C603D4_Out_0.xyz), _Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2);
                        float _OneMinus_5DB6BA46_Out_1;
                        Unity_OneMinus_float(_Split_115A57AE_R_1, _OneMinus_5DB6BA46_Out_1);
                        float3 _Lerp_8A6A0ED5_Out_3;
                        Unity_Lerp_float3(_Lerp_E76EB7E0_Out_3, _Multiply_F0FCB9CA_Out_2, (_OneMinus_5DB6BA46_Out_1.xxx), _Lerp_8A6A0ED5_Out_3);
                        float _Property_4F96D75D_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_3173B408_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_FD467CB3_XZ_2.xyz), _Property_4F96D75D_Out_0, _NormalStrength_3173B408_Out_2);
                        float3 _Lerp_E6808EB9_Out_3;
                        Unity_Lerp_float3(_NormalBlend_D80EE7E9_Out_2, _NormalStrength_3173B408_Out_2, (_Branch_DC4A2362_Out_3.xxx), _Lerp_E6808EB9_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_5F5E0B9;
                        _PlanarNM_5F5E0B9.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_5F5E0B9.uv0 = IN.uv0;
                        float4 _PlanarNM_5F5E0B9_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_SpecularColorMap, sampler_SpecularColorMap), _SpecularColorMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_5F5E0B9, _PlanarNM_5F5E0B9_XZ_2);
                        float4 _Property_3918BBD5_Out_0 = _SpecularColor;
                        float4 _Multiply_FC26DFC_Out_2;
                        Unity_Multiply_float(_PlanarNM_5F5E0B9_XZ_2, _Property_3918BBD5_Out_0, _Multiply_FC26DFC_Out_2);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_B988CEB4;
                        _PlanarNM_B988CEB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_B988CEB4.uv0 = IN.uv0;
                        float4 _PlanarNM_B988CEB4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_CoverSpecularColorMap, sampler_CoverSpecularColorMap), _CoverSpecularColorMap_TexelSize, _Property_2588572B_Out_0, _Property_1E3AA10A_Out_0, _PlanarNM_B988CEB4, _PlanarNM_B988CEB4_XZ_2);
                        float4 _Property_AAB7B899_Out_0 = _CoverSpecularColor;
                        float4 _Multiply_17448DB5_Out_2;
                        Unity_Multiply_float(_PlanarNM_B988CEB4_XZ_2, _Property_AAB7B899_Out_0, _Multiply_17448DB5_Out_2);
                        float4 _Lerp_879D3A81_Out_3;
                        Unity_Lerp_float4(_Multiply_FC26DFC_Out_2, _Multiply_17448DB5_Out_2, (_Branch_DC4A2362_Out_3.xxxx), _Lerp_879D3A81_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_F325DF39;
                        _PlanarNM_F325DF39.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                        _PlanarNM_F325DF39.uv0 = IN.uv0;
                        float4 _PlanarNM_F325DF39_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _BaseMaskMap_TexelSize, _Property_2353C4BE_Out_0, _Property_7041A8C7_Out_0, _PlanarNM_F325DF39, _PlanarNM_F325DF39_XZ_2);
                        float _Split_649A68E1_R_1 = _PlanarNM_F325DF39_XZ_2[0];
                        float _Split_649A68E1_G_2 = _PlanarNM_F325DF39_XZ_2[1];
                        float _Split_649A68E1_B_3 = _PlanarNM_F325DF39_XZ_2[2];
                        float _Split_649A68E1_A_4 = _PlanarNM_F325DF39_XZ_2[3];
                        float _Property_83C7C672_Out_0 = _BaseAORemapMin;
                        float _Property_57C2B6E6_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_CBD971DF_Out_0 = float2(_Property_83C7C672_Out_0, _Property_57C2B6E6_Out_0);
                        float _Remap_F946FC37_Out_3;
                        Unity_Remap_float(_Split_649A68E1_G_2, float2 (0, 1), _Vector2_CBD971DF_Out_0, _Remap_F946FC37_Out_3);
                        float _Property_41270D27_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_B661E7D6_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CB618DC4_Out_0 = float2(_Property_41270D27_Out_0, _Property_B661E7D6_Out_0);
                        float _Remap_36F1D840_Out_3;
                        Unity_Remap_float(_Split_649A68E1_A_4, float2 (0, 1), _Vector2_CB618DC4_Out_0, _Remap_36F1D840_Out_3);
                        float _Multiply_163618E5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_C528E171_B_6, 2, _Multiply_163618E5_Out_2);
                        float _Add_D76A4042_Out_2;
                        Unity_Add_float(_Multiply_163618E5_Out_2, -1, _Add_D76A4042_Out_2);
                        float _Property_B7A5D116_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_F07EA8E5_Out_2;
                        Unity_Multiply_float(_Add_D76A4042_Out_2, _Property_B7A5D116_Out_0, _Multiply_F07EA8E5_Out_2);
                        float _Saturate_5D5B9DAD_Out_1;
                        Unity_Saturate_float(_Multiply_F07EA8E5_Out_2, _Saturate_5D5B9DAD_Out_1);
                        float _Absolute_CA1FDA93_Out_1;
                        Unity_Absolute_float(_Saturate_5D5B9DAD_Out_1, _Absolute_CA1FDA93_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_A8254BEE;
                        float _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_36F1D840_Out_3, _Add_D76A4042_Out_2, _Absolute_CA1FDA93_Out_1, _BlendOverlayDetailSmoothness_A8254BEE, _BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1);
                        float _Saturate_25B88239_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_A8254BEE_SmoothnessOverlay_1, _Saturate_25B88239_Out_1);
                        float2 _Vector2_E35FE060_Out_0 = float2(_Remap_F946FC37_Out_3, _Saturate_25B88239_Out_1);
                        float _Property_FE9C2ABE_Out_0 = _CoverAORemapMin;
                        float _Property_9C249000_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_A790A599_Out_0 = float2(_Property_FE9C2ABE_Out_0, _Property_9C249000_Out_0);
                        float _Remap_E7235FD9_Out_3;
                        Unity_Remap_float(_Split_647CAA85_G_2, float2 (0, 1), _Vector2_A790A599_Out_0, _Remap_E7235FD9_Out_3);
                        float _Property_994320A7_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_4D51B48F_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_9AB7E192_Out_0 = float2(_Property_994320A7_Out_0, _Property_4D51B48F_Out_0);
                        float _Remap_47F109B_Out_3;
                        Unity_Remap_float(_Split_647CAA85_A_4, float2 (0, 1), _Vector2_9AB7E192_Out_0, _Remap_47F109B_Out_3);
                        float2 _Vector2_1B22FDB0_Out_0 = float2(_Remap_E7235FD9_Out_3, _Remap_47F109B_Out_3);
                        float2 _Lerp_8AC60F83_Out_3;
                        Unity_Lerp_float2(_Vector2_E35FE060_Out_0, _Vector2_1B22FDB0_Out_0, (_Branch_DC4A2362_Out_3.xx), _Lerp_8AC60F83_Out_3);
                        float _Split_B553E7C8_R_1 = _Lerp_8AC60F83_Out_3[0];
                        float _Split_B553E7C8_G_2 = _Lerp_8AC60F83_Out_3[1];
                        float _Split_B553E7C8_B_3 = 0;
                        float _Split_B553E7C8_A_4 = 0;
                        float _Property_E6032B33_Out_0 = _WetSmoothness;
                        float _Lerp_E41BCD27_Out_3;
                        Unity_Lerp_float(_Split_B553E7C8_G_2, _Property_E6032B33_Out_0, _OneMinus_5DB6BA46_Out_1, _Lerp_E41BCD27_Out_3);
                        float _Split_C047722C_R_1 = _PlanarNM_555FFE40_XZ_2[0];
                        float _Split_C047722C_G_2 = _PlanarNM_555FFE40_XZ_2[1];
                        float _Split_C047722C_B_3 = _PlanarNM_555FFE40_XZ_2[2];
                        float _Split_C047722C_A_4 = _PlanarNM_555FFE40_XZ_2[3];
                        float _Property_6E0AD335_Out_0 = _AlphaCutoff;
                        surface.Albedo = _Lerp_8A6A0ED5_Out_3;
                        surface.Normal = _Lerp_E6808EB9_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.Specular = (_Lerp_879D3A81_Out_3.xyz);
                        surface.CoatMask = 0;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_E41BCD27_Out_3;
                        surface.Occlusion = _Split_B553E7C8_R_1;
                        surface.Alpha = _Split_C047722C_A_4;
                        surface.AlphaClipThreshold = _Property_6E0AD335_Out_0;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                surfaceData.specularOcclusion = 1.0;
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                surfaceDescription.Alpha = 1.0;
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
        
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
            }
        
            bool GetSurfaceDataFromIntersection(FragInputs fragInputs, float3 V, PositionInputs posInput, IntersectionVertex intersectionVertex, RayCone rayCone, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, intersectionVertex, rayCone, surfaceData, bentNormalWS);
        
        #if defined(DEBUG_DISPLAY)
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1,  fragInputs.texCoord2, builtinData);
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // TODO: Handle depth offset
                //builtinData.depthOffset = 0.0;
        
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
        
                // The surface should not be culled
                return true;
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassPathTracing.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
    }
    CustomEditor "UnityEditor.Rendering.HighDefinition.HDLitGUI"
    FallBack "Hidden/Shader Graph/FallbackError"
}
