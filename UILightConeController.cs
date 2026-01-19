using UnityEngine;
using UnityEngine.UI;

[ExecuteAlways]
[RequireComponent(typeof(Image))]
public class UILightConeController : MonoBehaviour
{
    [Header("Required")]
    [SerializeField] private Image image;

    [Header("Material")]
    [SerializeField] private Material overrideMaterial;

    [Header("Color")]
    [SerializeField] private Color mainColor = new Color(1, 1, 0.6f, 1);
    [SerializeField] private Color edgeColor = new Color(1, 1, 0, 1);


    [Header("Light Shape")]
    [Range(-1.5f, 1.5f)]
    public float angle = 0.6f;

    [Range(0f, 0.5f)]
    public float baseWidth = 0.1f;

    [Range(0.001f, 0.2f)]
    public float softness = 0.05f;

    [Range(0.1f, 1f)]
    public float length = 1f;

    private const string REQUIRED_SHADER = "UI/UILightCone";

    void OnEnable()
    {
        Validate();
        Apply();
    }

    void OnValidate()
    {
        Validate();
        Apply();
    }

    void Update()
    {
        if (!Application.isPlaying)
            return;
        Apply();
    }

    void Validate()
    {
        if (image == null)
            image = GetComponent<Image>();

        if (overrideMaterial != null)
        {
            image.material = new Material(overrideMaterial);
        }
        else if (image.material == null ||
                 image.material.shader == null ||
                 image.material.shader.name != REQUIRED_SHADER)
        {
            Shader shader = Shader.Find(REQUIRED_SHADER);
            if (shader == null)
            {
                Debug.LogError($"Shader {REQUIRED_SHADER} not found!");
                return;
            }

            image.material = new Material(shader);
        }
    }

    void Apply()
    {
        if (image == null || image.material == null)
            return;

        image.material.SetFloat("_Angle", angle);
        image.material.SetFloat("_BaseWidth", baseWidth);
        image.material.SetFloat("_Softness", softness);
        image.material.SetFloat("_Length", length);
        image.material.SetColor("_MainColor", mainColor);
        image.material.SetColor("_EdgeColor", edgeColor);
    }
}
