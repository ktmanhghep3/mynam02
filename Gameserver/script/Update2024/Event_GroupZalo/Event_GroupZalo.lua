local tbEvent_GroupZalo ={};
SpecialEvent.Event_GroupZalo= tbEvent_GroupZalo;
DoScript("\\script\\Update2024\\Event_GroupZalo\\Event_GroupZalo.lua");

tbEvent_GroupZalo.TaskGroup_Nhan = 4212;	--Task Check Nhận
tbEvent_GroupZalo.TaskID_Nhan = 6;			--Task Check Nhận

tbEvent_GroupZalo.SoCauDung_1 = 1;			--Số câu đúng 1
tbEvent_GroupZalo.SoCauDung_2 = 2;			--Số câu đúng 2
tbEvent_GroupZalo.SoCauDung_3 = 3;			--Số câu đúng 3
tbEvent_GroupZalo.SoCauDung_4 = 4;			--Số câu đúng 4
tbEvent_GroupZalo.SoCauDung_5 = 5;			--Số câu đúng 5
tbEvent_GroupZalo.SoCauDung_6 = 6;			--Số câu đúng 6
tbEvent_GroupZalo.SoCauDung_7 = 7;			--Số câu đúng 7
tbEvent_GroupZalo.SoCauDung_8 = 8;			--Số câu đúng 8
tbEvent_GroupZalo.SoCauDung_9 = 9;			--Số câu đúng 9
tbEvent_GroupZalo.SoCauDung_10 = 10;		--Số câu đúng 10

tbEvent_GroupZalo.TyLePhanThuong = 5;

function tbEvent_GroupZalo:OnDialog()
DoScript("\\script\\Update2024\\Event_GroupZalo\\Event_GroupZalo.lua");
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
	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_1.."<color>/10<color>", self.NhanDong1, self});
end

--Nhận dòng 2--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_2.."<color>/10<color>", self.NhanDong2, self});
end

--Nhận dòng 3--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_3.."<color>/10<color>", self.NhanDong3, self});
end

--Nhận dòng 4--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_4.."<color>/10<color>", self.NhanDong4, self});
end

--Nhận dòng 5--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_5.."<color>/10<color>", self.NhanDong5, self});
end

--Nhận dòng 6--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_6.."<color>/10<color>", self.NhanDong6, self});
end

--Nhận dòng 7--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_7.."<color>/10<color>", self.NhanDong7, self});
end

--Nhận dòng 8--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_8.."<color>/10<color>", self.NhanDong8, self});
end

--Nhận dòng 9--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_9.."<color>/10<color>", self.NhanDong9, self});
end

--Nhận dòng 10--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng số câu đúng: <color=green>"..self.SoCauDung_10.."<color>/10<color>", self.NhanDong10, self});
end


Dialog:Say(szMsg, tbOpt);
end


function tbEvent_GroupZalo:NhanDong1()
local SoCauDungUnPack = self.SoCauDung_1;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK





me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong2()
local SoCauDungUnPack = self.SoCauDung_2;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong3()
local SoCauDungUnPack = self.SoCauDung_3;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong4()
local SoCauDungUnPack = self.SoCauDung_4;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong5()
local SoCauDungUnPack = self.SoCauDung_5;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong6()
local SoCauDungUnPack = self.SoCauDung_6;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong7()
local SoCauDungUnPack = self.SoCauDung_7;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong8()
local SoCauDungUnPack = self.SoCauDung_8;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong9()
local SoCauDungUnPack = self.SoCauDung_9;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbEvent_GroupZalo:NhanDong10()
local SoCauDungUnPack = self.SoCauDung_10;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_EventGroupZalo.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
--me.AddStackItem(18,1,3004,2,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); --Ngôi Sao May Mắn
me.AddStackItem(18,1,3900,1,{bForceBind=1,},SoCauDungUnPack*self.TyLePhanThuong); 	--Điểm Thành Tựu PK






me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoCauDungUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà Event Group Zalo với số câu Trả lời đúng: <color=cyan>"..SoCauDungUnPack.."/10<color>  thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

