--Bộ Thiên Gia +7
local tbItem = Item:GetClass("KH_ThienGia_7");
tbItem.CapThienGia = 7;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +8
local tbItem = Item:GetClass("KH_ThienGia_8");
tbItem.CapThienGia = 8;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +9
local tbItem = Item:GetClass("KH_ThienGia_9");
tbItem.CapThienGia = 9;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +10
local tbItem = Item:GetClass("KH_ThienGia_10");
tbItem.CapThienGia = 10;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);
if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +12
local tbItem = Item:GetClass("KH_ThienGia_12");
tbItem.CapThienGia = 12;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +14
local tbItem = Item:GetClass("KH_ThienGia_14");
tbItem.CapThienGia = 14;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +15
local tbItem = Item:GetClass("KH_ThienGia_15");
tbItem.CapThienGia = 15;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +16
local tbItem = Item:GetClass("KH_ThienGia_16");
tbItem.CapThienGia = 16;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);

if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +17
local tbItem = Item:GetClass("KH_ThienGia_17");
tbItem.CapThienGia = 17;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +18
local tbItem = Item:GetClass("KH_ThienGia_18");
tbItem.CapThienGia = 18;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +19
local tbItem = Item:GetClass("KH_ThienGia_19");
tbItem.CapThienGia = 19;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end



Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +20
local tbItem = Item:GetClass("KH_ThienGia_20");
tbItem.CapThienGia = 20;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end




--Bộ Thiên Gia +21
local tbItem = Item:GetClass("KH_ThienGia_21");
tbItem.CapThienGia = 21;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +22
local tbItem = Item:GetClass("KH_ThienGia_22");
tbItem.CapThienGia = 22;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +23
local tbItem = Item:GetClass("KH_ThienGia_23");
tbItem.CapThienGia = 23;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +24
local tbItem = Item:GetClass("KH_ThienGia_24");
tbItem.CapThienGia = 24;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +25
local tbItem = Item:GetClass("KH_ThienGia_25");
tbItem.CapThienGia = 25;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +26
local tbItem = Item:GetClass("KH_ThienGia_26");
tbItem.CapThienGia = 26;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +27
local tbItem = Item:GetClass("KH_ThienGia_27");
tbItem.CapThienGia = 27;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +28
local tbItem = Item:GetClass("KH_ThienGia_28");
tbItem.CapThienGia = 28;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +29
local tbItem = Item:GetClass("KH_ThienGia_29");
tbItem.CapThienGia = 29;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


--Bộ Thiên Gia +30
local tbItem = Item:GetClass("KH_ThienGia_30");
tbItem.CapThienGia = 30;

tbItem.Item_Delete = {18,1,3800,tbItem.CapThienGia};				--ID Item
tbItem.Skill_ThienGia = 1748;

function tbItem:OnUse()
	local szMsg = "Thuộc tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>";
	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Kích hoạt Đẳng cấp mới<color>", self.kichhoat, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:kichhoat()
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

Task:DelItem(me, self.Item_Delete, 1);
end


