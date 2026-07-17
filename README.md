# Chapter-5-Linux-101-Shell-Programming-Editors-IDE
## LAB 0 — Khởi động & kiểm tra môi trường
<img width="1006" height="316" alt="image" src="https://github.com/user-attachments/assets/9a365315-058b-4e54-ba4c-a226ff05ba79" />

Hoàn thành các câu lệnh: (Như hình ảnh)

<img width="581" height="537" alt="image" src="https://github.com/user-attachments/assets/10589b14-4bc9-4079-91b1-663f55adb680" />

## LAB 1 — Ký tự đại diện (wildcard) và pipe
### 1A. Tạo dữ liệu mẫu

```bash
cd ~/lab13
touch tmp1.txt tmp2.txt tmp3.txt tmp5.txt note.md data1.log data2.log
ls
```

Kết quả:
<img width="1078" height="554" alt="image" src="https://github.com/user-attachments/assets/d80d4e40-ade2-489f-8151-6d1ee3f538ed" />

### 1B. Ký tự đại diện
<img width="1009" height="467" alt="image" src="https://github.com/user-attachments/assets/c6b988ad-62c4-48bc-987c-7667319f590a" />

Hoàn thành câu lệnh ta ra được như này:

<img width="789" height="698" alt="image" src="https://github.com/user-attachments/assets/151814d3-03b4-424a-ba6c-29548e8fabb4" />

**Câu hỏi 1.1:** Viết một lệnh liệt kê tất cả file bắt đầu bằng tmp và kết thúc bằng .txt:
```bash
ls tmp*.txt
```
### 1C. Pipe `|` và chuỗi lệnh `;`
```bash
ls -l /etc | more          # cuộn xem, nhấn q để thoát
ls -l /etc | grep conf     # chỉ dòng có chữ "conf"
date; whoami; pwd          # chạy lần lượt 3 lệnh
```
<img width="1050" height="1230" alt="image" src="https://github.com/user-attachments/assets/b7e09f10-66ce-47ef-9f46-355e61e73307" />
<img width="1002" height="1195" alt="image" src="https://github.com/user-attachments/assets/a929ffed-a989-4636-8b58-538260c93fd0" />
<img width="1179" height="738" alt="image" src="https://github.com/user-attachments/assets/ea3ba780-b3ab-46cc-b91c-59c58a6257ee" />

**Câu hỏi 1.2:** Dùng pipe đếm xem /etc có bao nhiêu dòng khi ls -l (gợi ý: nối với wc -l):
```bash
ls -l /etc | wc -l
```
## LAB 2 — Nháy (quoting) và ký tự thoát
<img width="1013" height="355" alt="image" src="https://github.com/user-attachments/assets/8bc84022-030c-4c16-81e0-45f677fe323a" />

Hoàn thành câu lệnh ta được như này:

<img width="386" height="463" alt="image" src="https://github.com/user-attachments/assets/e7226f88-bd5d-4105-8847-bca261019af1" />

**Câu hỏi 2.1:** Vì sao dòng 2.1 và 2.2 cho kết quả khác nhau dù cùng chuỗi $SHELL?
Vì nháy kép cho phép thông dịch giá trị của biến, trong khi nháy đơn giữ nguyên chuỗi văn bản theo nghĩa đen.

## LAB 3 — Chuyển hướng vào/ra (redirection)
<img width="1002" height="771" alt="image" src="https://github.com/user-attachments/assets/60cae4de-5349-4821-ae7a-468c21a84ed5" />
<img width="1008" height="458" alt="image" src="https://github.com/user-attachments/assets/68f9fe7a-564b-489e-b1b5-9085cd9556a3" />

Hoàn thành câu lệnh ta được như này:

<img width="908" height="1137" alt="image" src="https://github.com/user-attachments/assets/1b185a09-2f96-471d-81c1-15e0735ee725" />
<img width="931" height="273" alt="image" src="https://github.com/user-attachments/assets/7cf6328d-e3da-4563-9273-02e372c95f13" />

 **Câu hỏi 3.1:** Sau bước 3.5, nội dung cũ của res.txt còn không? Vì sao?
 
 Không còn nội dung cũ của res.txt bởi vì đã bị nội dung sử echo ghi đè lên.
 
 **Bài tập 3.2:** Ghi đầu ra của whoami và pwd (2 dòng) vào cùng 1 file who.txt, dùng > cho dòng đầu và >> cho dòng sau. Viết 2 lệnh:
 ```bash
whoami > who.txt
pwd >> who.txt
```
## LAB 4 — Biến, môi trường, alias, history
<img width="1011" height="939" alt="image" src="https://github.com/user-attachments/assets/b7eaab43-2c41-4d12-b9b8-b275caf4b880" />

Hoàn thành câu lệnh ta được như này:

<img width="2322" height="1230" alt="image" src="https://github.com/user-attachments/assets/0df431da-9644-44d8-9da0-79f11f0aa45f" />
<img width="469" height="423" alt="image" src="https://github.com/user-attachments/assets/200bb53a-6924-4093-96e9-7f03bf85dbe7" />

 **Bài tập 4.1:** Tạo alias tên cls để xóa màn hình (lệnh clear), dùng thử rồi gỡ:
 
 ```bash
alias cls='clear'
unalias cls
```

## LAB 5 — Soạn thảo bằng Nano
<img width="1004" height="507" alt="image" src="https://github.com/user-attachments/assets/2944d107-3168-46c7-95f7-50575ce384a6" />

Hoàn thành câu lệnh ta được như này:

<img width="339" height="80" alt="image" src="https://github.com/user-attachments/assets/1a59ab97-6a0e-4cb3-bb1a-75aaa1bad769" />
<img width="322" height="108" alt="image" src="https://github.com/user-attachments/assets/c8b8a683-8d12-4b9b-858f-e5dbf8d6536e" />
<img width="374" height="187" alt="image" src="https://github.com/user-attachments/assets/3efeb15a-840e-4020-a24f-e5ef1b1fefb4" />

 **Ghi lại:** Phím lưu = Ctrl+O  ; Phím thoát = Ctrl+X ; Phím tìm kiếm =  Ctrl+W

 ## LAB 6 — MINI-PROJECT: Shell script
 ### 6A. Script báo cáo hệ thống — `baocao.sh` (guided)
 <img width="1072" height="1155" alt="image" src="https://github.com/user-attachments/assets/529f12b7-71b0-4dda-b97f-468ef0f68b08" />
 
Hoàn thành các câu lệnh trên ta được như này:

<img width="752" height="843" alt="image" src="https://github.com/user-attachments/assets/c0ad7a48-ed04-4aff-894d-805e2a5c969a" />

### 6B. Script sao lưu — `sysbackup.sh` (tự viết, có gợi ý)
<img width="983" height="1104" alt="image" src="https://github.com/user-attachments/assets/a8578f7b-ee5e-4e3f-aa10-8b2036a68ae6" />

Hoàn thành câu lệnh ta được như này:

<img width="1239" height="486" alt="image" src="https://github.com/user-attachments/assets/f15b7853-14ea-4641-a44c-589edae646cb" />
<img width="687" height="946" alt="image" src="https://github.com/user-attachments/assets/08559542-647e-4795-a20c-99719e93bab6" />

## LAB 7 — VS Code + Python trên Raspberry Pi (VNC/Desktop)
<img width="908" height="481" alt="image" src="https://github.com/user-attachments/assets/1b54a769-fb77-4b26-8f78-82170d628a4c" />

Hoàn thành câu lệnh trên ta được như này:

<img width="2558" height="1599" alt="image" src="https://github.com/user-attachments/assets/ee48fafc-12e3-4b7a-a561-9b5dbbf4fd6f" />

 

