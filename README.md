# Unity-xLua

![XLua Logo](https://raw.githubusercontent.com/Tencent/xLua/master/Doc/logo.png)

**Unity-xLua** là phiên bản fork của **Tencent/xLua** được tối giản và đóng gói dưới dạng **Unity Package (UPM)**, giúp dễ dàng quản lý và sử dụng trong dự án Unity.

---

## 🔹 Lợi ích

- ✅ **Dễ quản lý**: Tách riêng khỏi project chính, dùng UPM để import.
- ✅ **Phiên bản cố định**: Có thể dùng tag/commit để đảm bảo project ổn định.
- ✅ **Tương thích đa nền tảng**: Hỗ trợ Windows, macOS, Android, iOS.
- ✅ **Gọn nhẹ**: Chỉ bao gồm `XLua` runtime và `Plugins` cần thiết.

---

## 🔹 Cấu trúc thư mục

```
Unity-xLua/
├─ Runtime/
│  ├─ XLua/       <- Thư mục code C# core
│  └─ Plugins/    <- DLL / native lib (Windows, Android, iOS)
├─ package.json
├─ README.md
└─ .gitignore
```

---

## 🔹 Hướng dẫn cài đặt UPM

### 1️⃣ Cài từ Git URL (khuyên dùng)

Trong `Packages/manifest.json` của project Unity, thêm:

```json
"com.persinus.xlua": "https://github.com/Persinus/Unity-xLua.git#1.0.0"
```

> `#1.0.0` là tag version cụ thể để đảm bảo ổn định.

### 2️⃣ Cài từ local path

Nếu bạn clone repo về máy:

```json
"com.persinus.xlua": "file:../Unity-xLua"
```

---

## 🔹 Cách push tag 1.0.0

1. Clone repo về máy:

```bash
git clone https://github.com/Persinus/Unity-xLua.git
cd Unity-xLua
```

2. Kiểm tra code, commit nếu cần:

```bash
git add .
git commit -m "Prepare version 1.0.0"
```

3. Tạo tag `1.0.0`:

```bash
git tag 1.0.0
```

4. Push tag lên GitHub:

```bash
git push origin 1.0.0
```

> Bây giờ UPM có thể dùng URL kèm `#1.0.0` để import package ổn định.

---

## 🔹 License

- Fork từ [Tencent/xLua](https://github.com/Tencent/xLua)  
- Giữ nguyên license gốc MIT của Tencent.

---

## 🔹 Tài nguyên tham khảo

- [Repo gốc Tencent/xLua](https://github.com/Tencent/xLua)  
- [Hướng dẫn UPM chính thức của Unity](https://docs.unity3d.com/Manual/upm-ui.html)

