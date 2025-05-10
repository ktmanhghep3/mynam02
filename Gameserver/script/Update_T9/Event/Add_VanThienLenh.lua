local tbAdd_VanThienLenh = {};
SpecialEvent.VanThienLenh = tbAdd_VanThienLenh;
DoScript("\\script\\Update_T9\\Event\\Add_VanThienLenh.lua");


tbAdd_VanThienLenh.TaskGroup = 4024;	--TaskGroup nhận
tbAdd_VanThienLenh.TaskID_1 = 1;		--TaskID nhận dòng 1
tbAdd_VanThienLenh.TaskID_2 = 2;		--TaskID nhận dòng 1
tbAdd_VanThienLenh.TaskID_3 = 3;		--TaskID nhận dòng 1
tbAdd_VanThienLenh.TaskID_4 = 4;		--TaskID nhận dòng 1

tbAdd_VanThienLenh.AddItem_1 = 450;	--Add dòng 1
tbAdd_VanThienLenh.AddItem_2 = 600;	--Add dòng 2
tbAdd_VanThienLenh.AddItem_3 = 800;	--Add dòng 3
tbAdd_VanThienLenh.AddItem_4 = 1000;	--Add dòng 4

function tbAdd_VanThienLenh:OnDialog()
DoScript("\\script\\Update_T9\\Event\\Add_VanThienLenh.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=yellow>-Tỷ lệ Event hiện tại:<color>\n"..
"<color=cyan>-Gói Danh vọng Full cấp 4\n"..
"-Gói Danh vọng Full cấp 5\n"..
"-Gói Danh vọng Full cấp 6\n"..
"-Gói Danh vọng Full cấp 7\n"

local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Gói Danh vọng Full cấp 4 - 200K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=blue>Gói Danh vọng Full cấp 4<color>", self.NhanDong1, self});
end

--Gói Danh vọng Full cấp 5 - 350K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>Gói Danh vọng Full cấp 5<color>", self.NhanDong2, self});
end

--Gói Danh vọng Full cấp 6 - 500K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=cyan>Gói Danh vọng Full cấp 6<color>", self.NhanDong3, self});
end

--Gói Danh vọng Full cấp 7 - 700K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=red>Gói Danh vọng Full cấp 7<color>", self.NhanDong4, self});
end




Dialog:Say(szMsg, tbOpt);
end

--Gói Danh vọng Full cấp 4 - 200K
function tbAdd_VanThienLenh:NhanDong1()
local nTask = self.TaskID_1;
local nSoLuong = self.AddItem_1;

local CheckNhan = me.GetTask(self.TaskGroup,nTask);

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3007,1,{bForceBind=1,},nSoLuong);

me.SetTask(self.TaskGroup,nTask,1);--Task Tính lần đã nhận

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Code\\Add_VanThienLenh\\Add_VTL.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoLuong.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công <color=cyan>"..nSoLuong.."<color> Vân Thiên Lệnh từ Sự kiện mới!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbAdd_VanThienLenh:NhanDong2()
local nTask = self.TaskID_2;
local nSoLuong = self.AddItem_2;

local CheckNhan = me.GetTask(self.TaskGroup,nTask);

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3007,1,{bForceBind=1,},nSoLuong);

me.SetTask(self.TaskGroup,nTask,1);--Task Tính lần đã nhận

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Code\\Add_VanThienLenh\\Add_VTL.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoLuong.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công <color=cyan>"..nSoLuong.."<color> Vân Thiên Lệnh từ Sự kiện mới!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbAdd_VanThienLenh:NhanDong3()
local nTask = self.TaskID_3;
local nSoLuong = self.AddItem_3;

local CheckNhan = me.GetTask(self.TaskGroup,nTask);

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3007,1,{bForceBind=1,},nSoLuong);

me.SetTask(self.TaskGroup,nTask,1);--Task Tính lần đã nhận

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Code\\Add_VanThienLenh\\Add_VTL.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoLuong.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công <color=cyan>"..nSoLuong.."<color> Vân Thiên Lệnh từ Sự kiện mới!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbAdd_VanThienLenh:NhanDong4()
local nTask = self.TaskID_4;
local nSoLuong = self.AddItem_4;

local CheckNhan = me.GetTask(self.TaskGroup,nTask);

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3007,1,{bForceBind=1,},nSoLuong);

me.SetTask(self.TaskGroup,nTask,1);--Task Tính lần đã nhận

local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Code\\Add_VanThienLenh\\Add_VTL.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoLuong.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công <color=cyan>"..nSoLuong.."<color> Vân Thiên Lệnh từ Sự kiện mới!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

