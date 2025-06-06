-- 文件名　：fuben_mission.lua
-- 创建者　：zounan
-- 创建时间：2009-12-17 09:43:45
-- 描  述  ：副本MISSION
Require("\\script\\mission\\lockmis_base.lua");



CFuben.FubenMission	= CFuben.FubenMission or Lib:NewClass(Mission.LockMis);
local BaseGame = CFuben.FubenMission;

-- Kh峄焛 t岷 
function BaseGame:InitGameEx(nMapId, nPlayerId, nFubenId)
	self:InitGame(nMapId);
	self.nPlayerId = nPlayerId;
	self.nFubenId = nFubenId;
	self.tbMisCfg = 
	{
		nDeathPunish   = 1,
		nPkState       = Player.emKPK_STATE_PRACTISE,
--		nOnDeath 	   = 1,        -- C贸 th峄� ch岷縯
--		nOnKillNpc 	   = 1,        -- NPC ch岷縯 		
		nFightState	   = 1,
		nForbidStall   = 1,        -- V岷璽 ph岷﹎ c岷
	};		
	self.tbLockMisCfg = CFuben.tbLockMis[nFubenId].tbLockMisCfg;	
	self.tbMisCfg.nOnDeath = self.tbLockMisCfg.nOnDeath or 0;	
end

--膼峄峜 c谩c t岷璸 tin c岷 h矛nh
--[[
function BaseGame:LoadMisFile(szPath)
--	local tbLockMisCfg = self:LoadMisFile(szPath);
--	self.tbLockMisCfg = tbLockMisCfg;	
--	self.tbLockMisCfg = CFuben.tbLockMisFile:LoadMisFile(szPath);
end
--]]

--Callback
function BaseGame:OnLockMisJoin(nGroupId)
end

function BaseGame:OnLockMisLeave(nGroupId, szReason)
	local nMapId = CFuben.FubenData[self.nPlayerId][3];
	local nPosX = CFuben.FubenData[self.nPlayerId][6];
	local nPosY = CFuben.FubenData[self.nPlayerId][7];
	me.NewWorld(nMapId, nPosX, nPosY);
	CFuben:OnLeave(self.nPlayerId);
--	if self.nPlayerCount <= 0 and self.nIsGameOver ~= 1 then
--		self:GameLose();
--	end
end


--G峄峣 l岷 c谩i ch岷縯 c峄 nh芒n v岷璽
function BaseGame:OnDeath(pKillerNpc) 
	if not self.tbLockMisCfg.tbNpcPoint["playerbirth"] then
		print("NO BIRTH");
		return;
	end
	local nRandom = #self.tbLockMisCfg.tbNpcPoint["playerbirth"];
	local nX = self.tbLockMisCfg.tbNpcPoint["playerbirth"][nRandom][1];
	local nY = self.tbLockMisCfg.tbNpcPoint["playerbirth"][nRandom][2];	
	me.SetTmpDeathPos(self.nMapId, nX, nY);
	me.ReviveImmediately(0);
	me.SetFightState(1);
	--self:KickPlayer(me);
end

function BaseGame:OnGameClose()	
	--膼贸ng m峄檛 ph贸 b岷 
	local nTempMapId = CFuben.FubenData[self.nPlayerId][1];
	CFuben:Close(nTempMapId, self.nMapId, self.nPlayerId);
end


 --pNpc.AddLifePObserver(90)
 --local tbNpc = Npc:GetClass("animal");
-- local tbNpc = Npc:GetClass("dataosha_baoming");
-- function tbNpc:OnLifePercentReduceHere(nPercent)
-- end