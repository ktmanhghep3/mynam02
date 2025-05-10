
------------------------------------------------------------
-- 圣诞铃铛
------------------------------------------------------------
local tbLingDang = Item:GetClass("luckyfantrungthu_item");

function tbLingDang:OnUse()
	--local nYuanXiaoStartTime = 20121223;
	--local nYuanXiaoEndTime	= 20130103;
	--local nNowTime = tonumber(os.date("%Y%m%d", GetTime()));
	
	--if (nNowTime > nYuanXiaoEndTime) then
	--	local nCount = it.nCount;
	--	--me.DelItem(it, Player.emKLOSEITEM_USE);
	--	me.AddBindCoin(20 * nCount);
	--	Dbg:WriteLog("xmax2012_lingdang",  me.szName, string.format("lose ：%s", nCount));
	--	return 1;
	--end

	--if (nNowTime < nYuanXiaoStartTime) then
	--	Dialog:Say("Hoạt động chưa mở!");
	--	return 0;
	--end	
	
	local szMapClass = GetMapType(me.nMapId) or ""
	if szMapClass ~= "village" and szMapClass ~= "city" then
		me.Msg("Chỉ có thể mở ở thành thị và thôn trấn!");
		return 0;
	end

	me.CallClientScript({"UiManager:OpenWindow", "UI_LUCKYFANTRUNGTHU"});
	return 0;
end
