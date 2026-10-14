# คู่มือการนำระบบขึ้น Google Apps Script (GAS)
## ชุดวิชา 91351 หลักการบริหารการส่งเสริมและพัฒนาการเกษตร

### ขั้นตอนการติดตั้งและ Deploy:
1. ไปที่ [Google Apps Script](https://script.google.com/) แล้วคลิก **"New Project" (โครงการใหม่)**
2. ตั้งชื่อโครงการ เช่น `STOU_91351_FarmPromote_Tutor`
3. คัดลอกโค้ดจากไฟล์ในโฟลเดอร์นี้:
   - นำโค้ดใน `Code.gs` ไปวางแทนที่ในไฟล์ `Code.gs`
   - สร้างสคริปต์ใหม่ชื่อ `Data` แล้วนำโค้ดใน `Data.gs` ไปวาง
   - สร้างไฟล์ HTML ใหม่ชื่อ `index` แล้วนำโค้ดใน `index.html` ไปวาง
   - (ตัวเลือก) เปิดการตั้งค่าโครงการ (Project Settings) ติ๊กเลือก "Show 'appsscript.json' manifest file" แล้ววางเนื้อหาจาก `appsscript.json`
4. คลิกปุ่ม **Deploy (การทำให้ใช้งานได้) -> New Deployment (การทำให้ใช้งานได้รายการใหม่)**
5. เลือกประเภทเป็น **Web app (เว็บแอป)**
   - **Execute as (ดำเนินการในฐานะ):** Me (ฉัน)
   - **Who has access (ผู้มีสิทธิ์เข้าถึง):** Anyone (ทุกคน)
6. คลิก **Deploy** และคัดลอก **Web app URL** ไปแชร์ให้นักศึกษาใช้งานได้ทันที!
