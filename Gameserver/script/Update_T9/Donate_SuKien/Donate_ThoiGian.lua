local tbNpc = Npc:GetClass("Donate_ThoiGian");
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");

tbNpc.TaskGroup_Time = 4000;	--Task Thời Gian Online
tbNpc.TaskID_Time = 1;			--Task Thời Gian Online

tbNpc.TaskGroupTimes = 4080;	--Task Nạp Thời Gian
tbNpc.TaskIDTimes = 362;			--TRỊ SỐ CẦN THAY ĐỔI

tbNpc.Times_50 = 7;
tbNpc.Times_100 = 14;
tbNpc.Times_200 = 28;
tbNpc.Times_300 = 42;
tbNpc.Times_400 = 56;
tbNpc.Times_500 = 70;
tbNpc.Times_1000 = 140;

------------50K
function tbNpc:Times_50K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 7 ngày Online = 50K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>7<color> Ngày Online<color>", self.AddTimes_50K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------100K
function tbNpc:Times_100K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 14 ngày Online = 100K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2  
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>14<color> Ngày Online<color>", self.AddTimes_100K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------200K
function tbNpc:Times_200K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 28 ngày Online = 200K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>28<color> Ngày Online<color>", self.AddTimes_200K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------300K
function tbNpc:Times_300K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 42 ngày Online = 300K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>42<color> Ngày Online<color>", self.AddTimes_300K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------400K
function tbNpc:Times_400K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 56 ngày Online = 400K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>56<color> Ngày Online<color>", self.AddTimes_400K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------500K
function tbNpc:Times_500K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 70 ngày Online = 500K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>70<color> Ngày Online<color>", self.AddTimes_500K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------1000K
function tbNpc:Times_1000K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_ThoiGian.lua");
local szMsg = "<color=cyan>Nhận 140 ngày Online = 1000K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>140<color> Ngày Online<color>", self.AddTimes_1000K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------Add thưởng 50K
function tbNpc:AddTimes_50K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 100K
function tbNpc:AddTimes_100K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_100;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 200K
function tbNpc:AddTimes_200K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_200;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 300K
function tbNpc:AddTimes_300K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_300;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 400K
function tbNpc:AddTimes_400K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_400;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 500K
function tbNpc:AddTimes_500K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_500;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

------------Add thưởng 1000K
function tbNpc:AddTimes_1000K()
local CheckNhan = me.GetTask(self.TaskGroupTimes,self.TaskIDTimes);
local ThoiGianNap = self.Times_1000;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupTimes,self.TaskIDTimes,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapThoiGian.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
