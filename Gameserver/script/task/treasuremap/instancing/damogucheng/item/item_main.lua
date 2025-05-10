local tbItem_Plate	= Item:GetClass("damogucheng_plate");	-- 令牌

function tbItem_Plate:OnUse()
	local nMapId, nMapX, nMapY	= me.GetWorldPos();
	
	if nMapId ~= 94 then
		Dialog:SendInfoBoardMsg(me, "<color=red>Bạn phải đến <color><color=yellow>Cư Diên Trạch<color><color=red> mới mở được cửa mật chỉ Đại Mạc Cổ Thành!<color>");
		return;
	end;
	if (me.nTeamId == 0) then
		me.Msg("Tổ đội mới mở được cửa mật chỉ Đại Mạc Cổ Thành!");
		return;
	end

	Dialog:Say("Bạn có muốn vào phó bản Đại Mạc Cổ Thành?<enter><enter><color=yellow>Kiến nghị tổ đội 6 người đạt cấp 75 hoặc cao hơn<color>.", {
			  {"Có",		self.OpenInstancing, self, me, it},
			  {"Chờ đã"},
			});

end;


function tbItem_Plate:OpenInstancing(pPlayer, pItem)
	
	if not pPlayer or not pItem then
		return;
	end;
	
	-- 临时写法
	if (pPlayer.GetTask(2066, 272)>=6) then
		Dialog:SendInfoBoardMsg(me, "Một tuần chỉ có thể vào phó bản <color=yellow>6<color> lần!");
		return;
	end;
	
	if (pPlayer.nTeamId == 0) then
		pPlayer.Msg("Tổ đội mới mở được cửa mật chỉ Đại Mạc Cổ Thành!");
		return;
	end

	if pPlayer.GetItemCountInBags(18, 1, 2002, 1) < 1 then
		return;
	end;
	
	pItem.Delete(me);
	TreasureMap:AddInstancing(pPlayer, 34);
	TreasureMap:NotifyAroundPlayer(pPlayer, "<color=yellow>"..pPlayer.szName.." đã mở được cửa mật chỉ Đại Mạc Cổ Thành!<color>");
end;