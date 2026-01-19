
# [Tiếng Việt](README.vi.md) | English
# UILightCone

## Table of Contents
- [✨ Features](#-features)
- [🧩 Components](#-components)
- [🛠️ Usage](#-usage)
- [⚙️ Script Properties](#-script-properties)
- [ℹ️ Notes](#-notes)
- [📝 Example](#-example)
- [💡 Applications](#-applications)

Dynamic light cone effect for Unity UI (UGUI), using a custom shader and controller script.

## ✨ Features
- Creates a dynamic "light cone" effect on UI Images.
- Customizable color, angle, length, edge softness, and edge color.
- Supports real-time and editor adjustments.

## 🧩 Components
- **UILightCone.shader**: Shader for rendering the light cone effect.
- **UILightConeController.cs**: Script to control shader parameters via the Image component.

## 🛠️ Usage
1. **Add shader and script to your project**
	- Ensure both `UILightCone.shader` and `UILightConeController.cs` are in your project.
2. **Create a UI Image**
	- Add a UI > Image GameObject to your Canvas.
3. **Attach the script**
	- Add the `UILightConeController` component to the Image GameObject.
4. **Configure**
	- Adjust the properties in the Inspector:
	  - `Main Color`: Main light color.
	  - `Edge Color`: Edge color.
	  - `Angle`: Cone angle (radian).
	  - `Base Width`: Base width.
	  - `Softness`: Edge softness.
	  - `Length`: Cone length.
	- Optionally assign an `Override Material` for custom materials.

## ⚙️ Script Properties

- **mainColor**: Main color of the light area.
  
	![mainColor demo](https://user-images.githubusercontent.com/your-demo/mainColor.gif)

- **edgeColor**: Color of the cone edge.
  
	![edgeColor demo](https://user-images.githubusercontent.com/your-demo/edgeColor.gif)

- **angle**: Cone angle (radian, 0.05–2.0).
  
	![angle demo](https://user-images.githubusercontent.com/your-demo/angle.gif)

- **baseWidth**: Base width (0–0.5).
  
	![baseWidth demo](https://user-images.githubusercontent.com/your-demo/baseWidth.gif)

- **softness**: Edge softness (0.001–0.2).
  
	![softness demo](https://user-images.githubusercontent.com/your-demo/softness.gif)

- **length**: Cone length (0.1–1.0).
  
	![length demo](https://user-images.githubusercontent.com/your-demo/length.gif)

## ℹ️ Notes
- The script automatically creates a Material with the shader if none is assigned.
- Make sure the shader is properly imported and error-free.
- You can override the material to use different effects on multiple Images.

## 📝 Example
1. Add an Image to your Canvas.
2. Attach `UILightConeController`.
3. Adjust the parameters to achieve your desired effect.

## 💡 Applications
- Display dynamic lighting for buttons, panels, or spotlight effects in game UI.
- Highlight important areas on the user interface.
- Create tutorial, guidance, or user attention effects.

---
Author: [Corn094]

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Nguyenne094/UI-Light-Cone-Unity&type=date&legend=top-left)](https://www.star-history.com/#Nguyenne094/UI-Light-Cone-Unity&type=date&legend=top-left)