// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32758,y:32715,varname:node_4013,prsc:2|emission-138-OUT,alpha-6297-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31348,y:32490,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3333333,c2:0.5058824,c3:1,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:1098,x:31871,y:32893,varname:node_1098,prsc:2|DIST-8920-OUT;n:type:ShaderForge.SFN_Slider,id:8920,x:31446,y:32892,ptovrint:False,ptlb:Depth Distance,ptin:_DepthDistance,varname:node_8920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:5808,x:31973,y:32170,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:node_5808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1764706,c2:0.427451,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:138,x:32176,y:32768,varname:node_138,prsc:2|A-288-OUT,B-5190-OUT,T-1098-OUT;n:type:ShaderForge.SFN_Multiply,id:288,x:32256,y:32320,varname:node_288,prsc:2|A-5808-RGB,B-5211-OUT;n:type:ShaderForge.SFN_Slider,id:5211,x:31865,y:32338,ptovrint:False,ptlb:DepthColorIntensity,ptin:_DepthColorIntensity,varname:node_5211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.138525,max:5;n:type:ShaderForge.SFN_Multiply,id:5190,x:31754,y:32608,varname:node_5190,prsc:2|A-1304-RGB,B-8515-OUT;n:type:ShaderForge.SFN_Slider,id:8515,x:31270,y:32676,ptovrint:False,ptlb:MainColorIntensity,ptin:_MainColorIntensity,varname:node_8515,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8172013,max:2;n:type:ShaderForge.SFN_Tex2d,id:84,x:30557,y:33822,ptovrint:False,ptlb:Hex,ptin:_Hex,varname:node_84,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:713,x:32173,y:33413,varname:node_713,prsc:2|A-84-B,B-2783-OUT,C-9252-OUT;n:type:ShaderForge.SFN_Length,id:8573,x:30081,y:32997,varname:node_8573,prsc:2|IN-3192-OUT;n:type:ShaderForge.SFN_TexCoord,id:2394,x:29630,y:32950,varname:node_2394,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:3192,x:29892,y:32997,varname:node_3192,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2394-UVOUT;n:type:ShaderForge.SFN_Add,id:3120,x:30576,y:33008,varname:node_3120,prsc:2|A-9994-OUT,B-1868-OUT;n:type:ShaderForge.SFN_Time,id:6604,x:30119,y:33261,varname:node_6604,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8542,x:30919,y:33001,varname:node_8542,prsc:2|A-3120-OUT,B-5167-OUT;n:type:ShaderForge.SFN_Slider,id:5889,x:30211,y:33393,ptovrint:False,ptlb:Animation Speed,ptin:_AnimationSpeed,varname:node_5889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Sin,id:2775,x:31088,y:33001,varname:node_2775,prsc:2|IN-8542-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9994,x:30267,y:32997,varname:node_9994,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8573-OUT;n:type:ShaderForge.SFN_Multiply,id:9730,x:31688,y:33784,varname:node_9730,prsc:2|A-2000-OUT,B-4368-OUT;n:type:ShaderForge.SFN_Tau,id:5167,x:30781,y:33285,varname:node_5167,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4368,x:31299,y:33821,varname:node_4368,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-84-R;n:type:ShaderForge.SFN_OneMinus,id:964,x:30290,y:33261,varname:node_964,prsc:2|IN-6604-T;n:type:ShaderForge.SFN_Multiply,id:1868,x:30531,y:33224,varname:node_1868,prsc:2|A-964-OUT,B-5889-OUT;n:type:ShaderForge.SFN_Clamp01,id:7689,x:31260,y:33065,varname:node_7689,prsc:2|IN-2775-OUT;n:type:ShaderForge.SFN_OneMinus,id:4625,x:31329,y:33271,varname:node_4625,prsc:2|IN-7689-OUT;n:type:ShaderForge.SFN_Multiply,id:9928,x:31402,y:33472,varname:node_9928,prsc:2|A-4625-OUT,B-4904-OUT;n:type:ShaderForge.SFN_Clamp01,id:4904,x:31131,y:33554,varname:node_4904,prsc:2|IN-4724-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4724,x:30885,y:33541,varname:node_4724,prsc:2|IN-84-G,IMIN-1002-OUT,IMAX-295-OUT,OMIN-5802-OUT,OMAX-4176-OUT;n:type:ShaderForge.SFN_Vector1,id:1002,x:30544,y:33420,varname:node_1002,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:295,x:30544,y:33480,varname:node_295,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5802,x:30531,y:33539,varname:node_5802,prsc:2,v1:-1;n:type:ShaderForge.SFN_Sin,id:389,x:30228,y:33624,varname:node_389,prsc:2|IN-2601-OUT;n:type:ShaderForge.SFN_RemapRange,id:4176,x:30433,y:33659,varname:node_4176,prsc:2,frmn:-1,frmx:1,tomn:0.5,tomx:1|IN-389-OUT;n:type:ShaderForge.SFN_Multiply,id:2601,x:29994,y:33596,varname:node_2601,prsc:2|A-1868-OUT,B-4637-OUT;n:type:ShaderForge.SFN_Vector1,id:4637,x:29899,y:33756,varname:node_4637,prsc:2,v1:5;n:type:ShaderForge.SFN_Step,id:2000,x:31493,y:33187,varname:node_2000,prsc:2|A-7689-OUT,B-944-OUT;n:type:ShaderForge.SFN_Vector1,id:944,x:31077,y:33213,varname:node_944,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:6074,x:31701,y:33545,varname:node_6074,prsc:2|A-9928-OUT,B-84-B;n:type:ShaderForge.SFN_Clamp01,id:2783,x:31884,y:33531,varname:node_2783,prsc:2|IN-6074-OUT;n:type:ShaderForge.SFN_Subtract,id:5518,x:31879,y:33718,varname:node_5518,prsc:2|A-9730-OUT,B-84-B;n:type:ShaderForge.SFN_Clamp01,id:9252,x:32086,y:33653,varname:node_9252,prsc:2|IN-5518-OUT;n:type:ShaderForge.SFN_Lerp,id:2983,x:32425,y:33363,varname:node_2983,prsc:2|A-169-OUT,B-713-OUT,T-1098-OUT;n:type:ShaderForge.SFN_Clamp01,id:6297,x:32517,y:33219,varname:node_6297,prsc:2|IN-2983-OUT;n:type:ShaderForge.SFN_Vector1,id:169,x:32139,y:33268,varname:node_169,prsc:2,v1:1;proporder:1304-8515-5808-8920-5211-5889-84;pass:END;sub:END;*/

Shader "VaxKun/VFX/ReinhardtLikeShield" {
    Properties {
        _MainColor ("MainColor", Color) = (0.3333333,0.5058824,1,1)
        _MainColorIntensity ("MainColorIntensity", Range(0, 2)) = 0.8172013
        _DepthColor ("DepthColor", Color) = (0.1764706,0.427451,1,1)
        _DepthDistance ("Depth Distance", Range(0, 1)) = 1
        _DepthColorIntensity ("DepthColorIntensity", Range(0, 5)) = 1.138525
        _AnimationSpeed ("Animation Speed", Range(0, 1)) = 0.5
        _Hex ("Hex", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _MainColor;
            uniform float _DepthDistance;
            uniform float4 _DepthColor;
            uniform float _DepthColorIntensity;
            uniform float _MainColorIntensity;
            uniform sampler2D _Hex; uniform float4 _Hex_ST;
            uniform float _AnimationSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float node_1098 = saturate((sceneZ-partZ)/_DepthDistance);
                float3 emissive = lerp((_DepthColor.rgb*_DepthColorIntensity),(_MainColor.rgb*_MainColorIntensity),node_1098);
                float3 finalColor = emissive;
                float4 _Hex_var = tex2D(_Hex,TRANSFORM_TEX(i.uv0, _Hex));
                float4 node_6604 = _Time;
                float node_1868 = ((1.0 - node_6604.g)*_AnimationSpeed);
                float node_7689 = saturate(sin(((length((i.uv0*2.0+-1.0)).r+node_1868)*6.28318530718)));
                float node_1002 = 0.0;
                float node_5802 = (-1.0);
                fixed4 finalRGBA = fixed4(finalColor,saturate(lerp(1.0,(_Hex_var.b+saturate((((1.0 - node_7689)*saturate((node_5802 + ( (_Hex_var.g - node_1002) * ((sin((node_1868*5.0))*0.25+0.75) - node_5802) ) / (1.0 - node_1002))))-_Hex_var.b))+saturate(((step(node_7689,0.0)*(_Hex_var.r*0.2+0.0))-_Hex_var.b))),node_1098)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
