# Xử Lý Tín Hiệu Số (CO2036) - HK252 

## 📖 Giới thiệu
[cite_start]Chào mừng bạn đến với repository lưu trữ mã nguồn và báo cáo thực hành môn **Xử Lý Tín Hiệu Số (Digital Signal Processing - DSP)**[cite: 40]. [cite_start]Các bài thực hành này được thực hiện tại Khoa Khoa học & Kỹ thuật Máy tính, Trường Đại học Bách Khoa - ĐHQG TP.HCM (HCMUT)[cite: 1, 2, 12, 13].

[cite_start]Repository này sử dụng phần mềm mã nguồn mở **Scilab** để tính toán số, xử lý ma trận và trực quan hóa dữ liệu tín hiệu[cite: 43].

---

## 📂 Cấu trúc Repository & Nội dung các Lab

Mỗi bài thực hành (Lab) được quản lý trên một **branch riêng biệt** để dễ dàng theo dõi mã nguồn và báo cáo:

### `lab1` - Digital Signal Processing with Scilab: Sampling and Quantization Analysis [cite: 5, 6]
* Làm quen với môi trường lập trình tính toán khoa học Scilab[cite: 54].
* Thực hiện các phép toán cơ bản trên vector và ma trận[cite: 55].
* Mô phỏng và trực quan hóa tín hiệu tương tự $x_a(t)$, tín hiệu rời rạc $x(n)$[cite: 61].
* Phân tích quá trình lấy mẫu và lượng tử hóa tín hiệu $x_q(n)$ (sử dụng phương pháp cắt bỏ - Truncation với bước lượng tử $\Delta=0.1$) trong hệ thống ADC[cite: 57, 241, 453].

### `lab2` - Discrete-Time Signal Analysis and Manipulation Using Scilab [cite: 679, 680]
* Tìm hiểu và mô phỏng các tín hiệu rời rạc cơ bản: tín hiệu xung đơn vị (unit impulse), tín hiệu bước đơn vị (unit step), và tín hiệu dốc (unit ramp).
* Phân tích các thuộc tính của tín hiệu: tính tuần hoàn, năng lượng, công suất trung bình, và tính đối xứng (phân tích thành phần chẵn $x_e(n)$ và thành phần lẻ $x_o(n)$).
* Thực hiện các phép biến đổi tín hiệu: dịch thời gian (delay/advance), gập tín hiệu (folding), thay đổi biên độ (amplitude scaling), thực hiện phép cộng và phép nhân hai tín hiệu rời rạc.

---

## 🚀 Hướng dẫn làm việc với Git & GitHub

Dưới đây là quy trình chuẩn để các thành viên trong nhóm kéo code về, làm việc và đẩy code lên đúng nhánh `lab1` và `lab2`.

### 🔹 Bước 1: Clone repository về máy
```bash
git clone [https://github.com/USERNAME/Digital-Signal-Processing_HK252.git](https://github.com/USERNAME/Digital-Signal-Processing_HK252.git)
cd Digital-Signal-Processing_HK252
```

### 🔹 Bước 2: Chuyển sang branch của Lab cần làm
**Để làm việc với Lab 1:**
```bash
git checkout -b lab1
```
**Để làm việc với Lab 2 (từ nhánh chính `main`):**
```bash
git checkout main
git checkout -b lab2
```

### 🔹 Bước 3: Thêm file code Scilab (`.sci`, `.sce`) và file Báo cáo (`.pdf`)
*(Ví dụ bạn đang ở nhánh `lab2`)*
```bash
git add .
git commit -m "feat(lab2): thêm code biểu diễn tín hiệu Unit Ramp và Unit Step"
```

### 🔹 Bước 4: Push nhánh lên GitHub
```bash
git push -u origin lab2
```

⚠️ **Lưu ý quan trọng:**
* Mỗi bài lab phải nằm gọn trong một branch riêng biệt.
* **Không** thao tác trực tiếp trên nhánh `main`.
* Luôn kiểm tra mình đang ở đúng nhánh trước khi commit (`git branch`).

---

## 👨‍💻 Thông tin nhóm thực hiện
**Môn học:** Xử lý tín hiệu số (CO2036) 
**Lớp:** L03 - Học Kỳ HK252 
* **Giảng viên hướng dẫn:** Thầy Phạm Công Thái 
* **Thành viên thực hiện:**
    * Phạm Công Võ - MSSV: 2313946 
    * Nguyễn Anh Thư - MSSV: 2313385 
```
