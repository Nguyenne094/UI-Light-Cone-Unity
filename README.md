

# Tiếng Việt | [English](README.en.md)
# UILightCone

## Mục lục
- [✨ Tính năng](#tính-năng)
- [🧩 Thành phần](#thành-phần)
- [🛠️ Cách sử dụng](#cách-sử-dụng)
- [⚙️ Thuộc tính script](#thuộc-tính-script)
- [ℹ️ Lưu ý](#lưu-ý)
- [📝 Ví dụ](#ví-dụ)
- [💡 Ứng Dụng](#ứng-dụng)

Hiệu ứng hình nón ánh sáng động cho UI Unity (UGUI), sử dụng shader và controller script.

## ✨ Tính năng
- Tạo hiệu ứng "light cone" (hình nón ánh sáng) động trên UI Image.
- Tùy chỉnh màu sắc, góc mở, chiều dài, độ mềm cạnh, màu viền.
- Hỗ trợ chỉnh trực tiếp trong Editor và runtime.

## 🧩 Thành phần
- **UILightCone.shader**: Shader tạo hiệu ứng hình nón ánh sáng.
- **UILightConeController.cs**: Script điều khiển các tham số shader qua component Image.

## 🛠️ Cách sử dụng
1. **Thêm shader và script vào project**
	- Đảm bảo 2 file `UILightCone.shader` và `UILightConeController.cs` nằm trong project.
2. **Tạo UI Image**
	- Thêm một GameObject UI > Image vào Canvas.
3. **Gắn script**
	- Thêm component `UILightConeController` vào GameObject Image.
4. **Cấu hình**
	- Tùy chỉnh các thuộc tính trong Inspector:
	  - `Main Color`: Màu chính của ánh sáng.
	  - `Edge Color`: Màu viền.
	  - `Angle`: Góc mở hình nón (radian).
	  - `Base Width`: Độ rộng đáy.
	  - `Softness`: Độ mềm cạnh.
	  - `Length`: Chiều dài hình nón.
	- Có thể gán `Override Material` nếu muốn dùng material tùy chỉnh.

## ⚙️ Thuộc tính script

- **mainColor**: Màu chính của vùng sáng.
  
	![mainColor demo](https://user-images.githubusercontent.com/your-demo/mainColor.gif)

- **edgeColor**: Màu viền ngoài.
  
	![edgeColor demo](https://user-images.githubusercontent.com/your-demo/edgeColor.gif)

- **angle**: Góc mở hình nón (radian, 0.05–2.0).
  
	![angle demo](https://user-images.githubusercontent.com/your-demo/angle.gif)

- **baseWidth**: Độ rộng đáy (0–0.5).
  
	![baseWidth demo](https://user-images.githubusercontent.com/your-demo/baseWidth.gif)

- **softness**: Độ mềm cạnh (0.001–0.2).
  
	![softness demo](https://user-images.githubusercontent.com/your-demo/softness.gif)

- **length**: Chiều dài hình nón (0.1–1.0).
  
	![length demo](https://user-images.githubusercontent.com/your-demo/length.gif)

## ℹ️ Lưu ý
- Script tự động tạo Material với shader nếu chưa có.
- Đảm bảo shader được import đúng và không bị lỗi.
- Có thể override material để dùng nhiều hiệu ứng khác nhau trên nhiều Image.

## 📝 Ví dụ
1. Thêm Image vào Canvas.
2. Gắn `UILightConeController`.
3. Tùy chỉnh các tham số để đạt hiệu ứng mong muốn.

## 💡 Ứng Dụng
- Hiển thị vùng chiếu sáng động cho các nút, panel, hoặc hiệu ứng spotlight trong UI game.
- Làm nổi bật các khu vực quan trọng trên giao diện người dùng.
- Tạo hiệu ứng hướng dẫn, chỉ dẫn, hoặc nhấn mạnh thao tác cho người dùng.

---
Tác giả: [Corn094]
