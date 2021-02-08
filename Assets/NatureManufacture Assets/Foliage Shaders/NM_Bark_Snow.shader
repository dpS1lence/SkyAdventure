Shader "NatureManufacture/HDRP/Foliage/Bark Snow"
{
    Properties
    {
        _TrunkBaseColor("Trunk Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_TrunkBaseColorMap("Trunk Base Map", 2D) = "white" {}
        _TrunkTilingOffset("Trunk Tiling and Offset", Vector) = (1, 1, 0, 0)
        [NoScaleOffset]_TrunkNormalMap("Trunk Normal Map", 2D) = "bump" {}
        _TrunkNormalScale("Trunk Normal Scale", Range(0, 8)) = 1
        [NoScaleOffset]_TrunkMaskMap("Trunk Mask Map MT(R) AO(G) SM(A)", 2D) = "white" {}
        _TrunkMetallic("Trunk Metallic", Range(0, 1)) = 1
        _TrunkAORemapMin("Trunk AO Remap Min", Range(0, 1)) = 0
        _TrunkAORemapMax("Trunk AO Remap Max", Range(0, 1)) = 1
        _TrunkSmoothnessRemapMin("Trunk Smoothness Remap Min", Range(0, 1)) = 0
        _TrunkSmoothnessRemapMax("Trunk Smoothness Remap Max", Range(0, 1)) = 1
        [NoScaleOffset]_LayerMask("Bark Blend Mask(A)", 2D) = "black" {}
        _BarkBlendMaskTilingOffset("Bark Blend Mask Tiling Offset", Vector) = (1, 1, 0, 0)
        _BarkBaseColor("Bark Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_BarkBaseColorMap("Bark Base Map", 2D) = "white" {}
        [ToggleUI]_BarkUseUV3("Bark Use UV3", Float) = 1
        _BarkTilingOffset("Bark Tiling and Offset", Vector) = (1, 1, 0, 0)
        [NoScaleOffset]_BarkNormalMap("Bark Normal Map", 2D) = "bump" {}
        _BarkNormalScale("Bark Normal Scale", Range(0, 8)) = 1
        [NoScaleOffset]_BarkMaskMap("Bark Mask Map MT(R) AO(G) SM(A)", 2D) = "white" {}
        _BarkMetallic("Bark Metallic", Range(0, 1)) = 1
        _BarkSmoothnessRemapMin("Bark Smoothness Remap Min", Range(0, 1)) = 0
        _BarkSmoothnessRemapMax("Bark Smoothness Remap Max", Range(0, 1)) = 1
        _BarkAORemapMin("Bark AO Remap Min", Range(0, 1)) = 0
        _BarkAORemapMax("Bark AO Remap Max", Range(0, 1)) = 1
        _Snow_Amount("Snow Amount", Range(0, 2)) = 0
        _SnowBaseColor("Snow Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_SnowBaseColorMap("Snow Base Map", 2D) = "white" {}
        _SnowTilingOffset("Snow Tiling Offset", Vector) = (1, 1, 0, 0)
        [ToggleUI]_SnowUseUv3("Snow Use UV3", Float) = 0
        [NoScaleOffset]_SnowNormalMap("Snow Normal Map", 2D) = "bump" {}
        _SnowNormalScale("Snow Normal Scale", Range(0, 8)) = 1
        _SnowBlendHardness("Snow Blend Hardness", Range(0, 8)) = 1
        [NoScaleOffset]_SnowMaskMap("Snow Mask Map MT(R) AO(G) SM(A)", 2D) = "white" {}
        _SnowMetallic("Snow Metallic", Range(0, 1)) = 1
        _SnowAORemapMin("Snow AO Remap Min", Range(0, 1)) = 0
        _SnowAORemapMax("Snow AO Remap Max", Range(0, 1)) = 1
        _SnowSmoothnessRemapMin("Snow Smoothness Remap Min", Range(0, 1)) = 0
        _SnowSmoothnessRemapMax("Snow Smoothness Remap Max", Range(0, 1)) = 1
        _Stiffness("Wind Stiffness", Float) = 0
        _InitialBend("Wind Initial Bend", Float) = 0
        _Drag("Wind Drag", Float) = 0
        _NewNormal("Mesh Normal Multiply", Vector) = (0, 0, 0, 0)
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
        [HideInInspector][ToggleUI]_AlphaCutoffEnable("Boolean", Float) = 0
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
            "Queue" = "Geometry+0"
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            // #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            // #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            // #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            #define HAVE_MESH_MODIFICATION
        
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
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
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
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 TangentSpaceNormal; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
            
                    // output.positionRWS = input.positionRWS;
                    // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    // output.texCoord0 = input.texCoord0;
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    // output.uv0 =                         input.texCoord0;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv3
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            // #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            #define HAVE_MESH_MODIFICATION
        
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
                float3 normalWS; // optional
                float4 tangentWS; // optional
                float4 texCoord0; // optional
                float4 texCoord3; // optional
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
                float4 interp02 : TEXCOORD2; // auto-packed
                float4 interp03 : TEXCOORD3; // auto-packed
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
                output.interp00.xyz = input.normalWS;
                output.interp01.xyzw = input.tangentWS;
                output.interp02.xyzw = input.texCoord0;
                output.interp03.xyzw = input.texCoord3;
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
                output.normalWS = input.interp00.xyz;
                output.tangentWS = input.interp01.xyzw;
                output.texCoord0 = input.interp02.xyzw;
                output.texCoord3 = input.interp03.xyzw;
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                // vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                // input.positionOS = vertexDescription.VertexPosition;
                // input.normalOS = vertexDescription.VertexNormal;
                // input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
            
                    // output.positionRWS = input.positionRWS;
                    output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    output.texCoord0 = input.texCoord0;
                    // output.texCoord1 = input.texCoord1;
                    // output.texCoord2 = input.texCoord2;
                    output.texCoord3 = input.texCoord3;
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    output.uv3 =                         input.texCoord3;
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
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            // #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            // #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            // #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            #define HAVE_MESH_MODIFICATION
        
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
                #if UNITY_ANY_INSTANCING_ENABLED
                uint instanceID : INSTANCEID_SEMANTIC;
                #endif // UNITY_ANY_INSTANCING_ENABLED
            };
            // Generated Type: VaryingsMeshToPS
            struct VaryingsMeshToPS
            {
                float4 positionCS : SV_Position;
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
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
                #endif // conditional
            };
            
            // Packed Type: VaryingsMeshToPS
            PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
            {
                PackedVaryingsMeshToPS output;
                output.positionCS = input.positionCS;
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 TangentSpaceNormal; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
            
                    // output.positionRWS = input.positionRWS;
                    // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                    // output.texCoord0 = input.texCoord0;
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    // output.uv0 =                         input.texCoord0;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
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
            #define HAVE_MESH_MODIFICATION
        
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    output.uv3 =                         input.texCoord3;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            #define HAVE_MESH_MODIFICATION
        
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
                output.interp06.xyzw = input.texCoord3;
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    output.uv3 =                         input.texCoord3;
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
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
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
            #define HAVE_MESH_MODIFICATION
        
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    output.uv3 =                         input.texCoord3;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
        
            ZTest [_ZTestDepthEqualForOpaque]
        
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
                // Shared Graph Keywords
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            #define HAVE_MESH_MODIFICATION
        
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
                output.interp06.xyzw = input.texCoord3;
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------
            // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
            
            VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);
            
                output.ObjectSpaceNormal =           input.normalOS;
                // output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
                // output.ViewSpaceNormal =             TransformWorldToViewDir(output.WorldSpaceNormal);
                // output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.ObjectSpaceTangent =          input.tangentOS;
                // output.WorldSpaceTangent =           TransformObjectToWorldDir(input.tangentOS.xyz);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.ObjectSpaceBiTangent =        normalize(cross(input.normalOS, input.tangentOS) * (input.tangentOS.w > 0.0f ? 1.0f : -1.0f) * GetOddNegativeScale());
                // output.WorldSpaceBiTangent =         TransformObjectToWorldDir(output.ObjectSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                output.ObjectSpacePosition =         input.positionOS;
                // output.WorldSpacePosition =          TransformObjectToWorld(input.positionOS);
                // output.ViewSpacePosition =           TransformWorldToView(output.WorldSpacePosition);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
                // output.WorldSpaceViewDirection =     GetWorldSpaceNormalizeViewDir(output.WorldSpacePosition);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(output.WorldSpacePosition), _ProjectionParams.x);
                // output.uv0 =                         input.uv0;
                // output.uv1 =                         input.uv1;
                // output.uv2 =                         input.uv2;
                // output.uv3 =                         input.uv3;
                // output.VertexColor =                 input.color;
                // output.BoneWeights =                 input.weights;
                // output.BoneIndices =                 input.indices;
            
                return output;
            }
            
            AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters)
            {
                // build graph inputs
                VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
                // Override time paramters with used one (This is required to correctly handle motion vector for vertex animation based on time)
                vertexDescriptionInputs.TimeParameters = timeParameters;
            
                // evaluate vertex graph
                VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
            
                // copy graph output to the results
                input.positionOS = vertexDescription.VertexPosition;
                input.normalOS = vertexDescription.VertexNormal;
                input.tangentOS.xyz = vertexDescription.VertexTangent;
            
                return input;
            }
            
            //-------------------------------------------------------------------------------------
            // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
            //-------------------------------------------------------------------------------------
            
        
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
                    // output.AbsoluteWorldSpacePosition =  GetAbsolutePositionWS(input.positionRWS);
                    // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                    output.uv0 =                         input.texCoord0;
                    // output.uv1 =                         input.texCoord1;
                    // output.uv2 =                         input.texCoord2;
                    output.uv3 =                         input.texCoord3;
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
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
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
                output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
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
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
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
                output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
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
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
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
                output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
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
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
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
                output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
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
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
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
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
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
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   LodCrossFade
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescriptionInputs.uv3
                //   VertexDescriptionInputs.ObjectSpaceNormal
                //   VertexDescriptionInputs.ObjectSpaceTangent
                //   VertexDescriptionInputs.ObjectSpacePosition
                //   VertexDescriptionInputs.TimeParameters
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   features.modifyMesh
                //   VertexDescription.VertexPosition
                //   VertexDescription.VertexNormal
                //   VertexDescription.VertexTangent
                //   FragInputs.tangentToWorld
                //   FragInputs.texCoord0
                //   FragInputs.texCoord3
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.positionOS
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord3
                //   AttributesMesh.uv0
                //   AttributesMesh.uv3
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
                    float4 _TrunkBaseColor;
                    float4 _TrunkTilingOffset;
                    float _TrunkNormalScale;
                    float _TrunkMetallic;
                    float _TrunkAORemapMin;
                    float _TrunkAORemapMax;
                    float _TrunkSmoothnessRemapMin;
                    float _TrunkSmoothnessRemapMax;
                    float4 _BarkBlendMaskTilingOffset;
                    float4 _BarkBaseColor;
                    float _BarkUseUV3;
                    float4 _BarkTilingOffset;
                    float _BarkNormalScale;
                    float _BarkMetallic;
                    float _BarkSmoothnessRemapMin;
                    float _BarkSmoothnessRemapMax;
                    float _BarkAORemapMin;
                    float _BarkAORemapMax;
                    float _Snow_Amount;
                    float4 _SnowBaseColor;
                    float4 _SnowTilingOffset;
                    float _SnowUseUv3;
                    float _SnowNormalScale;
                    float _SnowBlendHardness;
                    float _SnowMetallic;
                    float _SnowAORemapMin;
                    float _SnowAORemapMax;
                    float _SnowSmoothnessRemapMin;
                    float _SnowSmoothnessRemapMax;
                    float _Stiffness;
                    float _InitialBend;
                    float _Drag;
                    float4 _NewNormal;
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
                    TEXTURE2D(_TrunkBaseColorMap); SAMPLER(sampler_TrunkBaseColorMap); float4 _TrunkBaseColorMap_TexelSize;
                    TEXTURE2D(_TrunkNormalMap); SAMPLER(sampler_TrunkNormalMap); float4 _TrunkNormalMap_TexelSize;
                    TEXTURE2D(_TrunkMaskMap); SAMPLER(sampler_TrunkMaskMap); float4 _TrunkMaskMap_TexelSize;
                    TEXTURE2D(_LayerMask); SAMPLER(sampler_LayerMask); float4 _LayerMask_TexelSize;
                    TEXTURE2D(_BarkBaseColorMap); SAMPLER(sampler_BarkBaseColorMap); float4 _BarkBaseColorMap_TexelSize;
                    TEXTURE2D(_BarkNormalMap); SAMPLER(sampler_BarkNormalMap); float4 _BarkNormalMap_TexelSize;
                    TEXTURE2D(_BarkMaskMap); SAMPLER(sampler_BarkMaskMap); float4 _BarkMaskMap_TexelSize;
                    TEXTURE2D(_SnowBaseColorMap); SAMPLER(sampler_SnowBaseColorMap); float4 _SnowBaseColorMap_TexelSize;
                    TEXTURE2D(_SnowNormalMap); SAMPLER(sampler_SnowNormalMap); float4 _SnowNormalMap_TexelSize;
                    TEXTURE2D(_SnowMaskMap); SAMPLER(sampler_SnowMaskMap); float4 _SnowMaskMap_TexelSize;
                    SAMPLER(_SampleTexture2D_3E7E8460_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_86CC2759_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_AD265E01_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_58CFAD94_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_A6FC7442_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_16CF099B_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_7BBCF90_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_78A1390D_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_CE7A735E_Sampler_3_Linear_Repeat);
                    SAMPLER(_SampleTexture2D_D5476E65_Sampler_3_Linear_Repeat);
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceNormal; // optional
                        float3 ObjectSpaceTangent; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 TimeParameters; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs
                    {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float4 uv0; // optional
                        float4 uv3; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Multiply_float(float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    // 928d2c1f4204528bee5f1f2ccf97e3ae
                    #include "Assets/NatureManufacture Assets/Foliage Shaders/NMWindNoShiver.hlsl"
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _CustomFunction_22CB6DD4_vertex_3;
                        float3 _CustomFunction_22CB6DD4_normal_4;
                        CalculateWind_float(IN.ObjectSpacePosition, IN.ObjectSpaceNormal, IN.TimeParameters.x, _CustomFunction_22CB6DD4_vertex_3, _CustomFunction_22CB6DD4_normal_4);
                        description.VertexPosition = _CustomFunction_22CB6DD4_vertex_3;
                        description.VertexNormal = IN.ObjectSpaceNormal;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _TrunkTilingOffset;
                        float _Split_7DC8027E_R_1 = _Property_3E4B16C8_Out_0[0];
                        float _Split_7DC8027E_G_2 = _Property_3E4B16C8_Out_0[1];
                        float _Split_7DC8027E_B_3 = _Property_3E4B16C8_Out_0[2];
                        float _Split_7DC8027E_A_4 = _Property_3E4B16C8_Out_0[3];
                        float2 _Vector2_A3C4510E_Out_0 = float2(_Split_7DC8027E_R_1, _Split_7DC8027E_G_2);
                        float2 _Vector2_FB0DDD33_Out_0 = float2(_Split_7DC8027E_B_3, _Split_7DC8027E_A_4);
                        float2 _TilingAndOffset_E3C6FAD6_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_A3C4510E_Out_0, _Vector2_FB0DDD33_Out_0, _TilingAndOffset_E3C6FAD6_Out_3);
                        float4 _SampleTexture2D_3E7E8460_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkBaseColorMap, sampler_TrunkBaseColorMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_3E7E8460_R_4 = _SampleTexture2D_3E7E8460_RGBA_0.r;
                        float _SampleTexture2D_3E7E8460_G_5 = _SampleTexture2D_3E7E8460_RGBA_0.g;
                        float _SampleTexture2D_3E7E8460_B_6 = _SampleTexture2D_3E7E8460_RGBA_0.b;
                        float _SampleTexture2D_3E7E8460_A_7 = _SampleTexture2D_3E7E8460_RGBA_0.a;
                        float4 _Property_3D23ECB5_Out_0 = _TrunkBaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_3E7E8460_RGBA_0, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float _Property_A1D6F1E8_Out_0 = _BarkUseUV3;
                        float4 _UV_AD9335A4_Out_0 = IN.uv3;
                        float4 _UV_D3C22CAB_Out_0 = IN.uv0;
                        float4 _Branch_52CBA8C0_Out_3;
                        Unity_Branch_float4(_Property_A1D6F1E8_Out_0, _UV_AD9335A4_Out_0, _UV_D3C22CAB_Out_0, _Branch_52CBA8C0_Out_3);
                        float4 _Property_EDFDDF9F_Out_0 = _BarkTilingOffset;
                        float _Split_E4ECE288_R_1 = _Property_EDFDDF9F_Out_0[0];
                        float _Split_E4ECE288_G_2 = _Property_EDFDDF9F_Out_0[1];
                        float _Split_E4ECE288_B_3 = _Property_EDFDDF9F_Out_0[2];
                        float _Split_E4ECE288_A_4 = _Property_EDFDDF9F_Out_0[3];
                        float2 _Vector2_3534235_Out_0 = float2(_Split_E4ECE288_R_1, _Split_E4ECE288_G_2);
                        float2 _Vector2_E2478011_Out_0 = float2(_Split_E4ECE288_B_3, _Split_E4ECE288_A_4);
                        float2 _TilingAndOffset_D00E630B_Out_3;
                        Unity_TilingAndOffset_float((_Branch_52CBA8C0_Out_3.xy), _Vector2_3534235_Out_0, _Vector2_E2478011_Out_0, _TilingAndOffset_D00E630B_Out_3);
                        float4 _SampleTexture2D_86CC2759_RGBA_0 = SAMPLE_TEXTURE2D(_BarkBaseColorMap, sampler_BarkBaseColorMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_86CC2759_R_4 = _SampleTexture2D_86CC2759_RGBA_0.r;
                        float _SampleTexture2D_86CC2759_G_5 = _SampleTexture2D_86CC2759_RGBA_0.g;
                        float _SampleTexture2D_86CC2759_B_6 = _SampleTexture2D_86CC2759_RGBA_0.b;
                        float _SampleTexture2D_86CC2759_A_7 = _SampleTexture2D_86CC2759_RGBA_0.a;
                        float4 _Property_4119B5ED_Out_0 = _BarkBaseColor;
                        float4 _Multiply_B97A88FA_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_86CC2759_RGBA_0, _Property_4119B5ED_Out_0, _Multiply_B97A88FA_Out_2);
                        float4 _Property_9334F17_Out_0 = _BarkBlendMaskTilingOffset;
                        float _Split_D09C1A7A_R_1 = _Property_9334F17_Out_0[0];
                        float _Split_D09C1A7A_G_2 = _Property_9334F17_Out_0[1];
                        float _Split_D09C1A7A_B_3 = _Property_9334F17_Out_0[2];
                        float _Split_D09C1A7A_A_4 = _Property_9334F17_Out_0[3];
                        float2 _Vector2_FB89293D_Out_0 = float2(_Split_D09C1A7A_R_1, _Split_D09C1A7A_G_2);
                        float2 _Vector2_93619D85_Out_0 = float2(_Split_D09C1A7A_B_3, _Split_D09C1A7A_A_4);
                        float2 _TilingAndOffset_C8838F11_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_FB89293D_Out_0, _Vector2_93619D85_Out_0, _TilingAndOffset_C8838F11_Out_3);
                        float4 _SampleTexture2D_AD265E01_RGBA_0 = SAMPLE_TEXTURE2D(_LayerMask, sampler_LayerMask, _TilingAndOffset_C8838F11_Out_3);
                        float _SampleTexture2D_AD265E01_R_4 = _SampleTexture2D_AD265E01_RGBA_0.r;
                        float _SampleTexture2D_AD265E01_G_5 = _SampleTexture2D_AD265E01_RGBA_0.g;
                        float _SampleTexture2D_AD265E01_B_6 = _SampleTexture2D_AD265E01_RGBA_0.b;
                        float _SampleTexture2D_AD265E01_A_7 = _SampleTexture2D_AD265E01_RGBA_0.a;
                        float4 _Lerp_35428609_Out_3;
                        Unity_Lerp_float4(_Multiply_3B5A4F3A_Out_2, _Multiply_B97A88FA_Out_2, (_SampleTexture2D_AD265E01_A_7.xxxx), _Lerp_35428609_Out_3);
                        float _Property_9A4313E5_Out_0 = _SnowUseUv3;
                        float4 _UV_9453692E_Out_0 = IN.uv3;
                        float4 _UV_C2AEAD06_Out_0 = IN.uv0;
                        float4 _Branch_41F6780F_Out_3;
                        Unity_Branch_float4(_Property_9A4313E5_Out_0, _UV_9453692E_Out_0, _UV_C2AEAD06_Out_0, _Branch_41F6780F_Out_3);
                        float4 _Property_E0773BA3_Out_0 = _SnowTilingOffset;
                        float _Split_D8CFF0B9_R_1 = _Property_E0773BA3_Out_0[0];
                        float _Split_D8CFF0B9_G_2 = _Property_E0773BA3_Out_0[1];
                        float _Split_D8CFF0B9_B_3 = _Property_E0773BA3_Out_0[2];
                        float _Split_D8CFF0B9_A_4 = _Property_E0773BA3_Out_0[3];
                        float2 _Vector2_E53C5066_Out_0 = float2(_Split_D8CFF0B9_R_1, _Split_D8CFF0B9_G_2);
                        float2 _Vector2_18C7CD90_Out_0 = float2(_Split_D8CFF0B9_B_3, _Split_D8CFF0B9_A_4);
                        float2 _TilingAndOffset_3F64F23_Out_3;
                        Unity_TilingAndOffset_float((_Branch_41F6780F_Out_3.xy), _Vector2_E53C5066_Out_0, _Vector2_18C7CD90_Out_0, _TilingAndOffset_3F64F23_Out_3);
                        float4 _SampleTexture2D_58CFAD94_RGBA_0 = SAMPLE_TEXTURE2D(_SnowBaseColorMap, sampler_SnowBaseColorMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_58CFAD94_R_4 = _SampleTexture2D_58CFAD94_RGBA_0.r;
                        float _SampleTexture2D_58CFAD94_G_5 = _SampleTexture2D_58CFAD94_RGBA_0.g;
                        float _SampleTexture2D_58CFAD94_B_6 = _SampleTexture2D_58CFAD94_RGBA_0.b;
                        float _SampleTexture2D_58CFAD94_A_7 = _SampleTexture2D_58CFAD94_RGBA_0.a;
                        float4 _Property_AF2EEB1D_Out_0 = _SnowBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_58CFAD94_RGBA_0, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Snow_Amount;
                        float4 _SampleTexture2D_A6FC7442_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkNormalMap, sampler_TrunkNormalMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        _SampleTexture2D_A6FC7442_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_A6FC7442_RGBA_0);
                        float _SampleTexture2D_A6FC7442_R_4 = _SampleTexture2D_A6FC7442_RGBA_0.r;
                        float _SampleTexture2D_A6FC7442_G_5 = _SampleTexture2D_A6FC7442_RGBA_0.g;
                        float _SampleTexture2D_A6FC7442_B_6 = _SampleTexture2D_A6FC7442_RGBA_0.b;
                        float _SampleTexture2D_A6FC7442_A_7 = _SampleTexture2D_A6FC7442_RGBA_0.a;
                        float _Property_1CABD952_Out_0 = _TrunkNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_A6FC7442_RGBA_0.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float4 _SampleTexture2D_16CF099B_RGBA_0 = SAMPLE_TEXTURE2D(_BarkNormalMap, sampler_BarkNormalMap, _TilingAndOffset_D00E630B_Out_3);
                        _SampleTexture2D_16CF099B_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_16CF099B_RGBA_0);
                        float _SampleTexture2D_16CF099B_R_4 = _SampleTexture2D_16CF099B_RGBA_0.r;
                        float _SampleTexture2D_16CF099B_G_5 = _SampleTexture2D_16CF099B_RGBA_0.g;
                        float _SampleTexture2D_16CF099B_B_6 = _SampleTexture2D_16CF099B_RGBA_0.b;
                        float _SampleTexture2D_16CF099B_A_7 = _SampleTexture2D_16CF099B_RGBA_0.a;
                        float _Property_B72B0F59_Out_0 = _BarkNormalScale;
                        float3 _NormalStrength_2C624796_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_16CF099B_RGBA_0.xyz), _Property_B72B0F59_Out_0, _NormalStrength_2C624796_Out_2);
                        float3 _Lerp_455F9590_Out_3;
                        Unity_Lerp_float3(_NormalStrength_EDF1EB8B_Out_2, _NormalStrength_2C624796_Out_2, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_455F9590_Out_3);
                        float4 _SampleTexture2D_7BBCF90_RGBA_0 = SAMPLE_TEXTURE2D(_SnowNormalMap, sampler_SnowNormalMap, _TilingAndOffset_3F64F23_Out_3);
                        _SampleTexture2D_7BBCF90_RGBA_0.rgb = UnpackNormal(_SampleTexture2D_7BBCF90_RGBA_0);
                        float _SampleTexture2D_7BBCF90_R_4 = _SampleTexture2D_7BBCF90_RGBA_0.r;
                        float _SampleTexture2D_7BBCF90_G_5 = _SampleTexture2D_7BBCF90_RGBA_0.g;
                        float _SampleTexture2D_7BBCF90_B_6 = _SampleTexture2D_7BBCF90_RGBA_0.b;
                        float _SampleTexture2D_7BBCF90_A_7 = _SampleTexture2D_7BBCF90_RGBA_0.a;
                        float _Property_9B9027DB_Out_0 = _SnowBlendHardness;
                        float3 _NormalStrength_107D5C4A_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_9B9027DB_Out_0, _NormalStrength_107D5C4A_Out_2);
                        float _Split_2D0839DF_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_2D0839DF_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_2D0839DF_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_2D0839DF_A_4 = 0;
                        float _Multiply_1A508103_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_2D0839DF_G_2, _Multiply_1A508103_Out_2);
                        float _Saturate_108B3F94_Out_1;
                        Unity_Saturate_float(_Multiply_1A508103_Out_2, _Saturate_108B3F94_Out_1);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_107D5C4A_Out_2, (_Saturate_108B3F94_Out_1.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 Transform_E1C5D1A9_transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_E1C5D1A9_Out_1 = mul(Transform_E1C5D1A9_transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float _Split_572830E4_R_1 = _Transform_E1C5D1A9_Out_1[0];
                        float _Split_572830E4_G_2 = _Transform_E1C5D1A9_Out_1[1];
                        float _Split_572830E4_B_3 = _Transform_E1C5D1A9_Out_1[2];
                        float _Split_572830E4_A_4 = 0;
                        float _Multiply_116CC508_Out_2;
                        Unity_Multiply_float(_Property_C3CE9B07_Out_0, _Split_572830E4_G_2, _Multiply_116CC508_Out_2);
                        float _Clamp_1449262A_Out_3;
                        Unity_Clamp_float(_Multiply_116CC508_Out_2, 0, 1, _Clamp_1449262A_Out_3);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Clamp_1449262A_Out_3, _Saturate_456E02AA_Out_1);
                        float4 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float4(_Lerp_35428609_Out_3, _Multiply_64C7F396_Out_2, (_Saturate_456E02AA_Out_1.xxxx), _Lerp_75D9504F_Out_3);
                        float _Property_2BC6CE93_Out_0 = _SnowNormalScale;
                        float3 _NormalStrength_EE9C3A89_Out_2;
                        Unity_NormalStrength_float((_SampleTexture2D_7BBCF90_RGBA_0.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_EE9C3A89_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_Lerp_455F9590_Out_3, _NormalStrength_EE9C3A89_Out_2, (_Saturate_456E02AA_Out_1.xxx), _Lerp_CC69B645_Out_3);
                        float4 _SampleTexture2D_78A1390D_RGBA_0 = SAMPLE_TEXTURE2D(_TrunkMaskMap, sampler_TrunkMaskMap, _TilingAndOffset_E3C6FAD6_Out_3);
                        float _SampleTexture2D_78A1390D_R_4 = _SampleTexture2D_78A1390D_RGBA_0.r;
                        float _SampleTexture2D_78A1390D_G_5 = _SampleTexture2D_78A1390D_RGBA_0.g;
                        float _SampleTexture2D_78A1390D_B_6 = _SampleTexture2D_78A1390D_RGBA_0.b;
                        float _SampleTexture2D_78A1390D_A_7 = _SampleTexture2D_78A1390D_RGBA_0.a;
                        float _Property_25A8FF3A_Out_0 = _TrunkMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_78A1390D_R_4, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _TrunkAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _TrunkAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_G_5, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _TrunkSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _TrunkSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_SampleTexture2D_78A1390D_A_7, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float3 _Vector3_ACC6F313_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Remap_4C121471_Out_3);
                        float4 _SampleTexture2D_CE7A735E_RGBA_0 = SAMPLE_TEXTURE2D(_BarkMaskMap, sampler_BarkMaskMap, _TilingAndOffset_D00E630B_Out_3);
                        float _SampleTexture2D_CE7A735E_R_4 = _SampleTexture2D_CE7A735E_RGBA_0.r;
                        float _SampleTexture2D_CE7A735E_G_5 = _SampleTexture2D_CE7A735E_RGBA_0.g;
                        float _SampleTexture2D_CE7A735E_B_6 = _SampleTexture2D_CE7A735E_RGBA_0.b;
                        float _SampleTexture2D_CE7A735E_A_7 = _SampleTexture2D_CE7A735E_RGBA_0.a;
                        float _Property_958F2C55_Out_0 = _BarkMetallic;
                        float _Multiply_A9579208_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CE7A735E_R_4, _Property_958F2C55_Out_0, _Multiply_A9579208_Out_2);
                        float _Property_3878E837_Out_0 = _BarkAORemapMin;
                        float _Property_DB0CDB39_Out_0 = _BarkAORemapMax;
                        float2 _Vector2_7BB5EFC2_Out_0 = float2(_Property_3878E837_Out_0, _Property_DB0CDB39_Out_0);
                        float _Remap_6FD7DE7F_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_G_5, float2 (0, 1), _Vector2_7BB5EFC2_Out_0, _Remap_6FD7DE7F_Out_3);
                        float _Property_C0E11890_Out_0 = _BarkSmoothnessRemapMin;
                        float _Property_89118F7_Out_0 = _BarkSmoothnessRemapMax;
                        float2 _Vector2_F4A3122C_Out_0 = float2(_Property_C0E11890_Out_0, _Property_89118F7_Out_0);
                        float _Remap_553BBFEE_Out_3;
                        Unity_Remap_float(_SampleTexture2D_CE7A735E_A_7, float2 (0, 1), _Vector2_F4A3122C_Out_0, _Remap_553BBFEE_Out_3);
                        float3 _Vector3_87101870_Out_0 = float3(_Multiply_A9579208_Out_2, _Remap_6FD7DE7F_Out_3, _Remap_553BBFEE_Out_3);
                        float3 _Lerp_732D369_Out_3;
                        Unity_Lerp_float3(_Vector3_ACC6F313_Out_0, _Vector3_87101870_Out_0, (_SampleTexture2D_AD265E01_A_7.xxx), _Lerp_732D369_Out_3);
                        float4 _SampleTexture2D_D5476E65_RGBA_0 = SAMPLE_TEXTURE2D(_SnowMaskMap, sampler_SnowMaskMap, _TilingAndOffset_3F64F23_Out_3);
                        float _SampleTexture2D_D5476E65_R_4 = _SampleTexture2D_D5476E65_RGBA_0.r;
                        float _SampleTexture2D_D5476E65_G_5 = _SampleTexture2D_D5476E65_RGBA_0.g;
                        float _SampleTexture2D_D5476E65_B_6 = _SampleTexture2D_D5476E65_RGBA_0.b;
                        float _SampleTexture2D_D5476E65_A_7 = _SampleTexture2D_D5476E65_RGBA_0.a;
                        float _Property_88D7F675_Out_0 = _SnowMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_D5476E65_R_4, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _SnowAORemapMin;
                        float _Property_C5C18557_Out_0 = _SnowAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_G_5, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _SnowSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _SnowSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_SampleTexture2D_D5476E65_A_7, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_C006FDEA_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Lerp_732D369_Out_3, _Vector3_C006FDEA_Out_0, (_Saturate_456E02AA_Out_1.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        surface.Albedo = (_Lerp_75D9504F_Out_3.xyz);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Split_BF192904_B_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
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
                output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
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
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      surfaceDescription.DiffusionProfileHash;
                // surfaceData.specularColor =             surfaceDescription.Specular;
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
                // if(surfaceDescription.Alpha < surfaceDescription.AlphaClipThreshold) return false;
        
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
