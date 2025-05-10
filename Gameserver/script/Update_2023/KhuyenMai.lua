local tbKhuyenMai_Event ={};
SpecialEvent.KhuyenMai= tbKhuyenMai_Event;
DoScript("\\script\\Update_2023\\KhuyenMai.lua");
tbKhuyenMai_Event.TaskGroup_Time = 4000;	--Task Thời Gian
tbKhuyenMai_Event.TaskID_Time = 1;			--Task Thời Gian
tbKhuyenMai_Event.TaskGroupNhan_1 = 4012;	--Task_1
tbKhuyenMai_Event.TaskGroupNhan_2 = 4013;	--Task_2
tbKhuyenMai_Event.TaskGroupNhan_3 = 4014;	--Task_3
tbKhuyenMai_Event.TaskGroupNhan_4 = 4015;	--Task_4
tbKhuyenMai_Event.TaskGroupNhan_5 = 4016;	--Task_5
tbKhuyenMai_Event.TaskGroupNhan_6 = 4017;	--Task_6
tbKhuyenMai_Event.TyLeKM = 1;	--Tỷ lệ Khuyến mãi

tbKhuyenMai_Event.TaskIDNhan_1 = 400;			--Thay đổi ID nhận dòng 1
tbKhuyenMai_Event.KhuyenMai_1 = 0000;			--Khuyến mãi 1

tbKhuyenMai_Event.TaskIDNhan_2 = 290;			--Thay đổi ID nhận dòng 2
tbKhuyenMai_Event.KhuyenMai_2 = 0000;			--Khuyến mãi 2

tbKhuyenMai_Event.TaskIDNhan_3 = 280;			--Thay đổi ID nhận dòng 3
tbKhuyenMai_Event.KhuyenMai_3 = 0000;			--Khuyến mãi 3

tbKhuyenMai_Event.TaskIDNhan_4 = 280;			--Thay đổi ID nhận dòng 4
tbKhuyenMai_Event.KhuyenMai_4 = 0000;			--Khuyến mãi 4

tbKhuyenMai_Event.TaskIDNhan_5 = 280;			--Thay đổi ID nhận dòng 5
tbKhuyenMai_Event.KhuyenMai_5 = 0000;			--Khuyến mãi 5

tbKhuyenMai_Event.TaskIDNhan_6 = 49;			--Thay đổi ID nhận dòng 6 [dòng chuyên nhận sự kiện - không sửa task ID]
tbKhuyenMai_Event.KhuyenMai_6 = 300;			--Khuyến mãi 6
--Tỷ lệ KM hiện tại (x1):
--50K = 42 ngôi sao--
--100K = 84 ngôi sao--
--200K = 168 ngôi sao--
--300K = 252 ngôi sao--
--400K = 336 ngôi sao--
--500K = 420 ngôi sao--
--1000K = 840 ngôi sao--

--Tỷ lệ KM hiện tại (x3):
--50K = 126 ngôi sao--
--100K = 252 ngôi sao--
--200K = 504 ngôi sao--
--300K = 756 ngôi sao--
--400K = 1008 ngôi sao--
--500K = 1260 ngôi sao--
--1000K = 2520 ngôi sao--

--Tỷ lệ KM hiện tại (x4):
--50K = 168 ngôi sao--
--100K = 336 ngôi sao--
--200K = 672 ngôi sao--
--300K = 1008 ngôi sao--
--400K = 1344 ngôi sao--
--500K = 1680 ngôi sao--
--1000K = 3360 ngôi sao--
function tbKhuyenMai_Event:OnDialog()
DoScript("\\script\\Update_2023\\KhuyenMai.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=blue>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"..
"<color=green>- Khuyến mãi Góp quỹ nhận <color=yellow>X"..self.TyLeKM.."<color> Ngôi Sao May Mắn<color>\n"..
"<color=yellow>-Tỷ lệ KM hiện tại (x100%):<color>\n"..
"<color=cyan>-50K = 84 Ngôi Sao May Mắn\n"..
"-100K = 168 Ngôi Sao May Mắn\n"..
"-200K = 336 Ngôi Sao May Mắn\n"..
"-500K = 840 Ngôi Sao May Mắn<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_1*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong1, self});
end

--Nhận dòng 2--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_2*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong2, self});
end

--Nhận dòng 3--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_3*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong3, self});
end

--Nhận dòng 4--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_4*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong4, self});
end

--Nhận dòng 5--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_5*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong5, self});
end

--Nhận dòng 6--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..(self.KhuyenMai_6*self.TyLeKM).."<color> Ngôi Sao May Mắn<color>", self.NhanDong6, self});
end



Dialog:Say(szMsg, tbOpt);
end

function tbKhuyenMai_Event:NhanDong1()
local CheckNhan = me.GetTask(self.TaskGroupNhan_1,self.TaskIDNhan_1);
local ThoiGianNap = self.KhuyenMai_1*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_1,self.TaskIDNhan_1,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbKhuyenMai_Event:NhanDong2()
local CheckNhan = me.GetTask(self.TaskGroupNhan_2,self.TaskIDNhan_2);
local ThoiGianNap = self.KhuyenMai_2*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_2,self.TaskIDNhan_2,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbKhuyenMai_Event:NhanDong3()
local CheckNhan = me.GetTask(self.TaskGroupNhan_3,self.TaskIDNhan_3);
local ThoiGianNap = self.KhuyenMai_3*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_3,self.TaskIDNhan_3,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbKhuyenMai_Event:NhanDong4()
local CheckNhan = me.GetTask(self.TaskGroupNhan_4,self.TaskIDNhan_4);
local ThoiGianNap = self.KhuyenMai_4*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_4,self.TaskIDNhan_4,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbKhuyenMai_Event:NhanDong5()
local CheckNhan = me.GetTask(self.TaskGroupNhan_5,self.TaskIDNhan_5);
local ThoiGianNap = self.KhuyenMai_5*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_5,self.TaskIDNhan_5,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbKhuyenMai_Event:NhanDong6()
local CheckNhan = me.GetTask(self.TaskGroupNhan_6,self.TaskIDNhan_6);
local ThoiGianNap = self.KhuyenMai_6*self.TyLeKM;

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
--me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + ThoiGianNap);

me.AddStackItem(18,1,3004,2,{bForceBind=1,},ThoiGianNap); --Phần thưởng Khuyến Mãi

me.SetTask(self.TaskGroupNhan_6,self.TaskIDNhan_6,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\KhuyenMai.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..ThoiGianNap.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..ThoiGianNap.."<color> Vật phẩm Khuyến mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
