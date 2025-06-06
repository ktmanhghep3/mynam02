-----------------------------------------------------
--文件名		：	mission.lua
--创建者		：	FanZai, zhouchenfei
--创建时间		：	2007-10-23
--功能描述		：	mission基类
------------------------------------------------------

local tbMSBase = Battle.tbMissionBase or Mission:New();	-- 支持重载

tbMSBase.nState	= nil;	-- 当前战场状态：
						--	0、战役未开启
						--	1、战役报名中
						--	2、战役战斗进行中
						--	3、战役刚刚结束了
						
-- 构造初始化
function tbMSBase:init(nBattleId, tbRuleData, szBattleName, tbMapInfo, nMapId, nMapNpcNumType, nSeqNum, nBattleSeq, szBattleTime)
	--print(" tbMSBase:init", tbRuleData, szBattleName, tbMapInfo, nMapId, nSeqNum);
	assert(self ~= Battle.tbMissionBase);
	assert(not self.nState);

	self:_SetState(0);

	local nBattleLevel	= tbRuleData.nBattleLevel;

	self.nBattleSeq		= nBattleSeq;  -- 同等级下的哪场比赛
	self.nBattleId		= nBattleId;
	self.nBattleLevel	= nBattleLevel;
	self.szBattleName	= tbMapInfo.szMapName;
	self.nMapId			= nMapId;	
	self.nBattleKey		= tonumber(szBattleTime .. nBattleLevel .. nBattleSeq);
	self.nBattleStartTime = 0;
	self.nSeqNum		= nSeqNum;
	self.nRuleType 		= tbRuleData.nRuleType;
	self.nMapNpcNumType	= nMapNpcNumType or 1;
	self.tbPlayerJoin	={} -- 参加过的玩家的ID表

	local nSongMapIndex	= nil;
	local nJinMapIndex	= nil;

	-- 宋、金双方随机选定场地
	if (MathRandom(2) == 1) then
		nSongMapIndex	= 1;
		nJinMapIndex	= 3;
	else
		nSongMapIndex	= 3;
		nJinMapIndex	= 1;
	end
	
	local tbMapInfoSong	= tbMapInfo[nSongMapIndex];
	local tbMapInfoJin	= tbMapInfo[nJinMapIndex];

	-- 双方阵营
	local tbCampSong	= Lib:NewClass(Battle.tbCampBase, Battle.CAMPID_SONG, tbMapInfoSong, self);
	local tbCampJin		= Lib:NewClass(Battle.tbCampBase, Battle.CAMPID_JIN, tbMapInfoJin, self);
	tbCampSong.tbOppCamp	= tbCampJin;
	tbCampJin.tbOppCamp		= tbCampSong;
	self.tbCamps	= {
		[Battle.CAMPID_SONG]	= tbCampSong;
		[Battle.CAMPID_JIN]		= tbCampJin;
	};
	
	self.tbCampSong		= tbCampSong;
	self.tbCampJin		= tbCampJin;
	self.tbNpcHighPoint	= {};			-- NPC高亮显示的坐标点，格式为key=dwid, value={npicid, nPosX, nPosY}
	
	-- 比赛规则
	self.tbRule		= Lib:NewClass(Battle.tbRuleBases[tbRuleData.nRuleType]);
	self.tbRule:Init(tbRuleData, self);

	-- 地图控制（Trap点事件）
	local tbMapCamp		= {
		[nSongMapIndex]	= tbCampSong,
		[nJinMapIndex]	= tbCampJin,
	};
	local tbMapClass	= Lib:NewClass(Battle.tbMapBase, tbMapCamp);
	Map.tbClass[nMapId]	= tbMapClass;
	
	-- 后营坐标点
	local tbBaseCampPos	= {
		[Battle.CAMPID_SONG]	= tbMapInfoSong["BaseCamp"];
		[Battle.CAMPID_JIN]		= tbMapInfoJin["BaseCamp"];
	};

	
	local tbSongIcon 	= {"\\image\\ui\\001a\\main\\chatchanel\\chanel_song.spr", 	"\\image\\ui\\001a\\main\\chatchanel\\btn_chanel_song.spr"};
	local tbKingIcon	= {"\\image\\ui\\001a\\main\\chatchanel\\chanel_jin.spr",	"\\image\\ui\\001a\\main\\chatchanel\\btn_chanel_jin.spr"};
	local tbChannel		=
	{
		[Wldh.Battle.CAMPID_SONG]	= {string.format("Tống %s %d", self.tbRule.szLevelName, nBattleSeq), 20, tbSongIcon[1], tbSongIcon[2]},
		[Wldh.Battle.CAMPID_JIN]	= {string.format("Kim %s %d", self.tbRule.szLevelName, nBattleSeq), 20, tbKingIcon[1], tbKingIcon[2]},
	};

	-- 设定Mission可选配置项
	self.tbMisCfg	= {
		tbLeavePos		= Battle.tbSignUpPos[nBattleLevel][nBattleSeq],	-- 离开坐标
		tbEnterPos		= tbBaseCampPos,					-- 进入坐标
		tbDeathRevPos	= tbBaseCampPos,					-- 死亡重生点
		tbChannel		= tbChannel,						-- 聊天频道
		tbCamp			= Battle.NPCCAMP_MAP,				-- 分别设定临时阵营
		nForbidTeam		= 0,								-- 禁止组队换色
		nInBattleState	= 1,								-- 禁止不同阵营组队
		nPkState		= Player.emKPK_STATE_CAMP,			-- PK状态
		nDeathPunish	= 1,								-- 无死亡惩罚
		nOnDeath		= 1,								-- 开启玩家死亡回调
		nOnKillNpc		= 1,								-- 开启玩家杀怪回调
		nOnMovement		= 1,								-- 参加某项活动
		nForbidSwitchFaction = 1,							-- 禁止切换门派
		nForbidStall	= 1,								-- 禁止摆摊
		nDisableOffer	= 1,
		nDisableFriendPlane = 1,							-- 禁止好友界面
		nDisableStallPlane	= 1,							-- 禁止交易界面
	};
	
	if GLOBAL_AGENT then
		self.tbMisCfg.tbLeavePos = nil;
	end
	
	self.tbMisEventList = {
		{1, Battle.TIMER_SIGNUP, "OnTimer_SignupEnd"},
		{2, Battle.TIMER_GAME, "OnTimer_GameEnd"},
	};
	self.nStateJour = 0;
	self.tbNowStateTimer = nil;
end

-- 战场mission开启
function tbMSBase:OnOpen()
	self:_SetState(1, 0);

	self:GoNextState();

	self:CreateTimer(Battle.TIMER_SIGNUP_MSG, self.OnTimer_SignupMsg, self);
	self:CreateTimer(Battle.TIMER_SYNCDATA, self.OnTimer_SyncData, self);
	self.nGameSyncCount			= math.floor((Battle.TIMER_GAME + Battle.TIMER_SIGNUP)/Battle.TIMER_SYNCDATA);
	self.nSignUpMsgCount		= math.floor(Battle.TIMER_SIGNUP/Battle.TIMER_SIGNUP_MSG);
end

-- 关闭mission
function tbMSBase:OnClose()
	self.tbRule:OnClose();

	if (2 ~= self.nState) then	-- 因人数不够等情况引起的未开战就结束
		self:_SetState(3);
	else
		self:_SetState(3, 2);
		
		local nWinCampId	= self.tbRule:GetWinCamp();
		
		local nSongResult	= nil;
		local nJinResult	= nil;
		
		-- 计算胜负结果
		if (nWinCampId == Battle.CAMPID_SONG) then
			nSongResult	= Battle.RESULT_WIN;
			nJinResult	= Battle.RESULT_LOSE;
		elseif (nWinCampId == Battle.CAMPID_JIN) then
			nSongResult	= Battle.RESULT_LOSE;
			nJinResult	= Battle.RESULT_WIN;
		else
			nSongResult	= Battle.RESULT_TIE;
			nJinResult	= Battle.RESULT_TIE;
		end
		
		local szWinMsg	= self.tbRule:GetEndBoardMsg(nWinCampId);
		-- 所有人加积分
		self.tbCampSong:AddCampBouns(Battle.POINT_ADD_MAP[nSongResult]);
		self.tbCampJin:AddCampBouns(Battle.POINT_ADD_MAP[nJinResult]);
		self:UpdateBattleInfo(0);
	
		self.tbCampSong:OnEnd(nSongResult, szWinMsg);
		self.tbCampJin:OnEnd(nJinResult, szWinMsg);	
		
		-- 按名次给奖励
		local tbPlayerReaultList	= self:GetSortPlayerInfoList();
		-- 给好友，或家族，帮会成员发送信息
		self:SendMsgOther(tbPlayerReaultList);
		Battle:AwardPlayerList(tbPlayerReaultList, self.nBattleLevel);
		
		-- 通知GC本场比赛结果
		local tbPlayerList			= self:GetPlayerList();
		local tbPlayList			= {};
		for _, pPlayer in pairs(tbPlayerList) do
			local tbPL = {};
			tbPL.szName 	= pPlayer.szName;
			tbPL.nGongXun	= pPlayer.GetTask(Battle.TSKGID, Battle.TSK_BTPLAYER_TOTALGONG);
			tbPlayList[tbPL.szName] = tbPL;
		end
		--self:_SetStateLog(tbPlayerReaultList);
		self:_SetStateLog2(tbPlayerReaultList);
		self:_WriteStaLog_Mix(tbPlayerReaultList);
		Battle:RoundEnd_GS(self.nBattleId, self.nBattleLevel, nSongResult, tbPlayList);
	end
	
	-- 标记比赛结束
	self.tbCampSong:SetPlayerCount(-1);
	self.tbCampJin:SetPlayerCount(-1);

	assert(Battle.tbMissions[self.nBattleLevel] and self == Battle.tbMissions[self.nBattleLevel][self.nBattleSeq]);
	Battle.tbMissions[self.nBattleLevel][self.nBattleSeq]	= nil;
end

-- 给好友，或家族，帮会成员发送信息
function tbMSBase:SendMsgOther(tbPlayerReaultList)
	local szMsg = "Hảo hữu của bạn [%s] đã dành hạng %d trên chiến trường Tống Kim.";
	for n, tbPlayer in pairs(tbPlayerReaultList) do
		if (n >= 4) then
			break;
		end
		local pPlayer = tbPlayer.pPlayer;
		if (pPlayer) then
			local szFriendMsg = string.format(szMsg, pPlayer.szName, n);
			pPlayer.SendMsgToFriend(szFriendMsg);
			Player:SendMsgToKinOrTong(pPlayer, " đã dành hạng ".. n .." trên chiến trường Tống Kim.", 0);
		end		
	end
end
	
-- 缺少进入后判断是否在战场保存数组中存在原先战场数据
function tbMSBase:OnJoin(nGroupId)
	local tbCamp	= self.tbCamps[nGroupId];
	local pPlayer	= me;
	tbCamp:OnJoin(pPlayer);
	
	if (pPlayer.GetTrainingTeacher()) then	-- 如果当前身份是弟子，在这里添加进入宋金战场的时间记录
		local tbBattleInfo	= Battle:GetPlayerData(pPlayer);
		tbBattleInfo.nEnterBattleTime = GetTime();
	end
	
	pPlayer.TeamApplyLeave();
	if (self.tbPlayerJoin[pPlayer.nId] == nil) then
		self.tbPlayerJoin[pPlayer.nId] = 1;
		--KStatLog.ModifyAdd("RoleDailyEvent", pPlayer.szName, "当天参加宋金次数", 1);
	end
	
	DeRobot:OnMissionJoin(pPlayer);
end

-- 玩家离开战场前要处理的一些事
function tbMSBase:BeforeLeave(nGroupId)
	local pPlayer = me;
	self.tbRule:OnLeave(pPlayer);
end

-- 玩家离开战场
function tbMSBase:OnLeave(nGroupId)
	local pPlayer = me;
	self.tbCamps[nGroupId]:OnLeave(pPlayer);
	self:DeleteHighPoint(pPlayer);
	pPlayer.TeamApplyLeave();
	pPlayer.SetFightState(0);
	DeRobot:OnMissionLeave(pPlayer);
	
	if GLOBAL_AGENT then
		local nGateWay = Transfer:GetTransferGateway();
		local nMapId = Wldh.Battle.tbLeagueName[nGateWay][2];
		if nMapId then
			pPlayer.NewWorld(nMapId, 1648, 3377);
		end
	end
end

-- 死亡时调用的函数
function tbMSBase:OnDeath(pKillerNpc)
	-- 不是在比赛时间内不能加分
	if (2 ~= self.nState) then
		return 0;
	end
	
	local pPlayer = me;
	local nGroupId	= self:GetPlayerGroupId(pPlayer);
	assert(nGroupId > 0);
	self.tbRule:OnLeave(pPlayer);
	local tbDeathBattleInfo		= Battle:GetPlayerData(pPlayer);

	self.tbCamps[nGroupId]:OnPlayerDeath(tbDeathBattleInfo);
	local pKillerPlayer = pKillerNpc.GetPlayer();
	if (pKillerPlayer) then
		local nKillerGroupId	= self:GetPlayerGroupId(pKillerPlayer);
		assert(nKillerGroupId > 0);
		if (nKillerGroupId == nGroupId) then
			return;
		end

		local tbKillerBattleInfo	= Battle:GetPlayerData(pKillerPlayer);
		--pKillerPlayer.AddItem(18, 1, 20403, 1);-- giết người nhận vật phẩm

		local szMsg	= string.format("%s %s <color=yellow>%s<color> đẩy lùi %s %s <color=yellow>%s<color>",
			Battle.NAME_CAMP[nKillerGroupId], Battle.NAME_RANK[tbKillerBattleInfo.nRank], tbKillerBattleInfo.pPlayer.szName,
			Battle.NAME_CAMP[nGroupId], Battle.NAME_RANK[tbDeathBattleInfo.nRank], tbDeathBattleInfo.pPlayer.szName);

		--KDialog.MsgToGlobal(szMsg);	
		tbKillerBattleInfo.pPlayer.Msg(szMsg);	
		self.tbCamps[nKillerGroupId]:OnKillPlayer(tbKillerBattleInfo, tbDeathBattleInfo);
		self:DecreaseDamageDefence(tbKillerBattleInfo.pPlayer);
		self:IncreaseDamageDefence(tbDeathBattleInfo.pPlayer);
		tbDeathBattleInfo.nBeenKilledNum = tbDeathBattleInfo.nBeenKilledNum + 1;
		
		Merchant:TryGiveToken_Songjin_PLayer(pKillerPlayer, pPlayer.nId, tbDeathBattleInfo.nRank);
	end
end

function tbMSBase:IncreaseDamageDefence(pPlayer)
	local nDamDefenceLevel = pPlayer.GetSkillState(Battle.SKILL_DAMAGEDEFENCE_ID);

	if (0 >= nDamDefenceLevel) then
		nDamDefenceLevel	= 1;
	else
		nDamDefenceLevel	= nDamDefenceLevel + 1;
	end
	if (5 >= nDamDefenceLevel) then
		pPlayer.AddSkillState(Battle.SKILL_DAMAGEDEFENCE_ID, nDamDefenceLevel, 1, Battle.SKILL_DAMAGEDEFENCE_TIME, 1);
	end
	nDamDefenceLevel 	= pPlayer.GetSkillState(Battle.SKILL_DAMAGEDEFENCE_ID);
end

function tbMSBase:DecreaseDamageDefence(pPlayer)
	local nDamDefenceLevel = pPlayer.GetSkillState(Battle.SKILL_DAMAGEDEFENCE_ID);

	nDamDefenceLevel = nDamDefenceLevel - 2;
	pPlayer.RemoveSkillState(Battle.SKILL_DAMAGEDEFENCE_ID);
	if (0 < nDamDefenceLevel) then
		pPlayer.AddSkillState(Battle.SKILL_DAMAGEDEFENCE_ID, nDamDefenceLevel, 1, Battle.SKILL_DAMAGEDEFENCE_TIME, 1);
	end
end

-- 杀NPC
function tbMSBase:OnKillNpc()
	local pPlayer	= me;
	local nGroupId	= self:GetPlayerGroupId(pPlayer);
	assert(nGroupId > 0);

	if (not him) then
		return;
	end

	local tbKillerBattleInfo	= Battle:GetPlayerData(pPlayer);

	if (not tbKillerBattleInfo or not tbKillerBattleInfo.pPlayer) then
		return;
	end
	
	self.tbCamps[nGroupId]:OnKillNpc(tbKillerBattleInfo, him);
	
	Merchant:TryGiveToken_Songjin(pPlayer, him.nTemplateId);
end

function tbMSBase:OnProtectFlag(pPlayer)
	local tbBattleInfo = Battle:GetPlayerData(pPlayer);
	local szFirMsg, szSecMsg = tbBattleInfo.tbCamp:OnProtectFlag(tbBattleInfo);
	self.tbRule:ProtectFlagSuccess(tbBattleInfo);
	local tbPlayerList	= self:GetPlayerList();
	for _, pPlayer in pairs(tbPlayerList) do
		Dialog:SendInfoBoardMsg(pPlayer, szFirMsg);
		Dialog:SendInfoBoardMsg(pPlayer, szSecMsg);
	end
	self:BroadcastMsg(szFirMsg);
	self:BroadcastMsg(szSecMsg);
end

-- 检查战场是否打开
function tbMSBase:CheckOpenBattle()
	local nSongNum	= self.tbCamps[Battle.CAMPID_SONG].nPlayerCount;
	local nJinNum	= self.tbCamps[Battle.CAMPID_JIN].nPlayerCount;
	local nLowBound	= Battle.tbBTPLNUM_LOWBOUND[self.tbCamps[Battle.CAMPID_SONG].nBattleLevel];
	if (nSongNum >= nLowBound and nJinNum >= nLowBound) then
		return 1;
	end
	return 0;
end

function tbMSBase:_PRINT(tbTemp)
	for Key, Value in ipairs(tbTemp) do
		print("Key, Value = ", Key, Value);
	end
end

-- 定时器：报名结束，开始战斗
function tbMSBase:OnTimer_SignupEnd()
	if (self.nState == 2) then	-- 已经被GM强行开启了
		Battle:DbgOut("MS:OnTimer_SignupEnd already called by GM!", self.nBattleLevel);
		return 1;
	end
	
	if (0 == self:CheckOpenBattle()) then
		self:BroadcastMsg(0, "Thời gian chuẩn bị đã hết nhưng 2 bên Tống và Kim không tập hợp đủ số lượng quân nên chiến trường tạm hoãn giao chiến.");
		self:Close();
		return 0;
	end
	
	self:_SetState(2, 1);
	
	local szMsg	= string.format("Chiến trường tống kim %s, chính thức bắt đầu.", self.szBattleName);
	self:BroadcastMsg(szMsg);
	
	self.tbCampSong:OnStart();
	self.tbCampJin:OnStart();
	
	self.tbRule:OnStart();
	self:CreateTimer(Battle.TIMER_SYNCNPCHIGH, self.OnTimer_SyncNpcHighPoint, self);
	
	local tbAllPlayer = self:GetPlayerList();
	self.nBattleStartTime = GetTime();
	for _, pPlayer in pairs(tbAllPlayer) do
		local tbBattleInfo = Battle:GetPlayerData(pPlayer);
		if (tbBattleInfo) then
			tbBattleInfo:SetRightBattleInfo(Battle.TIMER_GAME);
			-- 比赛开始时把所有人传到大营
			--tbBattleInfo.tbCamp:TransTo(tbBattleInfo.pPlayer, "OuterCamp1");
			--tbBattleInfo.pPlayer.SetFightState(1);
		end
		--记录参加次数
		local nNum = pPlayer.GetTask(StatLog.StatTaskGroupId , 6) + 1;
		pPlayer.SetTask(StatLog.StatTaskGroupId, 6, nNum);
	end
	self:UpDateBackTime(tbAllPlayer);
	
	--额外事件，活动使用
	local tbMapType = {
		[187]=1,[1638]=1,[189]=1,[263]=1,[1639]=1,[265]=1,[284]=1,[1640]=1,[295]=1, --九曲之战
		[190]=2,[1638]=2,[192]=2,[266]=2,[1639]=2,[268]=2,[285]=2,[1640]=2,[296]=2, --五丈原之战
		[193]=3,[1638]=3,[195]=3,[269]=3,[1639]=3,[271]=3,[286]=3,[1640]=3,[297]=3, --蟠龙谷之战
		[1635]=4,[1636]=4,[1637]=4,[1638]=4,[1639]=4,[1640]=4,[1641]=4,[1642]=4,[1643]=4, --嘉峪关之战
	};
	local nMapType = tonumber(tbMapType[self.nMapId]) or 0;
	SpecialEvent.ExtendEvent:DoExecute("Open_Battle", self.nMapId, self.nBattleLevel, self.nRuleType, self.nSeqNum, nMapType);
	
	return 1;	-- 关闭Timer
end

function tbMSBase:UpDateBackTime(tbAllPlayer)
	local nNowTime = GetTime();
	for _, pPlayer in pairs(tbAllPlayer) do
		Battle:GetPlayerData(pPlayer).nBackTime	= nNowTime - 10; -- -10的目的 就是让玩家刚开始比赛时能够马上离开后营
	end
end

-- 定时器：报名期间广播消息
function tbMSBase:OnTimer_SignupMsg()
	self.nSignUpMsgCount	= self.nSignUpMsgCount - 1;
	if (self.nSignUpMsgCount > 0) then
		local nFrame	= self.nSignUpMsgCount * Battle.TIMER_SIGNUP_MSG;
		local szMsg		= string.format("Chiến trường sắp bắt đầu, thời gian còn: %d giây.", nFrame / Env.GAME_FPS);
		self:BroadcastMsg(szMsg);
	else
		return 0;	-- 关闭Timer
	end
end

-- 定时器：比赛结束，关闭Mission
function tbMSBase:OnTimer_GameEnd()
	Battle:CloseBattle(self.nBattleLevel, self.nBattleKey, self.nBattleSeq);
	
	return 0;	-- 关闭Timer
end

-- 定时器：战斗期间同步客户端信息
function tbMSBase:OnTimer_SyncData()
	self.nGameSyncCount	= self.nGameSyncCount - 1;
	if (self.nGameSyncCount <= 0) then
		return 0;	-- 关闭Timer
	end
	local nRemainTime		= self.nGameSyncCount * Battle.TIMER_SYNCDATA / Env.GAME_FPS;
	if (2 ~= self.nState) then
		nRemainTime = 0;
	end
	self:UpdateBattleInfo(nRemainTime);
end

function tbMSBase:OnTimer_SyncNpcHighPoint()
	for key, tbValue in pairs(self.tbNpcHighPoint) do
		local pNpc	= KNpc.GetById(key);
		if (pNpc) then
			local nPicId	= tbValue.nPicId;
			if (tbValue.nHurtPicId) then
				local nCurLife = pNpc.nCurLife;
				if (tbValue.nLastLife) then
					if (tbValue.nLastLife > nCurLife) then
						nPicId = tbValue.nHurtPicId;
					end
				end
				tbValue.nLastLife = nCurLife;
			end

			local tbPlayerList = self:GetPlayerList();
			local nSubWorld, nPosX, nPosY = pNpc.GetWorldPos();
			for _, pPlayer in pairs(tbPlayerList) do
				pPlayer.SetHighLightPoint(nPosX, nPosY, nPicId, key, pNpc.szName, 3000);
			end
		end
	end
end

function tbMSBase:DeleteHighPoint(pPlayer)
	for key, tbValue in pairs(self.tbNpcHighPoint) do
		local pNpc	= KNpc.GetById(key);
		if (pNpc) then
			local nPicId					= tbValue.nPicId;
			local tbPlayerList 				= self:GetPlayerList();
			local nSubWorld, nPosX, nPosY 	= pNpc.GetWorldPos();
			pPlayer.SetHighLightPoint(nPosX, nPosY, nPicId, key, pNpc.szName, 0);
		end
	end	
end

function tbMSBase:UpdateBattleInfo(nRemainTime)
	local tbPlayerList		= self:GetSortPlayerInfoList();
	
	-- 玩家排名更新
	for i = 1, #tbPlayerList do
		local tbBattleInfo	= tbPlayerList[i];
		local nOldRank 		= tbBattleInfo.nListRank;
		tbBattleInfo.nListRank = i;
		if (nOldRank ~= i and 2 == self.nState) then
			tbBattleInfo:ShowRightBattleInfo();
		end
	end	
	
	local tbPlayerInfoList	= self:GetSyncInfo_List(tbPlayerList);	

	if (tbPlayerInfoList) then
		for _, tbPlayer in pairs(tbPlayerList) do
			local tbPlayerInfo	= self.tbRule:GetSyncInfo_Self(tbPlayer, nRemainTime);
			local tbPlayerListResult = self:FindMyInfoHighLight(tbPlayer.pPlayer, tbPlayerInfoList);
			local tbAllData		= {};
			tbAllData.tbPlayerInfo 		= tbPlayerInfo;
			tbAllData.tbPlayerInfoList	= tbPlayerListResult
			local nUseFullTime = 12;
			if (nRemainTime == 0) then
				nUseFullTime = 60 * 25;
			end
			Dialog:SyncCampaignDate(tbPlayer.pPlayer, "SongJinBattle", tbAllData, nUseFullTime * Env.GAME_FPS);

		end
	end

	for _, tbBattleInfo in pairs(tbPlayerList) do
		local nBackTime				= tbBattleInfo.nBackTime;
		if ((0 == tbBattleInfo.pPlayer.nFightState) and (2 == self.nState)) then
			local nRemainTime	= Battle.TIME_PLAYER_STAY - (GetTime() - nBackTime);
			if (0 >= nRemainTime) then
				tbBattleInfo.pPlayer.Msg("Bạn đã ở quá lâu trong doanh trại, hãy ra ngoài tham chiến.");
				--tbBattleInfo.tbCamp:TransTo(tbBattleInfo.pPlayer, "OuterCamp1");
				--tbBattleInfo.pPlayer.SetFightState(1);
				--tbBattleInfo.pPlayer.KickOut();
			end
		end
		local nLiveTime	= Battle.TIME_PALYER_LIVE - (GetTime() - nBackTime);
		if (0 >= nLiveTime) then
			if (1 == tbBattleInfo.pPlayer.IsDead()) then
				tbBattleInfo.pPlayer.Revive(0);
			end
		end
	end	
end

function tbMSBase:FindMyInfoHighLight(pPlayer, tbPlayerInfoList)
	local tbPlayerListResult = {};
	for key, value in ipairs(tbPlayerInfoList) do
		local tbPlayerHighInfo = {};
		local nColor = 0;		
		if (value[3] == pPlayer.szName) then
			nColor = 1;
		end
		tbPlayerHighInfo = value;
		tbPlayerHighInfo.nC = nColor;
		tbPlayerListResult[key] = tbPlayerHighInfo;
	end
	return tbPlayerListResult;
end

-- 整理排行榜信息
function tbMSBase:GetSyncInfo_List(tbPlayerList)
	local tbPlayerInfoList 	= {};
	local nBattleListNum	= 0;
	if (30 <= #tbPlayerList) then
		nBattleListNum	= 20;
	--elseif (10 <= #tbPlayerList) then
	--	nBattleListNum	= 10;
	else
		nBattleListNum	= #tbPlayerList;
	end
	for i = 1, nBattleListNum do
		local tbPlayerInfo = self.tbRule:GetTopRankInfo(tbPlayerList[i]);
		tbPlayerInfoList[#tbPlayerInfoList + 1] = tbPlayerInfo;
	end

	return tbPlayerInfoList;
end

-- 获得排了序的玩家列表
function tbMSBase:GetSortPlayerInfoList()
	local tbPlayerInfoList	= self:GetPlayerInfoList();
	table.sort(tbPlayerInfoList, self._PlayerCmp);
	return tbPlayerInfoList;
end

function tbMSBase:GetPlayerInfoList(nCampId)
	local tbPlayerList, nCount		= self:GetPlayerList(nCampId);
	local tbPlayerInfoList			= {};

	for i, pPlayer in pairs(tbPlayerList) do
		tbPlayerInfoList[i] = Battle:GetPlayerData(pPlayer);
	end

	return tbPlayerInfoList, nCount;
end

-- 比较函数
tbMSBase._PlayerCmp	= function (tbPlayerA, tbPlayerB)
	return tbPlayerA.nBouns > tbPlayerB.nBouns;
end

-- 设置战场状态
function tbMSBase:_SetState(nState, nOldState)
	if (nOldState) then
		if (self.nState ~= nOldState) then
			local szMsg	= string.format("[ERROR]MS:SetState %d=>%d, but old = %s",
										nOldState, nState, tostring(self.nState));
			error(szMsg, 2);
		end
	end
	Battle:DbgOut("MS:SetState", self.nState, "=>", nState);
	self.nState	= nState;
end

-- 获得全称
function tbMSBase:GetFullName()
	return self.szBattleName .. "-" .. self.tbRule.szLevelName
end

function tbMSBase:_SetStateLog2(tbPlayerList)
	local tbSeqTimeList = {
			[1] = "11:00",
			[2] = "13:00",
			[3] = "15:00",
			[4] = "17:00",
			[5] = "19:00",
			[6] = "21:00",
			[7] = "23:00",
		};
	local tbBattleLevelName = {
			[1] = "Dương Châu",
			[2] = "Phượng Tường",
			[3] = "Tương Dương",
		};
	local tbBtRuleName = {
			[1] = "Giết địch",
			[2] = "Bảo vệ Nguyên Soái",
			[3] = "Hộ kỳ",
		};
		
	
	local szBtSeqKey = GetLocalDate("%Y-%m-%d %H:%M") .. tbBattleLevelName[self.nBattleLevel] .. string.format("%d", self.nBattleSeq) .. "\t";
	local tbBtSeq 	= {};		-- 记录场次log信息

	tbBtSeq.szBtSeqKey 	= szBtSeqKey;
	tbBtSeq.szRuleName	= tbBtRuleName[self.nRuleType];
	tbBtSeq.szMapName	= self.szBattleName;
	tbBtSeq.tbPlayerNums = { 0,0,0,0,0,0 };
	
	local tbFacSeq = {};		-- 记录门派路线场次log信息
	local tbFacAll = {};
	tbFacAll.nPlayerNum = 0;
	tbFacAll.tbPlayerLevelNum = {0,0,0,0,0,0};
	
	
	for i=1,12 do
		tbFacSeq[i] = {};
		for j=1,2 do
			tbFacSeq[i][j] = {};
			tbFacSeq[i][j].szName = Player:GetFactionRouteName(i, j);
			tbFacSeq[i][j].nPlayerNum = 0;
			tbFacSeq[i][j].nKillPlayerNum = 0;
		end
	end
	
	for i = 1,  math.min(#tbPlayerList, 100) do
		local tbPlayer = tbPlayerList[i];
		local nFaction = tbPlayer.pPlayer.nFaction;
		if (nFaction > 0) then
			local nRouteId = tbPlayer.pPlayer.nRouteId;
			if (nRouteId > 0) then
				tbFacSeq[nFaction][nRouteId].nPlayerNum = tbFacSeq[nFaction][nRouteId].nPlayerNum + 1;
				tbFacSeq[nFaction][nRouteId].nKillPlayerNum = tbFacSeq[nFaction][nRouteId].nKillPlayerNum + tbPlayer.nKillPlayerNum;
			end
		end
	end

end

function tbMSBase:_WriteStaLog(szBtSeqKey, tbFacSeq)
	for i=1,12 do
		for j=1,2 do
			local tbSeq = tbFacSeq[i][j];
			local szLog = szBtSeqKey .. tbSeq.szName .. "\t杀人数";
			KStatLog.ModifyField("tifu", szLog, "总量", tbSeq.nKillPlayerNum);
			szLog = szBtSeqKey .. tbSeq.szName .. "\t参加人数"
			KStatLog.ModifyField("tifu", szLog, "总量", tbSeq.nPlayerNum)
		end
	end	
end

function tbMSBase:_WriteStaLog_Mix(tbPlayerList)
	local szLog = self:_GetStateBattleSeqKey() .. "_场次" .. "\t参加人数";
	local nCount = 0;
	if (tbPlayerList) then
		nCount = #tbPlayerList;
	end
	KStatLog.ModifyField("mixstat", szLog, "总量", nCount);
end

function tbMSBase:_GetStateBattleSeqKey()
	local szTime	= os.date("%Y%m%d", GetTime());
	local tbSeqTimeList = {
			[1] = "01",
			[2]	= "11",
			[3] = "13",
			[4] = "15",
			[5] = "17",
			[6] = "19",
			[7] = "21",
			[8] = "23",
		};
	local tbBattleSeq = {
			[1] = "1",
			[2] = "2",
			[3] = "3",
		};
	local tbBattleLevelName = {
			[1] = "Chiến trường Tống Kim sơ cấp",
			[2] = "Chiến trường Tống Kim trung cấp",
			[3] = "Chiến trường Tống Kim cao cấp",
		};
	local tbBtRuleName = {
			[1] = "Giết địch",
			[2] = "Bảo vệ Nguyên Soái",
			[3] = "Hộ kỳ",
		};
	local szBtSeqKey = szTime .. tbSeqTimeList[self.nSeqNum] .. tbBattleLevelName[self.nBattleLevel] .. tbBattleSeq[self.nBattleSeq];
	return szBtSeqKey;
end

-- 比赛结束时记录log
function tbMSBase:_SetStateLog(tbPlayerList)
	local tbSeqTimeList = {
			[1] = "11",
			[2] = "13",
			[3] = "15",
			[4] = "17",
			[5] = "19",
			[6] = "21",
		};
	local tbBattleLevelName = {
			[1] = "Chiến trường Tống Kim sơ cấp",
			[2] = "Chiến trường Tống Kim trung cấp",
			[3] = "Chiến trường Tống Kim cao cấp",
		};
	local tbBtRuleName = {
			[1] = "Giết địch",
			[2] = "Bảo vệ Nguyên Soái",
			[3] = "Hộ kỳ",
		};
	local szBtSeqKey = tbSeqTimeList[self.nSeqNum] .. tbBattleLevelName[self.nBattleLevel];
	local tbBtSeq 	= {};		-- 记录场次log信息

	tbBtSeq.szBtSeqKey 	= szBtSeqKey;
	tbBtSeq.szRuleName	= tbBtRuleName[self.nRuleType];
	tbBtSeq.szMapName	= self.szBattleName;
	tbBtSeq.tbPlayerNums = { 0,0,0,0,0,0 };

	-- 如果没人参加宋金战场，场次需要记
	if (not tbPlayerList) then
		self:_WriteSeqLog(tbBtSeq);
		return;
	end

	local tbFacSeq = {};		-- 记录门派路线场次log信息
	local tbFacAll = {};
	tbFacAll.nPlayerNum = 0;
	tbFacAll.tbPlayerLevelNum = {0,0,0,0,0,0};
	for i=1,12 do
		tbFacSeq[i] = {};
		for j=1,2 do
			tbFacSeq[i][j] = {};
			tbFacSeq[i][j].nPlayerNum = 0;
			tbFacSeq[i][j].tbPlayerLevelNum = {0,0,0,0,0,0};
		end
	end

	for key, tbPlayer in pairs(tbPlayerList) do
		if (tbPlayer) then
			local nBounsLevel = self:_Bouns2Rage(tbPlayer.nBouns);

			-- 宋金战场总的分数等级人数统计
			tbBtSeq.tbPlayerNums[nBounsLevel] = tbBtSeq.tbPlayerNums[nBounsLevel] + 1;			
	
			local szPlayerName = szBtSeqKey .. tbPlayer.pPlayer.szName;
			local nFaction = tbPlayer.pPlayer.nFaction;
			local nRouteId = tbPlayer.pPlayer.nRouteId;
			
			-- 统计门派路线
			tbFacAll.nPlayerNum = tbFacAll.nPlayerNum + 1;
			tbFacAll.tbPlayerLevelNum[nBounsLevel] = tbFacAll.tbPlayerLevelNum[nBounsLevel] + 1;
			if (nFaction > 0 and nRouteId > 0 and tbFacSeq[nFaction][nRouteId]) then
				tbFacSeq[nFaction][nRouteId].nPlayerNum = tbFacSeq[nFaction][nRouteId].nPlayerNum + 1;
				tbFacSeq[nFaction][nRouteId].tbPlayerLevelNum[nBounsLevel] = tbFacSeq[nFaction][nRouteId].tbPlayerLevelNum[nBounsLevel] + 1;
			end
			
			self:_WritePlayerLog(tbPlayer, szPlayerName);
		end
	end
	if (tbPlayerList and #tbPlayerList > 0) then
		self:_WriteFacLog(tbFacAll, tbFacSeq, szBtSeqKey);
	end
	self:_WriteSeqLog(tbBtSeq);
end

-- 记录玩家的log
function tbMSBase:_WritePlayerLog(tbPlayer, szPlayerName)
	local szTbLadder 	= "SongJinLadder";
	local szFac			= Player:GetFactionRouteName(tbPlayer.pPlayer.nFaction, tbPlayer.pPlayer.nRouteId);
	self:_WriteLog(szTbLadder, szPlayerName, "路线", 		szFac);
	self:_WriteLog(szTbLadder, szPlayerName, "杀人数", 		tbPlayer.nKillPlayerNum);
	self:_WriteLog(szTbLadder, szPlayerName, "被杀数", 		tbPlayer.nBeenKilledNum);
	self:_WriteLog(szTbLadder, szPlayerName, "杀NPC数", 	tbPlayer.nKillNpcNum);
	self:_WriteLog(szTbLadder, szPlayerName, "夺旗数", 		tbPlayer.nFlagNum);
	self:_WriteLog(szTbLadder, szPlayerName, "最大连斩数", 	tbPlayer.nMaxSeriesKill);
	self:_WriteLog(szTbLadder, szPlayerName, "积分", 		tbPlayer.nBouns);
end

-- 记录场次log
function tbMSBase:_WriteSeqLog(tbBtSeq)
	local szTbRound 	= "SongJinRound";
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "模式", 				tbBtSeq.szRuleName);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "地图", 				tbBtSeq.szMapName);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "0~1000分人数", 		tbBtSeq.tbPlayerNums[1]);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "1001~3000分人数", 	tbBtSeq.tbPlayerNums[2]);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "3001~5000分人数", 	tbBtSeq.tbPlayerNums[3]);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "5001~7000分人数", 	tbBtSeq.tbPlayerNums[4]);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "7001~10000分人数", 	tbBtSeq.tbPlayerNums[5]);
	self:_WriteLog(szTbRound, tbBtSeq.szBtSeqKey, "10000分以上人数", 	tbBtSeq.tbPlayerNums[6]);
end

-- 记录门派路线log
function tbMSBase:_WriteFacLog(tbFacAll, tbFacSeq, szBtSeqKey)
	local szTbRoute		= "SongJinRoute";
	local szName		= szBtSeqKey.."所有";
	self:_WriteLog(szTbRoute, szName, "总人数", 			tbFacAll.nPlayerNum);
	self:_WriteLog(szTbRoute, szName, "0~1000分人数", 		tbFacAll.tbPlayerLevelNum[1]);
	self:_WriteLog(szTbRoute, szName, "1001~3000分人数", 	tbFacAll.tbPlayerLevelNum[2]);
	self:_WriteLog(szTbRoute, szName, "3001~5000分人数", 	tbFacAll.tbPlayerLevelNum[3]);
	self:_WriteLog(szTbRoute, szName, "5001~7000分人数", 	tbFacAll.tbPlayerLevelNum[4]);
	self:_WriteLog(szTbRoute, szName, "7001~10000分人数", 	tbFacAll.tbPlayerLevelNum[5]);
	self:_WriteLog(szTbRoute, szName, "10000分以上人数", 	tbFacAll.tbPlayerLevelNum[6]);
	for i=1,12 do
		for j=1,2 do
			szName = szBtSeqKey .. Player:GetFactionRouteName(i,j);
			self:_WriteLog(szTbRoute, szName, "总人数", 			tbFacSeq[i][j].nPlayerNum);
			self:_WriteLog(szTbRoute, szName, "0~1000分人数", 		tbFacSeq[i][j].tbPlayerLevelNum[1]);
			self:_WriteLog(szTbRoute, szName, "1001~3000分人数", 	tbFacSeq[i][j].tbPlayerLevelNum[2]);
			self:_WriteLog(szTbRoute, szName, "3001~5000分人数", 	tbFacSeq[i][j].tbPlayerLevelNum[3]);
			self:_WriteLog(szTbRoute, szName, "5001~7000分人数", 	tbFacSeq[i][j].tbPlayerLevelNum[4]);
			self:_WriteLog(szTbRoute, szName, "7001~10000分人数", 	tbFacSeq[i][j].tbPlayerLevelNum[5]);
			self:_WriteLog(szTbRoute, szName, "10000分以上人数", 	tbFacSeq[i][j].tbPlayerLevelNum[6]);	
		end
	end
end

-- 根据积分获取范围等级
function tbMSBase:_Bouns2Rage(nBouns)
	if (0 <= nBouns and nBouns <= 1000) then
		return 1;
	elseif (1001 <= nBouns and nBouns <= 3000) then
		return 2;
	elseif (3001 <= nBouns and nBouns <= 5000) then
		return 3;
	elseif (5001 <= nBouns and nBouns <= 7000) then
		return 4;
	elseif (7001 <= nBouns and nBouns <= 10000) then
		return 5;
	elseif (10000 < nBouns) then
		return 6;
	end
end

function tbMSBase:_WriteLog(szTable, szKey, szField, value)
	--KStatLog.ModifyField(szTable, szKey, szField, value);
end

Battle.tbMissionBase	= tbMSBase;
