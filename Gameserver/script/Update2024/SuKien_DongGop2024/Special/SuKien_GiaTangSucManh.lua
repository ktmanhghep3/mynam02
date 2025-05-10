local tbSuKien_GiaTangSucManh ={};
SpecialEvent.SuKien_GiaTangSucManh= tbSuKien_GiaTangSucManh;
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\SuKien_GiaTangSucManh.lua");

tbSuKien_GiaTangSucManh.TaskGroup_Nhan = 4515;				--Task Check Nhận
tbSuKien_GiaTangSucManh.TaskID_Nhan_Goi500K = 1;			--Task Check Nhận Gói Quà 500K
tbSuKien_GiaTangSucManh.TaskID_Nhan_Goi1000K = 2;			--Task Check Nhận Gói Quà 1000K


function tbSuKien_GiaTangSucManh:OnDialog()
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\SuKien_GiaTangSucManh.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<bclr=0,0,200><color=white>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<bclr=0,0,200><color=white>- IP: <color=yellow>"..szIp.."<color><color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 500K--kiemthest2
if (me.szAccount == "kiemthest2") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Gói Quà 500K<color>", self.NhanQua_500K, self});
end

--Nhận dòng 1000K--kiemthest2
if (me.szAccount == "kiemthest2") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Gói Quà 1000K<color>", self.NhanQua_1000K, self});
end

Dialog:Say(szMsg, tbOpt);
end



--Nhận dòng 500K
function tbSuKien_GiaTangSucManh:NhanQua_500K()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan_Goi500K);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\LOG_NHANQUASUCMANH.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=0,0,200><color=white>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--

--Sơ Nhập:
me.AddRepute(14,1,57500);--Danh vọng Sát thần PK
me.AddStackItem(18,1,3037,1,{bForceBind=1,},1); 	--Túi Quà 1.000.000 VNĐ Tùy chọn
me.AddStackItem(18,1,3036,4,{bForceBind=1,},3); 	--Tiểu Sư Muội - Đồng hành 10 Kỹ năng

--Theo dòng Sự Kiện Noel Mới Nhất:
me.AddStackItem(18,1,4029,1,{bForceBind=1,},500); 		--Tài Lộc

--Võ Công Môn Phái:
me.AddStackItem(18,1,3038,25,{bForceBind=1,},3); 	--Bí Kiếp Môn Phái Ngẫu Nhiên Lv25
me.AddStackItem(18,1,3038,30,{bForceBind=1,},2); 	--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,20,{bForceBind=1,},2); 	--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3404,35,{bForceBind=1,},2); 	--Tuyệt Kỹ Trấn Phái Cấp 35

--Võ Công Tuyệt Tích Giang Hồ:
me.AddStackItem(18,1,3911,4,{bForceBind=1,},1); 	--Thần Kiếm Ngự Lôi Chân Quyết Level 6

--Thần Binh Tuyệt Khí:
--Add theo List yêu cầu:
--Vũ khí 1: 
--Vũ khí 2: 
--Vũ khí 3: 
--Vũ khí 4: 

me.AddStackItem(18,1,4010,1,{bForceBind=1,},5); 	--Thương Phong Dẫn Hoàn Chỉnh

--Trang Bị Vô Cực:
--1
--2
--3
--4
--5
--6
--7
--8
--9

--Phi Phong Thần Vũ:
if (me.nSex == 0) then --Nam
for value = 2161,2165 do
	me.AddItem(1,17,value,10);
end		
end 

if (me.nSex == 1) then --Nữ 
for value = 2166,2170 do
	me.AddItem(1,17,value,10);
end		
end 


--Ấn Tín Thần Vật:
me.AddStackItem(18,1,3700,30,{bForceBind=1,},1); 	--Huy Chương +30
me.AddStackItem(18,1,3800,20,{bForceBind=1,},1); 	--Bộ Thiên Gia +20
me.AddStackItem(18,1,4012,1,{bForceBind=1,},2); 	--Bộ Thiên Gia Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4014,1,{bForceBind=1,},2); 	--Bộ Thất Kiếm Tăng +1 Đẳng cấp

--Quan Ấn Binh Quyền:
me.AddStackItem(1,18,1,3,{bForceBind=1,},1); 	--Quan Ấn Thái Thú-Vĩnh Viễn-Không HSD

local Ten_Qua = "Gói Quà 500K";
me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan_Goi500K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_Qua.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<bclr=0,0,200><color=white>Người chơi: <color=green>"..me.szName.."<color> đã nhận Gói quà Sự Kiện <color=cyan>500K<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Nhận dòng 1000K
function tbSuKien_GiaTangSucManh:NhanQua_1000K()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan_Goi1000K);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\LOG_NHANQUASUCMANH.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=0,0,200><color=white>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--

--Sơ Nhập:
me.AddRepute(14,1,57500);--Danh vọng Sát thần PK
me.AddStackItem(18,1,3037,1,{bForceBind=1,},1); 	--Túi Quà 1.000.000 VNĐ Tùy chọn
me.AddStackItem(18,1,3036,4,{bForceBind=1,},6); 	--Tiểu Sư Muội - Đồng hành 10 Kỹ năng

--Theo dòng Sự Kiện Noel Mới Nhất:
me.AddStackItem(18,1,4029,1,{bForceBind=1,},1000); 		--Tài Lộc

--Võ Công Môn Phái:
me.AddStackItem(18,1,3038,25,{bForceBind=1,},6); 	--Bí Kiếp Môn Phái Ngẫu Nhiên Lv25
me.AddStackItem(18,1,3038,30,{bForceBind=1,},5); 	--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,20,{bForceBind=1,},4); 	--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3404,35,{bForceBind=1,},4); 	--Tuyệt Kỹ Trấn Phái Cấp 35

--Võ Công Tuyệt Tích Giang Hồ:
me.AddStackItem(18,1,3911,2,{bForceBind=1,},1); 	--Thần Kiếm Ngự Lôi Chân Quyết Level 8

--Thần Binh Tuyệt Khí:
--Add theo List yêu cầu:
me.AddStackItem(2,1,2648,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 15
me.AddStackItem(2,1,2952,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 15
me.AddStackItem(2,1,3617,10,{bForceBind=1,},1);--Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 15
me.AddStackItem(2,1,3142,10,{bForceBind=1,},1);--Cấp 7 (2-20)_Nội công_Kim_Kiếm 15
me.AddStackItem(2,2,2642,10,{bForceBind=1,},1);--Hệ kim Cấp 7 (2-20)_Tụ Tiễn 10
me.AddStackItem(2,1,3802,10,{bForceBind=1,},1);--Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 10
me.AddStackItem(2,1,2871,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 10
me.AddStackItem(2,1,2681,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 10

me.AddStackItem(18,1,4010,1,{bForceBind=1,},10); 	--Thương Phong Dẫn Hoàn Chỉnh

--Trang Bị Vô Cực:
--1
--2
--3
--4
--5
--6
--7
--8
--9



--Ấn Tín Thần Vật:
me.AddStackItem(18,1,3700,42,{bForceBind=1,},1); 	--Huy Chương +42
me.AddStackItem(18,1,3800,25,{bForceBind=1,},1); 	--Bộ Thiên Gia +25
me.AddStackItem(18,1,4012,1,{bForceBind=1,},3); 	--Bộ Thiên Gia Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4014,1,{bForceBind=1,},3); 	--Bộ Thất Kiếm Tăng +1 Đẳng cấp
--Thánh Linh
me.AddStackItem(1,27,7,1,{bForceBind=1,},1);--[Thánh Linh]-Thiên Vân Nội
me.AddStackItem(1,27,8,1,{bForceBind=1,},1);--[Thánh Linh]-Thiên Vân Ngoại
me.AddStackItem(1,27,9,1,{bForceBind=1,},1);--[Thánh Linh]-Thiên Vân Ngoại
me.AddStackItem(1,27,10,1,{bForceBind=1,},1);--[Thánh Linh]-Thiên Vân Ngoại

--Quan Ấn Binh Quyền:
me.AddStackItem(1,18,1,4,{bForceBind=1,},1); 	--Quan Ấn Thiếu Khanh-Vĩnh Viễn-Không HSD


me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan_Goi1000K,1);--Task Tính lần đã nhận
local Ten_Qua = "Gói Quà 1000K";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_Qua.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<bclr=0,0,200><color=white>Người chơi: <color=green>"..me.szName.."<color> đã nhận Gói quà Sự Kiện <color=cyan>1000K<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
