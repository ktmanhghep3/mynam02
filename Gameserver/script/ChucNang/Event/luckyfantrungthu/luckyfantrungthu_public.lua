-- 幸运大转盘
-- 2012/12/6 10:57:16
-- zhouchenfei

Require("\\script\\ChucNang\\Event\\luckyfantrungthu\\luckyfantrungthu_def.lua");

SpecialEvent.LuckyfanTrungThu =  SpecialEvent.LuckyfanTrungThu or {};
local LuckyfanTrungThu = SpecialEvent.LuckyfanTrungThu;

function LuckyfanTrungThu:IsGameOpen()
	local nNowDate = tonumber(os.date("%Y%m%d", GetTime()));
	if (nNowDate < self.TIME_BEGIN or nNowDate > self.TIME_END) then
		return 0;
	end
	return 1;
end

function LuckyfanTrungThu:IsCanJoinGame(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	
	if (pPlayer.nLevel < self.MIN_JOIN_LEVEL) then
		return 0;
	end
	return 1;
end

function LuckyfanTrungThu:GetPlayerAwardType(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_FINISH);
end

function LuckyfanTrungThu:GetNumListTask(pPlayer, nTaskId)
	if (not pPlayer or not nTaskId or nTaskId <= 0) then
		return nil;
	end
	local tbCount = {0, 0, 0, 0, 0, 0};
	local nSaveNum = pPlayer.GetTask(self.TASK_GROUP_ID, nTaskId);
	for nIndex = 1, self.LOTTERY_ITEM_NUM do
		local nBegin = (nIndex - 1) * 5;
		local nCount = Lib:LoadBits(nSaveNum, nBegin, nBegin + 4);
		tbCount[nIndex] = nCount;
	end
	return tbCount;
end

-- 获取大罗盘个数
function LuckyfanTrungThu:LoadBigNumList(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	return self:GetNumListTask(pPlayer, self.TASKID_SAVE_BIG_RANDOMNUM);
end

function LuckyfanTrungThu:GetPlayerLuckyLotteryOneResult(pPlayer, nRound)
	if (not pPlayer or not nRound or nRound <= 0) then
		return 0, 0;
	end
	local nBegin = math.fmod( (nRound - 1), 2 ) * 16;
	local nTaskId = self.TASKID_AWARD_RESULT_SYNC_1 + math.floor( (nRound - 1) / 2 );
	local nSaveNum = pPlayer.GetTask(self.TASK_GROUP_ID, nTaskId);
	local nSaveValue = Lib:LoadBits(nSaveNum, nBegin, nBegin + 15);
	local nPos = math.floor(nSaveValue / 100);
	local nItemIndex = math.fmod(nSaveValue, 100);
	return nItemIndex, nPos;
end

function LuckyfanTrungThu:GetLuckyFanOneRoundStep(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_GAME_STEP);
end

function LuckyfanTrungThu:GetPlayerAwardType(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_FINISH);
end


-- 返还大转盘结果
function LuckyfanTrungThu:GetResultCardBigSeq(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	
	local tbBigSeq = {};
	for nIndex=1, self.LOTTERY_MAX_BIG_SEQU do
		local nTaskId = math.floor( (nIndex - 1) / 10 ) + self.TASKID_SQU_LOTTERY_POS_1;
		local nBegin = math.fmod( (nIndex - 1), 10 ) * 3;
		local nSaveNum = pPlayer.GetTask(self.TASK_GROUP_ID, nTaskId);
		local nItemIndex = Lib:LoadBits(nSaveNum, nBegin, nBegin + 2);
		tbBigSeq[nIndex] = nItemIndex;
	end
	return tbBigSeq;	
end

function LuckyfanTrungThu:GetRandomCardBigSeq(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	
	local tbBigSeq = {};
	local tbCount = self:LoadBigNumList(pPlayer);
	if (not tbCount) then
		return nil;
	end
	for nItemIndex, nCount in pairs(tbCount) do
		for i=1, nCount do
			tbBigSeq[#tbBigSeq + 1] = nItemIndex;
		end
	end
	
	Lib:SmashTable(tbBigSeq);
	
	return tbBigSeq;
end

function LuckyfanTrungThu:GetResultCardSmallSeq(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	
	local tbSmallResultCard = {};	
	for i = 1, self.LOTTERY_MAX_ROUND do
		local nItemIndex, nPos = self:GetPlayerLuckyLotteryOneResult(pPlayer, i);
		tbSmallResultCard[i] = {nItemIndex, nPos};
	end
	
	return tbSmallResultCard;
end

function LuckyfanTrungThu:IsDuringOnDoLucky(pPlayer)
	if (not pPlayer) then
		return 1;
	end
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_GAME_STEP);
end

function LuckyfanTrungThu:GetPlayerCurRound(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_LOTTERY_ROUND);
end

function LuckyfanTrungThu:GetPlayerTodayGameCount(pPlayer)
	if (not pPlayer) then
		return nil;
	end
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_DALIY_TOTAL_ROUND);
end

function LuckyfanTrungThu:GetLuckFanVersion(pPlayer)
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_LUCKYFAN_VERSION);
end

