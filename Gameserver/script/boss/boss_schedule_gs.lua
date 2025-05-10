-------------------------------------------------------------------
--File: boss_schedule_gs.lua
--Author: lbh
--Date: 2008-1-21 10:24
--Describe: 刷Boss脚本gameserver端
-------------------------------------------------------------------
if not Boss then
	Boss = {};
elseif not MODULE_GAMESERVER then
	return;
end

-- 记录哪些Boss已被召出
if not Boss.tbUniqueBossCallOut then
	Boss.tbUniqueBossCallOut = {};
end

function Boss:DoCallOut(nTemplateId, nLevel, nSeries, nMapId, nMapX, nMapY)
	local nMapIndex = SubWorldID2Idx(nMapId);
	if nMapIndex < 0 then
		return;
	end
	-- Boss已被召出而且未被打死
	if self.tbUniqueBossCallOut[nTemplateId] then
		return 0;
	end	
	-- Call Boss
	local pNpc = KNpc.Add(nTemplateId, nLevel, nSeries, nMapIndex, nMapX, nMapY, 0, 1)
	if pNpc then
	
		--Thông báo vật phẩm
        pNpc.SetLoseItemCallBack(1);
		--------
		self.tbUniqueBossCallOut[nTemplateId] = 1;
		
		-- by zhangjinpin@kingsoft
		if Boss.Qinshihuang:OnBossCallOut(pNpc) == 1 then
			return;
		end
		
		local szMsg = string.format("<color=yellow>Võ Lâm Cao Thủ <color=cyan>%s<color> xuất hiện tại <color=pink>%s<color><color>", 
			pNpc.szName, GetMapNameFormId(nMapId));
		pNpc.AddLifePObserver(99);
		pNpc.AddLifePObserver(0);
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);				
	end
end

