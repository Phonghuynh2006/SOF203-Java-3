# SOF203 - Java 3 Labs

Repo này chứa toàn bộ các **bài lab (Lab1..Lab8)** môn SOF203 - Java 3.  
Các project được lưu trong thư mục `labs/`.

---
## 📌 Cấu trúc repo
SOF203-Java-3/
│
├── labs/ # Chứa các project lab
│ ├── Lab1_java3/
│ ├── Lab2_java3/
│ ├── Lab3_java3/
│ ├── ...
│ └── Lab8_java3/
│
├── .gitignore
└── README.md # File hướng dẫn


---

## 🚀 Cách sử dụng

### 1. Clone repo về máy

git clone https://github.com/Phonghuynh2006/SOF203-Java-3.git
2. Import vào Eclipse
Có 2 cách:

Cách 1: Import vào workspace sẵn có

Eclipse → File → Import → Existing Projects into Workspace.

Chọn thư mục:

bash

SOF203-Java-3/labs
Tick tất cả project → Finish.

Cách 2: Dùng repo làm workspace

Eclipse → File → Switch Workspace → Other….

Chọn thư mục repo:

SOF203-Java-3
Restart Eclipse → File → Import → Existing Projects into Workspace → chọn labs/.

📝 Quy trình làm việc hằng ngày
Sau khi code xong trong Eclipse, mở Git Bash trong repo:

bash

cd SOF203-Java-3
git status
Stage thay đổi:

bash

git add .
Commit với message mô tả:

bash

git commit -m "Hoàn thành Lab3 - thêm chức năng đăng nhập"
Push lên GitHub:

bash

git push origin main
🔄 Làm việc trên nhiều máy
Trên máy khác, chỉ cần clone:

bash

git clone https://github.com/Phonghuynh2006/SOF203-Java-3.git
Import vào Eclipse như hướng dẫn trên.

Khi repo đã có thay đổi từ máy khác → chạy:

bash
Sao chép mã
git pull origin main
⚠️ Lưu ý
Không commit các file .metadata/, Servers/, bin/, target/.

Các file này đã được loại trừ trong .gitignore.

Chỉ commit source code, config project và resource cần thiết để chạy project.

✍️ Người thực hiện: Phong Huỳnh
📅 Năm học: 2025


---

👉 Bạn chỉ cần **copy đoạn trên** → lưu vào file `README.md` trong repo của bạn.  

Bạn có muốn mình viết sẵn cả file `.gitignore` chuẩn cho Eclipse/Java để bạn copy vào repo cùng lúc không?






