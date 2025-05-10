local tbNhanThuong_MiniGameZalo = {};
SpecialEvent.NhanThuong_MiniGameZalo = tbNhanThuong_MiniGameZalo;


tbNhanThuong_MiniGameZalo.TaskGourp = 4115; 		--Task Quà MiniGame Nhóm Zalo
tbNhanThuong_MiniGameZalo.TaskId = 5; 				--Task Thay Đổi



function tbNhanThuong_MiniGameZalo:OnDialog()
DoScript("\\script\\Update2024\\Event\\Special_files\\NhanThuong_MiniGameZalo.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nCount1 = me.GetItemCountInBags(18,1,3004,2) 
local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=blue>- Ngôi Sao May Mắn trong túi: <color=yellow>"..nCount1.."<color><color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
--if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then

--CÂU HỎI--
--Nhận Thưởng Giải: Quán Quân Câu Hỏi
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Quán Quân Câu Hỏi<color>", self.CauHoi_ChienThang, self});
end

--Nhận Thưởng Giải: Khuyến Khích Câu Hỏi
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Khuyến Khích Câu Hỏi<color>", self.CauHoi_KhuyenKhich, self});
end


--ĐOÁN MAP--
--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 1 Phần
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Đoán Map Đúng 1 Phần<color>", self.DoanMap_Dung_1, self});
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 2 Phần
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Đoán Map Đúng 2 Phần<color>", self.DoanMap_Dung_2, self});
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 3 Phần
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Đoán Map Đúng 3 Phần<color>", self.DoanMap_Dung_3, self});
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 4 Phần
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Đoán Map Đúng 4 Phần<color>", self.DoanMap_Dung_4, self});
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 5 Phần
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>N.Thưởng Giải: Đoán Map Đúng 5 Phần<color>", self.DoanMap_Dung_5, self});
end

table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end




--Nhận Thưởng Giải: Quán Quân Câu Hỏi
function tbNhanThuong_MiniGameZalo:CauHoi_ChienThang()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Quán Quân Câu Hỏi";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},250);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Khuyến Khích Câu Hỏi
function tbNhanThuong_MiniGameZalo:CauHoi_KhuyenKhich()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Khuyến Khích Câu Hỏi";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},50);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 1 Phần
function tbNhanThuong_MiniGameZalo:DoanMap_Dung_1()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 1 Phần";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},50);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 2 Phần
function tbNhanThuong_MiniGameZalo:DoanMap_Dung_2()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 2 Phần";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},100);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 3 Phần
function tbNhanThuong_MiniGameZalo:DoanMap_Dung_3()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 3 Phần";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},150);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 4 Phần
function tbNhanThuong_MiniGameZalo:DoanMap_Dung_4()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 4 Phần";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},200);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 5 Phần
function tbNhanThuong_MiniGameZalo:DoanMap_Dung_5()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongMiniGameZalo.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Đoán Map Trả Lời Đúng 5 Phần";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},250);--Ngôi Sao May mắn

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã <color=red>"..TenPhanThuong.."<color> Sự Kiện MiniGame Zalo thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

