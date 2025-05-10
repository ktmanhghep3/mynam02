local tbDonate_NhanDiemThuong ={};
SpecialEvent.Donate_NhanDiemThuong = tbDonate_NhanDiemThuong;
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanDiemThuong.lua");

--Không edit--
tbDonate_NhanDiemThuong.TaskGroup_DongGop = 4229;				--Tích Lũy Donate nhận Danh Vọng Sát Thần PK
tbDonate_NhanDiemThuong.TaskID_DongGop_VoCuc = 1;				--Tích Lũy Donate nhận Trang bị Vô Cực
tbDonate_NhanDiemThuong.TaskID_DongGop_DanhVong = 2;			--Tích Lũy Donate nhận Danh Vọng Sát Thần PK

tbDonate_NhanDiemThuong.TaskID_GioiHanDiemThapNhat_DanhVong = 40;		--Giới hạn Điểm thấp nhất để nhận
tbDonate_NhanDiemThuong.TaskID_GioiHanDiemThapNhat_VoCuc = 1000;		--Giới hạn Điểm thấp nhất để nhận

--------------

--Edit--
tbDonate_NhanDiemThuong.Add_SoDiem = 1000;						--Điểm Đóng Góp Cần Add
tbDonate_NhanDiemThuong.TaskID_DongGopNhan = 20;				--Task Giới hạn nhận Điểm Đóng góp
--------------

function tbDonate_NhanDiemThuong:OnDialog()
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanDiemThuong.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_DanhVong);
local DiemDongGop_2 = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);
local SoDiemPKNhan = DiemDongGop*self.TaskID_GioiHanDiemThapNhat_DanhVong;
local SoLanNhanTrangBi = DiemDongGop_2/self.TaskID_GioiHanDiemThapNhat_VoCuc;

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=red>- Điểm Đóng Góp Quỹ có thể nhận: <color=yellow>"..self.Add_SoDiem.."<color><color>\n"..
"<color=red>- Danh Vọng Sát Thần PK nhận: <color=yellow>"..SoDiemPKNhan.."<color><color>\n"..
"<color=red>- Số lần có thể nhận Trang bị: <color=yellow>"..SoLanNhanTrangBi.."<color> Lần<color>\n"..
"<color=yellow>-Tỷ lệ nhận Danh Vọng Sát Thần PK:<color>\n"..
"<color=cyan>1K = 40 Điểm\n"..
"<color=yellow>-Cách Nhận:<color>\n"..
"<color=cyan>1- Nhận Điểm Tích Lũy Đóng Góp Trước\n"..
"<color=cyan>2- Nhận Danh Vọng.\n"..
"<color=cyan>3- Nhận Trang bị Vô Cực (Tùy chọn Hệ).\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--
if (me.szAccount == "kiemthest2") or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "") then

table.insert(tbOpt,{"<color=yellow>1-Nhận ("..self.Add_SoDiem..") Điểm Đóng Góp<color>", self.Nhan_DiemDongGop, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>2-Nhận ("..SoDiemPKNhan..") Điểm Danh vọng<color>", self.Nhan_DanhVongPK, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>3-Nhận ("..SoLanNhanTrangBi..") Trang bị Vô Cực Sơ Thành",	SpecialEvent.Donate_NhanTrangBi.OnDialog,SpecialEvent.Donate_NhanTrangBi});
end

Dialog:Say(szMsg, tbOpt);
end

function tbDonate_NhanDiemThuong:Nhan_DiemDongGop()
local DiemDongGop_1 = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);
local DiemDongGop_2 = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_DanhVong);
local CheckNhan = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGopNhan);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop_1 + self.Add_SoDiem);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_DanhVong,DiemDongGop_2 + self.Add_SoDiem);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGopNhan,1);--Task Tính lần đã nhận

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanDiemDongGop.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..self.Add_SoDiem.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận <color=cyan>"..self.Add_SoDiem.."<color> Điểm Đóng Góp thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbDonate_NhanDiemThuong:Nhan_DanhVongPK()
local VatPhamThuong = "Danh Vọng Sát Thần PK";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_DanhVong);
local SoDiemPK_Nhan = DiemDongGop*self.TaskID_GioiHanDiemThapNhat_DanhVong;
local SoDiemPK_Tru = self.TaskID_GioiHanDiemThapNhat_DanhVong/DiemDongGop;

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat_DanhVong then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Tích Lũy Danh Vọng không đạt "..self.TaskID_GioiHanDiemThapNhat_DanhVong.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_DanhVong,0);
me.AddRepute(14,1,SoDiemPK_Nhan)







local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanDiemDanhVongEvent.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoDiemPK_Nhan.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Danh Vọng Sát Thần PK từ Event Đóng Góp Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
