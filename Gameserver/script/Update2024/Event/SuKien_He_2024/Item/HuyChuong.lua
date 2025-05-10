--Huy Chương +5
local tbItem = Item:GetClass("KH_HuyChuong_5");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 5;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,5};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +6
local tbItem = Item:GetClass("KH_HuyChuong_6");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 6;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,6};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +7
local tbItem = Item:GetClass("KH_HuyChuong_7");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 7;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,7};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +8
local tbItem = Item:GetClass("KH_HuyChuong_8");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 8;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,8};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +9
local tbItem = Item:GetClass("KH_HuyChuong_9");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 9;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,9};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +10
local tbItem = Item:GetClass("KH_HuyChuong_10");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 10;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,10};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +11
local tbItem = Item:GetClass("KH_HuyChuong_11");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 11;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,11};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +12
local tbItem = Item:GetClass("KH_HuyChuong_12");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 12;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,12};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Huy Chương +13
local tbItem = Item:GetClass("KH_HuyChuong_13");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 13;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,13};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Huy Chương +14
local tbItem = Item:GetClass("KH_HuyChuong_14");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 14;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,14};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +16
local tbItem = Item:GetClass("KH_HuyChuong_16");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 16;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,16};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +18
local tbItem = Item:GetClass("KH_HuyChuong_18");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 18;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,18};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +20
local tbItem = Item:GetClass("KH_HuyChuong_20");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 20;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,20};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +22
local tbItem = Item:GetClass("KH_HuyChuong_22");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 22;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,22};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +24
local tbItem = Item:GetClass("KH_HuyChuong_24");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 24;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,24};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +26
local tbItem = Item:GetClass("KH_HuyChuong_26");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 26;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,26};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +30
local tbItem = Item:GetClass("KH_HuyChuong_30");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 30;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,30};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +34
local tbItem = Item:GetClass("KH_HuyChuong_34");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 34;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,34};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +38
local tbItem = Item:GetClass("KH_HuyChuong_38");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 38;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,38};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +42
local tbItem = Item:GetClass("KH_HuyChuong_42");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 42;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,42};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +46
local tbItem = Item:GetClass("KH_HuyChuong_46");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 46;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,46};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Huy Chương +50
local tbItem = Item:GetClass("KH_HuyChuong_50");

tbItem.nSkill_HC = 1440;						--Skill Huy Chương
tbItem.LevelHC = 50;								--Cấp Huy Chương ADD
tbItem.Item_Delete = {18,1,3700,50};				--ID Item

function tbItem:OnUse()
	local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


