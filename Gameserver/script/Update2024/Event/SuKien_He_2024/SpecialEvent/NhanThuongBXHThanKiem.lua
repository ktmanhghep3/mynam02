local tbNhanThuongBXHThanKiem ={};
SpecialEvent.NhanThuongBXHThanKiem= tbNhanThuongBXHThanKiem;
DoScript("\\script\\Update2024\\Event\\SuKien_He_2024\\SpecialEvent\\NhanThuongBXHThanKiem.lua");

tbNhanThuongBXHThanKiem.TaskGroup_Nhan = 4215;	--Task Check Nhận
tbNhanThuongBXHThanKiem.TaskID_Nhan = 1;			--Task Check Nhận

tbNhanThuongBXHThanKiem.ThuongTop_1 = 1;			--Số câu đúng 1
tbNhanThuongBXHThanKiem.ThuongTop_2 = 2;			--Số câu đúng 2
tbNhanThuongBXHThanKiem.ThuongTop_3 = 3;			--Số câu đúng 3
tbNhanThuongBXHThanKiem.ThuongTop_4 = 4;			--Số câu đúng 4
tbNhanThuongBXHThanKiem.ThuongTop_5 = 5;			--Số câu đúng 5

tbNhanThuongBXHThanKiem.TyLePhanThuong = 5;

function tbNhanThuongBXHThanKiem:OnDialog()
DoScript("\\script\\Update2024\\Event\\SuKien_He_2024\\SpecialEvent\\NhanThuongBXHThanKiem.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IPs: <color=yellow>"..szIp.."<color><color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

--Nhận dòng 1--
if (me.szName == "AdminGame") or (me.szName == "Skulll") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top: <color=green>"..self.ThuongTop_1.."<color><color>", self.NhanDong1, self});
end

--Nhận dòng 2--
if (me.szName == "ShenNana") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top: <color=green>"..self.ThuongTop_2.."<color><color>", self.NhanDong2, self});
end

--Nhận dòng 3--
if (me.szName == "HamChoi") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top: <color=green>"..self.ThuongTop_3.."<color><color>", self.NhanDong3, self});
end

--Nhận dòng 4--
if (me.szName == "Krulll") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top: <color=green>"..self.ThuongTop_4.."<color><color>", self.NhanDong4, self});
end

--Nhận dòng 5--
if (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top: <color=green>"..self.ThuongTop_5.."<color><color>", self.NhanDong5, self});
end



Dialog:Say(szMsg, tbOpt);
end


function tbNhanThuongBXHThanKiem:NhanDong1()
local ThuongTopUnPack = self.ThuongTop_1;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanThuongBXHThanKiem.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3911,1,{bForceBind=1,},1);		--Thần Kiếm Ngự Lôi Chân Quyết +10
me.AddStackItem(18,1,3912,1,{bForceBind=1,},3);		--Túi Trang Bị Vô Cực - Đại Viễn

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThuongTopUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Thưởng Top BXH Thần Kiếm Ngự Lôi: <color=cyan>"..ThuongTopUnPack.."<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuongBXHThanKiem:NhanDong2()
local ThuongTopUnPack = self.ThuongTop_2;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanThuongBXHThanKiem.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3911,2,{bForceBind=1,},1);		--Thần Kiếm Ngự Lôi Chân Quyết +8
me.AddStackItem(18,1,3912,1,{bForceBind=1,},2);		--Túi Trang Bị Vô Cực - Đại Viễn

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThuongTopUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Thưởng Top BXH Thần Kiếm Ngự Lôi: <color=cyan>"..ThuongTopUnPack.."<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuongBXHThanKiem:NhanDong3()
local ThuongTopUnPack = self.ThuongTop_3;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanThuongBXHThanKiem.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3911,3,{bForceBind=1,},1);		--Thần Kiếm Ngự Lôi Chân Quyết +7
me.AddStackItem(18,1,3912,1,{bForceBind=1,},2);		--Túi Trang Bị Vô Cực - Đại Viễn

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThuongTopUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Thưởng Top BXH Thần Kiếm Ngự Lôi: <color=cyan>"..ThuongTopUnPack.."<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuongBXHThanKiem:NhanDong4()
local ThuongTopUnPack = self.ThuongTop_3;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanThuongBXHThanKiem.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3911,4,{bForceBind=1,},1);		--Thần Kiếm Ngự Lôi Chân Quyết +6
me.AddStackItem(18,1,3912,1,{bForceBind=1,},1);		--Túi Trang Bị Vô Cực - Đại Viễn

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThuongTopUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận Thưởng Top BXH Thần Kiếm Ngự Lôi: <color=cyan>"..ThuongTopUnPack.."<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

