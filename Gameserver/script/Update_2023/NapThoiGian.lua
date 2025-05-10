local tbNapTime ={};
SpecialEvent.NapThoiGian= tbNapTime;
DoScript("\\script\\Update_2023\\NapThoiGian.lua");

tbNapTime.TaskGroup_Time = 4000;	--Task Thời Gian
tbNapTime.TaskID_Time = 1000;			--Task Thời Gian

tbNapTime.TaskGroupNhan_1 = 4001;	--Task_1
tbNapTime.TaskGroupNhan_2 = 4002;	--Task_2
tbNapTime.TaskGroupNhan_3 = 4003;	--Task_3
tbNapTime.TaskGroupNhan_4 = 4004;	--Task_4
tbNapTime.TaskGroupNhan_5 = 4005;	--Task_5
tbNapTime.TaskGroupNhan_6 = 4006;	--Task_6


tbNapTime.TaskIDNhan_1 = 6;			--Thay đổi ID nhận dòng 1
tbNapTime.Time_1 = 10000;			--Thời gian Nạp 1

tbNapTime.TaskIDNhan_2 = 6;			--Thay đổi ID nhận dòng 2
tbNapTime.Time_2 = 0000;			--Thời gian Nạp 2

tbNapTime.TaskIDNhan_3 = 6;			--Thay đổi ID nhận dòng 3
tbNapTime.Time_3 = 0000;			--Thời gian Nạp 3

tbNapTime.TaskIDNhan_4 = 6;			--Thay đổi ID nhận dòng 4
tbNapTime.Time_4 = 0000;			--Thời gian Nạp 4

tbNapTime.TaskIDNhan_5 = 6;			--Thay đổi ID nhận dòng 5
tbNapTime.Time_5 = 0000;			--Thời gian Nạp 5

tbNapTime.TaskIDNhan_6 = 6;			--Thay đổi ID nhận dòng 6
tbNapTime.Time_6 = 42;			--Thời gian Nạp 6

function tbNapTime:OnDialog()
DoScript("\\script\\Update_2023\\NapThoiGian.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=red>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_1.."<color> Ngày Online<color>", self.NhanDong1, self});
end

--Nhận dòng 2--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_2.."<color> Ngày Online<color>", self.NhanDong2, self});
end

--Nhận dòng 3--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_3.."<color> Ngày Online<color>", self.NhanDong3, self});
end

--Nhận dòng 4--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_4.."<color> Ngày Online<color>", self.NhanDong4, self});
end

--Nhận dòng 5--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_5.."<color> Ngày Online<color>", self.NhanDong5, self});
end

--Nhận dòng 6--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.Time_6.."<color> Ngày Online<color>", self.NhanDong6, self});
end



Dialog:Say(szMsg, tbOpt);
end

function tbNapTime:NhanDong1()
local CheckNhan = me.GetTask(self.TaskGroupNhan_1,self.TaskIDNhan_1);
local ThoiGianNap = self.Time_1;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_1,self.TaskIDNhan_1,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNapTime:NhanDong2()
local CheckNhan = me.GetTask(self.TaskGroupNhan_2,self.TaskIDNhan_2);
local ThoiGianNap = self.Time_2;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_2,self.TaskIDNhan_2,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNapTime:NhanDong3()
local CheckNhan = me.GetTask(self.TaskGroupNhan_3,self.TaskIDNhan_3);
local ThoiGianNap = self.Time_3;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_3,self.TaskIDNhan_3,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNapTime:NhanDong4()
local CheckNhan = me.GetTask(self.TaskGroupNhan_4,self.TaskIDNhan_4);
local ThoiGianNap = self.Time_4;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_4,self.TaskIDNhan_4,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNapTime:NhanDong5()
local CheckNhan = me.GetTask(self.TaskGroupNhan_5,self.TaskIDNhan_5);
local ThoiGianNap = self.Time_5;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_5,self.TaskIDNhan_5,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNapTime:NhanDong6()
local CheckNhan = me.GetTask(self.TaskGroupNhan_6,self.TaskIDNhan_6);
local ThoiGianNap = self.Time_6;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.SetTask(self.TaskGroupNhan_6,self.TaskIDNhan_6,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\Update_2023\\Logfile\\NapThoiGian.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> ngày Online thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
