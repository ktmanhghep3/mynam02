local tbItem = Item:GetClass("addrepute_STh");

tbItem.GioiHanDV = 8;	--Cấp Danh vọng giới hạn
tbItem.nDiem = 2;
function tbItem:OnUse()
local nLevel = me.GetReputeLevel(14, 1);
	if nLevel >= self.GioiHanDV then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Lệnh bài chỉ dùng đến cấp 7, không thể dùng tiếp!<color>"));
	return 0;
	end

me.AddRepute(14,1,self.nDiem);

return 1;	
end
