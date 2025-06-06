-- 文件名　：console_gs.lua
-- 创建者　：sunduoliang
-- 创建时间：2009-04-23 10:04:41
-- 描  述  ：--控制台

if (MODULE_GC_SERVER) then
	return 0;
end

--报名进场
function Console:ApplySignUp(nDegree, tbPlayerIdList)
	GCExcute{"Console:ApplySignUp", nDegree, tbPlayerIdList};
end

function Console:StartSignUp(nDegree)
	self:GetBase(nDegree):StartSignUp();
end

function Console:OnStartMission(nDegree)
	self:GetBase(nDegree):OnStartMission();
end

function Console:SignUpFail(tbPlayerList)
	for _, nPlayerId in pairs(tbPlayerList) do
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
		if pPlayer then
			pPlayer.Msg("膼膬ng k媒 膽峄� tham gia chi岷縩 膽岷 qu岷� c岷 tuy岷縯.");
			Dialog:SendBlackBoardMsg(pPlayer, "膼膬ng k媒 tham gia chi岷縩 膽岷")
			return 0;
		end
	end
end

function Console:SignUpSucess(nDegree, nReadyMapId, tbPlayerList)
	local tbBase = self:GetBase(nDegree);
	for _, nPlayerId in pairs(tbPlayerList) do
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
		if pPlayer then
			if tbBase:IsOpen() == 0 then
				pPlayer.Msg("B岷 膽茫 b峄� tr峄峮g th瓢啤ng, k岷縯 th煤c l瓢峄 膽岷 n脿y.");
			else
				pPlayer.NewWorld(nReadyMapId, unpack(tbBase.tbCfg.tbMap[nReadyMapId].tbInPos));
			end
		end
	end
end

function Console:OnDyJoin(nDegree, me, nDyId, tbPos, GroupId)
	local tbBase = self:GetBase(nDegree);
	tbBase:OnDyJoin(me, nDyId, tbPos, GroupId);
end

--副本申请
function Console:ApplyDyMap(nDegree, nMapId)
	local tbBase   = self:GetBase(nDegree);
	local nDyCount = tbBase.tbCfg.nMaxDynamic;
	local nDynamicMap = tbBase.tbCfg.nDynamicMap;
	local nCurCount = #self.tbDynMapLists[nMapId];
	if nCurCount < nDyCount then
		for i=1, (nDyCount - nCurCount) do
			if (LoadDynMap(Map.DYNMAP_CONSOLE, nDynamicMap, nMapId) ~= 1) then
				print("竞技赛副本地图（新年雪仗）加载失败。。");
			end
		end
	end
	return 0;
end

--比赛地图动态加载成功
function Console:OnLoadMapFinish(nDyMapId, nMapId)
	self.tbDynMapLists[nMapId] = self.tbDynMapLists[nMapId] or {};
	table.insert(self.tbDynMapLists[nMapId], nDyMapId);
end
