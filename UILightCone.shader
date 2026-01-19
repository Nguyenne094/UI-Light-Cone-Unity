Shader "Custom/LightConeEdgeExpand_Builtin"
{
    Properties
    {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainColor ("Main Color", Color) = (1,1,0.6,1)
        _EdgeColor ("Edge Color", Color) = (1,1,0,1)

        _Angle ("Angle (Rad)", Range(0.05, 2.0)) = 0.6
        _BaseWidth ("Base Width", Range(0, 0.5)) = 0.1
        _Softness ("Softness", Range(0.001, 0.2)) = 0.05
        _Length ("Length", Range(0.001, 1.0)) = 1.0
    }

    SubShader
    {
        Tags { "Queue"="Transparent" "RenderType"="Transparent" }
        Blend SrcAlpha One
        ZWrite Off
        Cull Off

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            fixed4 _MainColor;
            fixed4 _EdgeColor;
            float _Angle;
            float _BaseWidth;
            float _Softness;
            float _Length;
            sampler2D _MainTex;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // UV -> tâm trên
                float2 p = i.uv - float2(0.5, 1.0);
                p.y = -p.y;

                float dist = p.y;

                // mở rộng ngang theo chiều dài
                float dynamicWidth = _BaseWidth + dist * tan(_Angle);

                // mask hình cánh quạt
                float cone =
                    smoothstep(dynamicWidth + _Softness,
                               dynamicWidth - _Softness,
                               abs(p.x));

                // fade theo chiều dài
                float fade = saturate(1 - dist / _Length);

                // viền
                float edge =
                    smoothstep(dynamicWidth - _Softness,
                               dynamicWidth,
                               abs(p.x));

                float3 color = lerp(_MainColor.rgb, _EdgeColor.rgb, edge);

                return float4(color, cone * fade);
            }
            ENDCG
        }
    }
}
