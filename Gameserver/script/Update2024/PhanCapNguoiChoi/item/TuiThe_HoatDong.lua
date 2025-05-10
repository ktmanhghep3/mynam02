local tbItem = Item:GetClass("TuiThe_HoatDong");
tbItem.Item_Ruong = {18,1,3101,1};

function tbItem:OnUse()	
	
local GioiHanCaoThu = 8;
local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
	if nLevel_DanhVongST < GioiHanCaoThu then
	local pItem = me.AddItem(18,1,3102,1);
	me.Msg("<color=yellow>Nhận được 1 [<color=green>"..pItem.szName.."<color>] thành công!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
	return 0;
	end
	local pItem = me.AddItem(18,1,3103,1);
	me.Msg("<color=yellow>Nhận được 1 [<color=green>"..pItem.szName.."<color>] thành công!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end
