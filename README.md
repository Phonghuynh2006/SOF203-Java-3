# SOF203 - Java 3 Labs

Repo này chứa toàn bộ các bài lab (Lab1 → Lab8) của môn SOF203 - Java 3.  
Thực hiện bởi: Phong Huỳnh  
Năm học: 2025

-----------------------------------------------------------
📁 Cấu trúc thư mục
-----------------------------------------------------------
SOF203-Java-3/
│
├── labs/                # Chứa tất cả project của từng lab
│   ├── Lab1_java3/
│   ├── Lab2_java3/
│   ├── Lab3_java3/
│   ├── ...
│   └── Lab8_java3/
│
├── .gitignore            # File loại trừ (Eclipse, bin, target,...)
└── README.md             # File hướng dẫn này


------------------------------------------------------------
🚀 Cách sử dụng
------------------------------------------------------------

1. Clone repo về máy
------------------------------------------------------------
git clone https://github.com/Phonghuynh2006/SOF203-Java-3.git


2. Import project vào Eclipse
------------------------------------------------------------

Cách 1: Import vào workspace sẵn có
------------------------------------
Eclipse → File → Import → Existing Projects into Workspace  
Chọn thư mục:
SOF203-Java-3/labs  
Tick tất cả project → Finish

Cách 2: Dùng repo làm workspace
------------------------------------
Eclipse → File → Switch Workspace → Other...  
Chọn thư mục:
SOF203-Java-3  
Restart Eclipse → Import lại project từ thư mục labs/


------------------------------------------------------------
🧭 Quy trình làm việc với Git
------------------------------------------------------------

Sau khi code xong:
------------------------------------
cd SOF203-Java-3
git status

Stage thay đổi:
------------------------------------
git add .

Commit với mô tả:
------------------------------------
git commit -m "Hoàn thành Lab3 - thêm chức năng đăng nhập"

Push lên GitHub:
------------------------------------
git push origin main


------------------------------------------------------------
🔄 Làm việc trên nhiều máy
------------------------------------------------------------

Trên máy khác:
------------------------------------
git clone https://github.com/Phonghuynh2006/SOF203-Java-3.git

Import lại project vào Eclipse như hướng dẫn ở trên.

Khi repo có thay đổi từ máy khác:
------------------------------------
git pull origin main


------------------------------------------------------------
⚠️ Lưu ý quan trọng
------------------------------------------------------------
- Không commit các thư mục:
  .metadata/
  Servers/
  bin/
  target/
- Các thư mục này đã được loại trừ trong file .gitignore
- Chỉ commit source code, file cấu hình, và resource cần thiết để chạy project


------------------------------------------------------------
✍️ Thông tin
------------------------------------------------------------
Tác giả: Phong Huỳnh  
Môn học: SOF203 - Java 3  
Năm học: 2025  
Công cụ: Eclipse IDE, Git, GitHub


------------------------------------------------------------
✨ Chúc bạn hoàn thành trọn bộ 8 Labs xuất sắc! 🚀
------------------------------------------------------------
