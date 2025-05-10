local tbNpc = Npc:GetClass("Donate_SuKien");
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");

tbNpc.TaskGroup_Time = 4000;	--Task Thời Gian Online
tbNpc.TaskID_Time = 1;			--Task Thời Gian Online

tbNpc.TaskGroupSuKien = 4081;	--Task Nạp Sự Kiện
tbNpc.TaskIDSuKien = 240;			--TRỊ SỐ CẦN THAY ĐỔI

	--Bình thường--
	tbNpc.SuKien_50 = 50;
	tbNpc.SuKien_100 = 100;
	tbNpc.SuKien_200 = 400;
	tbNpc.SuKien_300 = 300;
	tbNpc.SuKien_400 = 400;
	tbNpc.SuKien_500 = 600;
	tbNpc.SuKien_1000 = 1200;
------------50K
function tbNpc:SuKien_50K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_50.." Vật phẩm Sự Kiện-Event = 50K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_50.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_50K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------100K
function tbNpc:SuKien_100K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_100.." Vật phẩm Sự Kiện-Event = 100K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_100.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_100K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------200K
function tbNpc:SuKien_200K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_200.." Vật phẩm Sự Kiện-Event = 200K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_200.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_200K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------300K
function tbNpc:SuKien_300K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_300.." Vật phẩm Sự Kiện-Event = 300K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_300.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_300K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------400K
function tbNpc:SuKien_400K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_400.." Vật phẩm Sự Kiện-Event = 400K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_400.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_400K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------500K
function tbNpc:SuKien_500K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_500.." Vật phẩm Sự Kiện-Event = 500K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_500.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_500K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

------------1000K
function tbNpc:SuKien_1000K()
DoScript("\\script\\Update_T9\\Donate_SuKien\\Donate_SuKien.lua");
local szMsg = "<color=cyan>Nhận "..self.SuKien_1000.." Vật phẩm Sự Kiện-Event = 1000K đóng góp<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận <color=green>"..self.SuKien_1000.."<color> Vật phẩm Sự Kiện-Event<color>", self.AddSuKien_1000K, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end


------------Add thưởng 50K
function tbNpc:AddSuKien_50K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 100K
function tbNpc:AddSuKien_100K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_100;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 200K
function tbNpc:AddSuKien_200K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_200;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 300K
function tbNpc:AddSuKien_300K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_300;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 400K
function tbNpc:AddSuKien_400K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_400;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 500K
function tbNpc:AddSuKien_500K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_500;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


------------Add thưởng 1000K
function tbNpc:AddSuKien_1000K()
local CheckNhan = me.GetTask(self.TaskGroupSuKien,self.TaskIDSuKien);
local nSoVP = self.SuKien_1000;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3010,1,nil,nSoVP);--Lục bảo
--me.AddStackItem(18,1,3925,1,nil,200000);-- long den

me.SetTask(self.TaskGroupSuKien,self.TaskIDSuKien,1);--Task Tính lần đã nhận


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NapSuKien.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..nSoVP.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thêm <color=cyan>"..nSoVP.."<color> Vật phẩm Sự Kiện thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
