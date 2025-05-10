local tbMocEvent = {};
SpecialEvent.MocEventTrang = tbMocEvent;

tbMocEvent.Task_EventTT = 4010;	--Task Group Tính số Event Trăng tròn đã dùng(mốc)
tbMocEvent.ID_EventTT   = 1;		--Task Tính số Event Trăng tròn đã dùng(mốc) 

tbMocEvent.TSKMoc_1 = 2;
tbMocEvent.TSKMoc_2 = 3;
tbMocEvent.TSKMoc_3 = 4;
tbMocEvent.TSKMoc_4 = 5;
tbMocEvent.TSKMoc_5 = 6;
tbMocEvent.TSKMoc_6 = 7;
tbMocEvent.TSKMoc_7 = 8;
tbMocEvent.TSKMoc_8 = 9;
tbMocEvent.TSKMoc_9 = 10;
tbMocEvent.TSKMoc_10 = 11;
tbMocEvent.TSKMoc_11 = 12;
tbMocEvent.TSKMoc_12 = 13;



function tbMocEvent:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local CheckMocTrang = me.GetTask(self.Task_EventTT,self.ID_EventTT);	--Điểm Tích lũy Phúc lợi
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trăng Tròn hiện tại: <color=cyan>"..CheckMocTrang.."<color> điểm<color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if CheckMocTrang >= 5 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Trăng Tròn 5<color>", self.Moc_15, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Trăng Tròn 5<color>"});
	end

	if CheckMocTrang >= 10 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Trăng Tròn 10<color>", self.Moc_25, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Trăng Tròn 10<color>"});
	end

	if CheckMocTrang >= 15 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Trăng Tròn 15<color>", self.Moc_35, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Trăng Tròn 15<color>"});
	end

	if CheckMocTrang >= 20 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Trăng Tròn 20<color>", self.Moc_50, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Trăng Tròn 20<color>"});
	end

	if CheckMocTrang >= 25 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Trăng Tròn 25<color>", self.Moc_60, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Trăng Tròn 25<color>"});
	end

	if CheckMocTrang >= 30 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Trăng Tròn 30<color>", self.Moc_70, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Trăng Tròn 30<color>"});
	end

	if CheckMocTrang >= 35 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Trăng Tròn 35<color>", self.Moc_85, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Trăng Tròn 35<color>"});
	end

	if CheckMocTrang >= 40 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Trăng Tròn 40<color>", self.Moc_100, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Trăng Tròn 40<color>"});
	end

	if CheckMocTrang >= 45 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Trăng Tròn 45<color>", self.Moc_115, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Trăng Tròn 45<color>"});
	end

	if CheckMocTrang >= 50 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Trăng Tròn 50<color>", self.Moc_130, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Trăng Tròn 50<color>"});
	end

	if CheckMocTrang >= 55 then
		table.insert(tbOpt, 11, {"<color=yellow>Mốc Trăng Tròn 55<color>", self.Moc_145, self});
	else
		table.insert(tbOpt, 11, {"<color=gray>Mốc Trăng Tròn 55<color>"});
	end

	if CheckMocTrang >= 60 then
		table.insert(tbOpt, 12, {"<color=yellow>Mốc Trăng Tròn 60<color>", self.Moc_160, self});
	else
		table.insert(tbOpt, 12, {"<color=gray>Mốc Trăng Tròn 60<color>"});
	end

	Dialog:Say(szMsg, tbOpt);
end

--add Thưởng--
function tbMocEvent:Moc_15()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,1,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_1,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 5 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_25()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_2) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,2,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_2,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 10 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_35()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_3) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,3,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_3,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 15 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_50()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_4) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,4,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_4,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 20 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_60()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_5) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,5,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_5,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 25 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_70()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_6) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,6,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_6,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 30 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_85()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_7) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,7,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_7,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 35 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_100()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_8) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,8,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_8,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 40 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_115()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_9) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,9,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_9,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 45 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_130()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_10) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,10,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_10,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 50 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_145()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_11) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,11,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_11,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 55 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbMocEvent:Moc_160()
--[[if me.GetTask(self.Task_EventTT,self.TSKMoc_12) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end]]

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3003,12,{bForceBind=1,},1);

me.SetTask(self.Task_EventTT,self.TSKMoc_12,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc 60 Trăng Tròn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end


