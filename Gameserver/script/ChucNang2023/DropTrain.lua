--4倍地圖怪
--sunduoliang
--2008.11.12

local tbBoss = Npc:GetClass("DropTrain")

tbBoss.tbDropRatePath = 
{
	[115] = "\\setting\\npc\\droprate\\dropnew\\droptest.txt",	--95级boss掉落表
}


function tbBoss:OnDeath(pNpc)
	if him.GetNpcType() ~= 0 then
		--精英首領調用自己掉落表。
		return 0;
	end
	if not self.tbDropRatePath[him.nLevel] then
		return 0;
	end
	local pPlayer = pNpc.GetPlayer();
	if not pPlayer then
		return 0
	end
	local nLuck = Task.FourfoldMap.DEF_LUCKY + pPlayer.nCurLucky;
	pPlayer.DropRateItem(self.tbDropRatePath[him.nLevel], 1, nLuck, -1, him);
	
end
