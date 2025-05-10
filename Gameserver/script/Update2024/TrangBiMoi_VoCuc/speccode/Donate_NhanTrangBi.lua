local tbDonate_NhanTrangBi ={};
SpecialEvent.Donate_NhanTrangBi = tbDonate_NhanTrangBi;
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanTrangBi.lua");

tbDonate_NhanTrangBi.TaskGroup_Time = 4000;		--Task Thời Gian
tbDonate_NhanTrangBi.TaskID_Time = 1;			--Task Thời Gian
tbDonate_NhanTrangBi.TaskGroup_DongGop = 4229;		--Tích Lũy Donate nhận Trang bị Vô Cực
tbDonate_NhanTrangBi.TaskID_DongGop_VoCuc = 1;			--Tích Lũy Donate nhận Trang bị Vô Cực





--Edit--
tbDonate_NhanTrangBi.Add_SoDiem = 5000;						--Điểm Đóng Góp Cần Add
tbDonate_NhanTrangBi.TaskID_DongGopNhan = 20;				--Task Giới hạn nhận Điểm Đóng góp


tbDonate_NhanTrangBi.TaskID_GioiHanDiemThapNhat = 1000;			--Giới hạn Điểm thấp nhất để nhận

function tbDonate_NhanTrangBi:OnDialog()
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanTrangBi.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint = me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);
local SoLanNhanTrangBi = DiemDongGop/self.TaskID_GioiHanDiemThapNhat;

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=blue>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"..
"<color=red>- Điểm Đóng Góp Quỹ lần này: <color=yellow>"..DiemDongGop.."<color> Điểm<color>\n"..
"<color=red>- Số lần có thể nhận Trang bị: <color=yellow>"..SoLanNhanTrangBi.."<color> Lần<color>\n"..
"<color=yellow>-Tỷ lệ Bonus nhận Trang bị Ngẫu nhiên:<color>\n"..
"<color=cyan>1000K = 1 lần nhận.\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--
if (me.szAccount == "") or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "") then
--table.insert(tbOpt,{"<color=yellow>Nhận ("..self.Add_SoDiem..") Điểm Đóng Góp<color>", self.Nhan_DiemDongGop, self});
end

table.insert(tbOpt,{"<color=yellow>Nhận T.Bị Kim Sơ Thành Ngẫu Nhiên: "..SoLanNhanTrangBi.."<color>", self.NhanTrangBi_Kim, self});
table.insert(tbOpt,{"<color=green>Nhận T.Bị Mộc Sơ Thành Ngẫu Nhiên: "..SoLanNhanTrangBi.."<color>", self.NhanTrangBi_Moc, self});
table.insert(tbOpt,{"<color=cyan>Nhận T.Bị Thủy Sơ Thành Ngẫu Nhiên: "..SoLanNhanTrangBi.."<color>", self.NhanTrangBi_Thuy, self});
table.insert(tbOpt,{"<color=red>Nhận T.Bị Hỏa Sơ Thành Ngẫu Nhiên: "..SoLanNhanTrangBi.."<color>", self.NhanTrangBi_Hoa, self});
table.insert(tbOpt,{"<color=gray>Nhận T.Bị Thổ Sơ Thành Ngẫu Nhiên: "..SoLanNhanTrangBi.."<color>", self.NhanTrangBi_Tho, self});


Dialog:Say(szMsg, tbOpt);
end

function tbDonate_NhanTrangBi:NhanTrangBi_Kim()
local VatPhamThuong = "Trang Bị hệ Kim";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Đóng Góp không đạt "..self.TaskID_GioiHanDiemThapNhat.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop - self.TaskID_GioiHanDiemThapNhat);
local tbNpc = Npc:GetClass("NhanRandomTrangBi");
tbNpc:OnDialog_HeKim()
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanTrangBi.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..VatPhamThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Trang Bị Vô Cực - Sơ Thành ngẫu nhiên từ điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbDonate_NhanTrangBi:NhanTrangBi_Moc()
local VatPhamThuong = "Trang Bị hệ Moc";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Đóng Góp không đạt "..self.TaskID_GioiHanDiemThapNhat.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop - self.TaskID_GioiHanDiemThapNhat);
local tbNpc = Npc:GetClass("NhanRandomTrangBi");
tbNpc:OnDialog_HeMoc()

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanTrangBi.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..VatPhamThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Trang Bị Vô Cực - Sơ Thành ngẫu nhiên từ điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbDonate_NhanTrangBi:NhanTrangBi_Thuy()
local VatPhamThuong = "Trang Bị hệ Thuy";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Đóng Góp không đạt "..self.TaskID_GioiHanDiemThapNhat.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop - self.TaskID_GioiHanDiemThapNhat);
local tbNpc = Npc:GetClass("NhanRandomTrangBi");
tbNpc:OnDialog_HeThuy()

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanTrangBi.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..VatPhamThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Trang Bị Vô Cực - Sơ Thành ngẫu nhiên từ điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbDonate_NhanTrangBi:NhanTrangBi_Hoa()
local VatPhamThuong = "Trang Bị hệ Hoa";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Đóng Góp không đạt "..self.TaskID_GioiHanDiemThapNhat.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop - self.TaskID_GioiHanDiemThapNhat);
local tbNpc = Npc:GetClass("NhanRandomTrangBi");
tbNpc:OnDialog_HeHoa()

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanTrangBi.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..VatPhamThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Trang Bị Vô Cực - Sơ Thành ngẫu nhiên từ điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


function tbDonate_NhanTrangBi:NhanTrangBi_Tho()
local VatPhamThuong = "Trang Bị hệ Tho";
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);

if DiemDongGop < self.TaskID_GioiHanDiemThapNhat then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Đóng Góp không đạt "..self.TaskID_GioiHanDiemThapNhat.." trở lên, không thể nhận!<color>"});
return 0;		
end
--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop - self.TaskID_GioiHanDiemThapNhat);
local tbNpc = Npc:GetClass("NhanRandomTrangBi");
tbNpc:OnDialog_HeTho()

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanTrangBi.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..VatPhamThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Trang Bị Vô Cực - Sơ Thành ngẫu nhiên từ điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end













function tbDonate_NhanTrangBi:Nhan_DiemDongGop()
local DiemDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc);
local CheckNhan = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGopNhan);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop_VoCuc,DiemDongGop + self.Add_SoDiem);





me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGopNhan,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Log_NhanDiemDongGop.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..self.Add_SoDiem.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận <color=cyan>"..self.Add_SoDiem.."<color> Điểm Đóng Góp Khuyến mãi Bonus 2 thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

