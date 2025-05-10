local tbBanDoBoss = Item:GetClass("Dong_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=199>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Đông\n- Gần cầu gỗ...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("Tay_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=200>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Tây\n- Gần núi đá lớn...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("Nam_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=201>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Nam\n- Gần Doanh trại...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("Bac_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=202>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Bắc\n- Gần núi đá lớn...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("DongNam_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=203>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Đông-Nam\n- Gần Doanh trại...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("DongBac_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=204>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Đông-Bắc\n- Gần Ngã ba...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("TayNam_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=205>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Tây-Nam\n- Gần Doanh trại...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

local tbBanDoBoss = Item:GetClass("TayBac_BossSuKien");

function tbBanDoBoss:OnUse()
local szMsg = " <pic=206>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"Boss Sự kiện:\n<color=yellow>- Khu vực phía Tây-Bắc\n- Gần bậc thang dài...<color>", self.Cancel, self});
	Dialog:Say(szMsg, tbOpt);
end
------------------

