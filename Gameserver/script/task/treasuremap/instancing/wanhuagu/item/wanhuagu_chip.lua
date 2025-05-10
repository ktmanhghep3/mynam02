local tbItem_Chip 	= Item:GetClass("wanhuagu_chips");

local CHIP_NUM		= 200;	-- 合成一張令牌需要的碎片

function tbItem_Chip:OnUse()
	local nChips		= me.GetItemCountInBags(18, 1, 245, 2);
	
	if nChips < CHIP_NUM then
		Dialog:SendInfoBoardMsg(me, "<color=red>Cần có <color><color=yellow>"..CHIP_NUM.." Mảnh Bản đồ Vạn Hoa Cốc<color> <color=red>mới có thể hợp thành Bản đồ Vạn Hoa Cốc!<color>");
		return;
	else
		me.ConsumeItemInBags(CHIP_NUM, 18, 1, 245, 2);
		me.AddItem(18, 1, 245, 1);
		me.Msg("Ngươi nhận được 1 <color=yellow>Bản đồ Vạn Hoa Cốc<color> !");
	end;
end;
