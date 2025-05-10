local tbNPCEvent2 = {};
SpecialEvent.DoiNgoiSao = tbNPCEvent2;

tbNPCEvent2.Task_Time = 4000;	--Thời Gian online
tbNPCEvent2.ID_Time   = 1;		--Thời Gian online 


function tbNPCEvent2:OnDialog()
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
local szMsg = 
"<color=pink>Event Trung Thu:<color>\n"..
"<color=0x8080ff>Tài khoản Game: <color=green>"..me.szAccount.."<color><color>\n"..
"<color=0x8080ff>Thời gian online: <color=green>"..CheckTime.."<color> ngày<color>\n"


	local tbOpt = 
	{
	{"Kết thúc đối thoại"},
	}
	table.insert(tbOpt, 1, {"<color=cyan>Đổi: 2 Ngày Online = 12 Ngôi Sao",self.NSMM_12, self,});
	table.insert(tbOpt, 2, {"<color=cyan>Đổi: 5 Ngày Online = 30 Ngôi Sao",self.NSMM_30, self,});
	table.insert(tbOpt, 3, {"<color=cyan>Đổi: 10 Ngày Online = 60 Ngôi Sao",self.NSMM_60, self,});
	table.insert(tbOpt, 4, {"<color=cyan>Đổi: 15 Ngày Online = 90 Ngôi Sao",self.NSMM_90, self,});
	table.insert(tbOpt, 5, {"<color=cyan>Đổi: 20 Ngày Online = 120 Ngôi Sao",self.NSMM_120, self,});

	Dialog:Say(szMsg, tbOpt);
end


function tbNPCEvent2:NSMM_12()
local nDiemDoi = 2;
local nNgoiSao = 12;
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);

if CheckTime < nDiemDoi then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Thời gian online không đủ <color=red>"..nDiemDoi.."<color> ngày, không thể đổi!<color>"});
return 0;
end

me.AddStackItem(18,1,3004,2,{bForceBind=1,},nNgoiSao);

local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
me.SetTask(self.Task_Time, self.ID_Time, CheckTime - nDiemDoi);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Đổi thành công <color=red>"..nDiemDoi.."<color> ngày online lấy <color=red>"..nNgoiSao.."<color> Ngôi Sao May Mắn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNPCEvent2:NSMM_30()
local nDiemDoi = 5;
local nNgoiSao = 30;
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);

if CheckTime < nDiemDoi then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Thời gian online không đủ <color=red>"..nDiemDoi.."<color> ngày, không thể đổi!<color>"});
return 0;
end

me.AddStackItem(18,1,3004,2,{bForceBind=1,},nNgoiSao);

local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
me.SetTask(self.Task_Time, self.ID_Time, CheckTime - nDiemDoi);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Đổi thành công <color=red>"..nDiemDoi.."<color> ngày online lấy <color=red>"..nNgoiSao.."<color> Ngôi Sao May Mắn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNPCEvent2:NSMM_60()
local nDiemDoi = 10;
local nNgoiSao = 60;
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);

if CheckTime < nDiemDoi then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Thời gian online không đủ <color=red>"..nDiemDoi.."<color> ngày, không thể đổi!<color>"});
return 0;
end

me.AddStackItem(18,1,3004,2,{bForceBind=1,},nNgoiSao);

local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
me.SetTask(self.Task_Time, self.ID_Time, CheckTime - nDiemDoi);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Đổi thành công <color=red>"..nDiemDoi.."<color> ngày online lấy <color=red>"..nNgoiSao.."<color> Ngôi Sao May Mắn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNPCEvent2:NSMM_90()
local nDiemDoi = 15;
local nNgoiSao = 90;
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);

if CheckTime < nDiemDoi then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Thời gian online không đủ <color=red>"..nDiemDoi.."<color> ngày, không thể đổi!<color>"});
return 0;
end

me.AddStackItem(18,1,3004,2,{bForceBind=1,},nNgoiSao);

local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
me.SetTask(self.Task_Time, self.ID_Time, CheckTime - nDiemDoi);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Đổi thành công <color=red>"..nDiemDoi.."<color> ngày online lấy <color=red>"..nNgoiSao.."<color> Ngôi Sao May Mắn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNPCEvent2:NSMM_120()
local nDiemDoi = 20;
local nNgoiSao = 120;
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);

if CheckTime < nDiemDoi then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Thời gian online không đủ <color=red>"..nDiemDoi.."<color> ngày, không thể đổi!<color>"});
return 0;
end

me.AddStackItem(18,1,3004,2,{bForceBind=1,},nNgoiSao);

local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
me.SetTask(self.Task_Time, self.ID_Time, CheckTime - nDiemDoi);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Đổi thành công <color=red>"..nDiemDoi.."<color> ngày online lấy <color=red>"..nNgoiSao.."<color> Ngôi Sao May Mắn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

