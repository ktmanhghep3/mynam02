-- 幸运大转盘
-- 2012/12/6 10:57:16
-- zhouchenfei

-- 玩家点开始后，就已经决定了是什么
-- 根据玩家的结果，随机出图案，记录到图案表里
-- 当玩家点完5次后

Require("\\script\\ChucNang\\Event\\luckyfantrungthu\\luckyfantrungthu_def.lua");

SpecialEvent.LuckyfanTrungThu =  SpecialEvent.LuckyfanTrungThu or {};
local LuckyfanTrungThu = SpecialEvent.LuckyfanTrungThu;

LuckyfanTrungThu.MAX_AWARD_GETPAIZI_COUNT = 5;

LuckyfanTrungThu.tbRandomTable = {
	[1] = {    0,    0,    0,  500, 1500, 8000},
	[2] = {    0,    0, 1000, 2000, 4000, 3000},
	[3] = {    0, 1000, 2000, 4000, 3000,    0},
	[4] = {    0, 2000, 4500, 3500,    0,    0},
	-- [5] = {    0, 2000, 4500, 3500,    0,    0},
	[5] = {  500, 6500, 3000,    0,    0,    0},
	[6] = { 1000, 9000,    0,    0,    0,    0},
};
--\script\ChucNang\Event\luckyfantrungthu\luckyfantet_gs.lua
LuckyfanTrungThu.tbAwardResultSequence = {
	[1] = 5,
	[2] = 4,
	[3] = 3,
	[4] = 2,
	[5] = 1,
	[6] = 0,
};

LuckyfanTrungThu.tbAwardCoin = {
	[1] = 100,
	[2] = 300,
	[3] = 700,
	[4] = 1300,
	[5] = 2300,
};

LuckyfanTrungThu.tbWaZiRandom = { 2000, 3000, 4000, 5000, 6000, 7500 };

LuckyfanTrungThu.nMaxRandomNum = 10000;

LuckyfanTrungThu.nRandom_BindCoinAward = 2000;

LuckyfanTrungThu.tbBuyRingCoin = {
		[1] = {734, 10, "1个欢聚月饼（10金/个）"},
		[2] = {735, 1000, "1个欢聚月饼·箱（1000金/箱）"},
	};

LuckyfanTrungThu.nTangYuanCountForEveryEvent = 2;

function LuckyfanTrungThu:IsMapOk(nMapId)
	local szMapClass = GetMapType(nMapId) or ""
	if szMapClass == "village" then
		return 1;
	end
	if szMapClass == "city" then
		return 1;
	end
	return 0;
end

function LuckyfanTrungThu:IsCanDoLucky(pPlayer)
	if (not pPlayer) then
		return 0, "Hoạt động không diễn ra!";
	end
	
	if (self:IsGameOpen() ~= 1) then
		return 0, "Hoạt động chưa diễn ra!";
	end

	if (self:IsMapOk(pPlayer.nMapId) ~= 1) then
		return 0, "Chỉ có thể mở ở thành thị và thôn trấn!";
	end

	if (pPlayer.nLevel < self.MIN_JOIN_LEVEL) then
		return 0, string.format("Cấp độ dưới %s không thể tham gia!", self.MIN_JOIN_LEVEL);
	end
	
	local nIsDuringOnDoLucky = self:IsDuringOnDoLucky(pPlayer);
	if (nIsDuringOnDoLucky ~= self.DEF_STEP_GET_CARD) then
		return 0, "Phát sinh lỗi khi tham gia!";
	end
	
	local nRound = self:GetPlayerCurRound(pPlayer);	
	if (nRound >= self.LOTTERY_MAX_ROUND) then
		return 0, "Hãy nhận thưởng trước khi tiếp tục!";
	end
	
	return 1;
end

-- 获取序列结果
function LuckyfanTrungThu:GetRandomResult(nRound)
	local tbRandomList = self.tbRandomTable[nRound];
	if (not tbRandomList) then
		return 0;
	end
	
	local nRandom = MathRandom(self.nMaxRandomNum);
	local nAddRandom = 0;
	for nIndex, nOneRandom in pairs(tbRandomList) do
		nAddRandom = nAddRandom + nOneRandom;
		if (nRandom <= nAddRandom) then
			return nIndex;
		end
	end
	return 0;
end

-- 获取小序列
function LuckyfanTrungThu:GetRandomSmallSequ(nResult)
	if (not nResult) then
		return nil;
	end

	local tbSequ = {};
	local tbSmallCount = {};

	for i=1, self.LOTTERY_MAX_ROUND do
		local nRandom = 1;
		if (i > (self.LOTTERY_MAX_ROUND - nResult + 1)) then
			nRandom = MathRandom(2, self.LOTTERY_ITEM_NUM);
		end
		tbSequ[#tbSequ + 1] = nRandom;
		if (not tbSmallCount[nRandom]) then
			tbSmallCount[nRandom] = 0;
		end
		tbSmallCount[nRandom] = tbSmallCount[nRandom] + 1;
	end
	Lib:SmashTable(tbSequ);
	return tbSequ, tbSmallCount;
end

function LuckyfanTrungThu:GetOneRandomItem(tbBigRandom)
	local nRandom = MathRandom(self.nMaxRandomNum);
	local nRet = 6;
	local nTotalRandom = 0;
	for i, nRand in pairs(tbBigRandom) do
		nTotalRandom = nTotalRandom + nRand;
		if (nRandom <= nTotalRandom) then
			return i;
		end
	end
	return nRet;
end

-- 获取随机序列，这个是点开始后给玩家看的
function LuckyfanTrungThu:GetRandomBigSequ(nResult, nRound)
	local tbSmallSequ, tbBigSeqNumList = self:GetRandomSmallSequ(nResult);
	if (not tbSmallSequ) then
		return nil;
	end
	
	local tbBigRandom = {};
	tbBigRandom[1] = self.tbWaZiRandom[nRound] or 0;
	for i = 2, self.LOTTERY_ITEM_NUM do
		tbBigRandom[i] = math.floor( (10000 - tbBigRandom[1]) / 5 );
	end
	
	for i = 1, self.LOTTERY_MAX_BIG_SEQU - self.LOTTERY_MAX_ROUND do
		local nRandom = self:GetOneRandomItem(tbBigRandom);
		if (not tbBigSeqNumList[nRandom]) then
			tbBigSeqNumList[nRandom] = 0;
		end
		tbBigSeqNumList[nRandom] = tbBigSeqNumList[nRandom] + 1;
	end
	return tbSmallSequ, tbBigSeqNumList;
end

-- 获取结果序列，这个是结果序列
function LuckyfanTrungThu:GetResultBigSequ(tbSmallResult, tbBigSeqNumList)
	if (not tbSmallResult or not tbBigSeqNumList) then
		return nil;
	end
	
	local tbRandomResultSeq = {};
	local tbRandomBigSequ = {};
	
	for _, tbInfo in pairs(tbSmallResult) do
		tbBigSeqNumList[tbInfo[1]] = tbBigSeqNumList[tbInfo[1]] - 1;
	end
	
	for nRandomIndex, nCount in pairs(tbBigSeqNumList) do
		if (nCount > 0) then
			for i = 1, nCount do
				tbRandomBigSequ[#tbRandomBigSequ + 1] = nRandomIndex;
			end
		end
	end
		
	Lib:SmashTable(tbRandomBigSequ);
	
	for _, tbInfo in pairs(tbSmallResult) do
		tbRandomResultSeq[tbInfo[2]] = tbInfo[1];
	end
	
	local nLen = #tbRandomBigSequ;
	local nIndex = 1;
	local nSquIndex = 1;
	local nErrorCount = 0;
	
	while (1) do
		if (nIndex > self.LOTTERY_MAX_BIG_SEQU or nSquIndex > nLen) then
			break;
		end
		
		if (nErrorCount > 1000) then
			return nil;
		end
		
		if (tbRandomBigSequ[nSquIndex] > 0) then
			if (not tbRandomResultSeq[nIndex]) then
				tbRandomResultSeq[nIndex] = tbRandomBigSequ[nSquIndex];
				nSquIndex = nSquIndex + 1;
			end
			nIndex = nIndex + 1;
		else
			nSquIndex = nSquIndex + 1;
		end
		nErrorCount = nErrorCount + 1;
	end
	return tbRandomResultSeq;
end

function LuckyfanTrungThu:SetNumListTask(pPlayer, tbCount, nTaskId)
	if (not pPlayer or not tbCount or not nTaskId or nTaskId <= 0) then
		return 0;
	end
	local nSaveNum = 0;
	for nIndex, nCount in pairs(tbCount) do
		local nBegin = (nIndex - 1) * 5
		nSaveNum = Lib:SetBits(nSaveNum, nCount, nBegin, nBegin + 4);
	end
	pPlayer.SetTask(self.TASK_GROUP_ID, nTaskId, nSaveNum);
	return 1;
end

function LuckyfanTrungThu:SaveBigNumList(pPlayer, tbBigNumList)
	if (not pPlayer) then
		return 0;
	end
	return self:SetNumListTask(pPlayer, tbBigNumList, self.TASKID_SAVE_BIG_RANDOMNUM);
end

function LuckyfanTrungThu:SetOneTempItemIndex(pPlayer, nPos, nItemIndex)
	if (not pPlayer or not nItemIndex or not nPos) then
		return 0;
	end
	local nBegin = (nPos - 1) * 5
	local nSaveNum = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_RANDOM_RESULT);
	nSaveNum = Lib:SetBits(nSaveNum, nItemIndex, nBegin, nBegin + 4);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_RANDOM_RESULT, nSaveNum);
	return 1;
end

function LuckyfanTrungThu:GetOneTempItemIndex(pPlayer, nPos)
	if (not pPlayer or not nPos) then
		return nil;
	end
	local nBegin = (nPos - 1) * 5
	local nSaveNum = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_RANDOM_RESULT);
	local nItemIndex = Lib:LoadBits(nSaveNum, nBegin, nBegin + 4);
	return nItemIndex;
end

function LuckyfanTrungThu:SetPlayerLuckyLotteryOneResult(pPlayer, nRound, nPos, nRandomItem)
	if (not pPlayer or not nPos or not nRandomItem or not nRound or nRound <= 0) then
		return 0;
	end
	local nBegin = math.fmod( (nRound - 1), 2 ) * 16;
	local nTaskId = self.TASKID_AWARD_RESULT_SYNC_1 + math.floor( (nRound - 1) / 2 );
	local nSaveNum = me.GetTask(self.TASK_GROUP_ID, nTaskId);
	local nSaveValue = nPos * 100 + nRandomItem;
	nSaveNum = Lib:SetBits(nSaveNum, nSaveValue, nBegin, nBegin + 15);
	me.SetTask(self.TASK_GROUP_ID, nTaskId, nSaveNum);
	return 1;
end

function LuckyfanTrungThu:SetPlayerCurRound(pPlayer, nRound)
	if (not pPlayer) then
		return nil;
	end
	
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_LOTTERY_ROUND, nRound);
	return 1;
end

function LuckyfanTrungThu:SaveBigSeqResult(pPlayer, tbBigResult)
	if (not pPlayer or not tbBigResult or #tbBigResult <= 0) then
		return 0;
	end
	
	local tbTaskToValue = {};
	for i= self.TASKID_SQU_LOTTERY_POS_1, self.TASKID_SQU_LOTTERY_POS_3 do
		tbTaskToValue[i] = 0;
	end
	
	for nIndex, nItemIndex in pairs(tbBigResult) do
		local nTaskId = math.floor( (nIndex - 1) / 10 ) + self.TASKID_SQU_LOTTERY_POS_1;
		local nBegin = math.fmod( (nIndex - 1), 10 ) * 3;
		local nSaveNum = tbTaskToValue[nTaskId];
		nSaveNum = Lib:SetBits(nSaveNum, nItemIndex, nBegin, nBegin + 2);
		tbTaskToValue[nTaskId] = nSaveNum;
	end
	
	for nTaskId, nValue in pairs(tbTaskToValue) do
		pPlayer.SetTask(self.TASK_GROUP_ID, nTaskId, nValue);
	end
	return 1;
end

function LuckyfanTrungThu:SetPlayerAwardType(pPlayer, nType)
	if (not pPlayer) then
		return 0;
	end
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_FINISH, nType);
	return 1;
end

function LuckyfanTrungThu:FinishOneLottery(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	local tbSmallResult = self:GetResultCardSmallSeq(pPlayer);
	local tbBigNumList = self:LoadBigNumList(pPlayer);
	local tbBigResult = self:GetResultBigSequ(tbSmallResult, tbBigNumList);
	self:SaveBigSeqResult(pPlayer, tbBigResult);
	local nType = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_TYPE);
	self:SetPlayerAwardType(pPlayer, nType);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_GAME_STEP, self.DEF_STEP_NOGAME);
end


function LuckyfanTrungThu:SetPlayerTodayGameCount(pPlayer, nCount)
	if (not pPlayer) then
		return 0;
	end
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_DALIY_TOTAL_ROUND, nCount);
end

function LuckyfanTrungThu:IsCanStartGame(pPlayer)
	if (not pPlayer) then
		return 0, "Hoạt động không diễn ra!";
	end

	if (self:IsGameOpen() ~= 1) then
		return 0, "Hoạt động chưa diễn ra!";
	end

	if (pPlayer.nLevel < self.MIN_JOIN_LEVEL) then
		return 0, string.format("Cấp độ dưới %s không thể tham gia!", self.MIN_JOIN_LEVEL);
	end
	
	if (pPlayer.nFaction <= 0) then
		return 0, "Chưa gia nhập môn phái không thể tham gia!";
	end
	
	if (self:IsMapOk(pPlayer.nMapId) ~= 1) then
		return 0, "Chỉ có thể mở ở thành thị và thôn trấn!";
	end
	
	local nIsDuringOnDoLucky = self:IsDuringOnDoLucky(pPlayer);
	if (nIsDuringOnDoLucky ~= self.DEF_STEP_NOGAME) then
		return 0, "Hiện đang trong trò chơi không thể bắt đầu lượt mới!";
	end
	
	local nAwardType = self:GetPlayerAwardType(pPlayer);
	if (nAwardType > 0) then
		return 0, "Ngươi không có phần thưởng hãy tham gia trước!";
	end
	
	local nCount = self:GetPlayerTodayGameCount(pPlayer);
	if (nCount >= self.LOTTERY_MAX_DALIY_COUNT) then
		return 0, "Hôm nay đã hết lượt tham gia, ngày mai hãy quay lại!";
	end
	return 1;
end

function LuckyfanTrungThu:ResetGameTaskValue(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_RANDOM_RESULT, 0);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_TYPE, 0);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_FINISH, 0);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_SAVE_BIG_RANDOMNUM, 0);
	for i=self.TASKID_SQU_LOTTERY_POS_1, self.TASKID_SQU_LOTTERY_POS_3 do
		pPlayer.SetTask(self.TASK_GROUP_ID, i, 0);
	end
	
	for i=self.TASKID_AWARD_RESULT_SYNC_1, self.TASKID_AWARD_RESULT_SYNC_3 do
		pPlayer.SetTask(self.TASK_GROUP_ID, i, 0);
	end
end

function LuckyfanTrungThu:OnSureStartGame(nPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if (not pPlayer) then
		return;
	end
	local nFlag, szMsg = self:IsCanStartGame(pPlayer);
	if (0 == nFlag) then
		pPlayer.Msg(szMsg);
		return 0;
	end
	
	local nDaliyRound = self:GetPlayerTodayGameCount(pPlayer);
	-- local nNeedItemCount = self.tbRoundNeedItemNum[nDaliyRound + 1];
	local nNeedItemCount = self.tbRoundNeedItemNum_NEW;

	local nHaveCount = pPlayer.GetItemCountInBags(unpack(self.tbGameJoinItem));
	if (nHaveCount < nNeedItemCount) then
		local szMsg = string.format("Cần %s <color=green>Chuông Vàng Trung Thu<color> mới có thể bắt đầu", nNeedItemCount);
		Dialog:SendBlackBoardMsg(pPlayer, szMsg);
		pPlayer.Msg(szMsg);
		return 0;
	end
	
	local nRet = pPlayer.ConsumeItemInBags2(nNeedItemCount, unpack(self.tbGameJoinItem));	
	if nRet ~= 0 then
		Dbg:WriteLog("LuckyfanTrungThu  không trừ được vật phẩm tham gia!", pPlayer.szName);
		return;
	end
	
	self:ResetGameTaskValue(pPlayer);
	local nNewDaliyRound = nDaliyRound;
	if nNewDaliyRound >= 6 then
		nNewDaliyRound = MathRandom(1,5);
		-- print("nNewDaliyRound = "..nNewDaliyRound.."");
	end
	--script\ChucNang\Event\luckyfantrungthu\luckyfantet_gs.lua
	-- print("nDaliyRound = "..nDaliyRound.."");
	local nResultType = self:GetRandomResult(nNewDaliyRound + 1);

	if (nResultType <= 0) then
		Dbg:WriteLog("LuckyfanTrungThu kết quả ngẫu nhiên không thành công!", pPlayer.szName);
		assert(nResultType > 0);
		return;
	end
	
	if (nResultType == 1) then
		local nGetReputeCount = self:GetPlayerPaiZiCount(pPlayer);
		if (nGetReputeCount >= self.MAX_AWARD_GETPAIZI_COUNT) then
			nResultType = 2;
		end
		self:SetPlayerPaiZiCount(pPlayer, nGetReputeCount + 1);
	end
	
	self:SetPlayerTodayGameCount(pPlayer, nDaliyRound + 1);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_GAME_STEP, self.DEF_STEP_GET_CARD); -- 开启游戏
	self:SetPlayerCurRound(pPlayer, 0); -- 将一局轮数设置0	
	
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_AWARD_TYPE, nResultType);
	
	local tbSmallSeq, tbBigNumList = self:GetRandomBigSequ(nResultType, nDaliyRound + 1);
	
	-- 保存随机结果
	for i, nItemIndex in pairs(tbSmallSeq) do
		self:SetOneTempItemIndex(pPlayer, i, nItemIndex)
	end
	
	-- 保存最后大盘随机结果
	self:SaveBigNumList(pPlayer, tbBigNumList);
	
	local tbRandomBigSequ = {};
	for nRandomIndex, nCount in pairs(tbBigNumList) do
		if (nCount > 0) then
			for i = 1, nCount do
				tbRandomBigSequ[#tbRandomBigSequ + 1] = nRandomIndex;
			end
		end
	end
		
	Lib:SmashTable(tbRandomBigSequ);
	self:SaveBigSeqResult(pPlayer, tbRandomBigSequ);
	me.CallClientScript({"Ui:ServerCall", "UI_LUCKYFANTRUNGTHU", "StartGame"});
end



--------------------------------------------------------
-- 开始游戏入口，包括扣欢聚月饼开始
--------------------------------------------------------
function LuckyfanTrungThu:ApplyStartLuckyGame()
	local nFlag, szMsg = self:IsCanStartGame(me);
	if (0 == nFlag) then
		Dialog:Say(szMsg);
		return 0;
	end
	
	local nDaliyRound = self:GetPlayerTodayGameCount(me);
	-- local nNeedItemCount = self.tbRoundNeedItemNum[nDaliyRound + 1];
	local nNeedItemCount = self.tbRoundNeedItemNum_NEW;

	local nHaveCount = me.GetItemCountInBags(unpack(self.tbGameJoinItem));
	if (nHaveCount < nNeedItemCount) then
		local szMsg = string.format("<color=yellow>Vòng<color> này cần <color=green>%s Chuông Vàng Trung Thu<color> hãy\nchuẩn bị đủ rồi thử lại.", nNeedItemCount);
		Dialog:Say(szMsg, {
	--			{"购买欢聚月饼（10金币/个）", self.BuyMaxRing, self, 1},
	--			{"购买欢聚月饼·箱（1000金币/箱）", self.BuyMaxRing, self, 2},
				{"Ta biết rồi"},
			});
		return 0;
	end	
	
	local szMsg = string.format("<color=yellow>Vòng %s<color> cần <color=green>%s Chuông Vàng Trung Thu<color> để bắt\nđầu ngươi có chắc chắn muốn bắt đầu?", nDaliyRound + 1, nNeedItemCount);
	Dialog:Say(szMsg,{
		{"Ta chắc chắn", self.OnSureStartGame, self, me.nId},
		{"Để ta suy nghĩ lại"},
	});
end


--------------------------------------------------------
-- 点击一次卡牌，获取一个结果
--------------------------------------------------------
function LuckyfanTrungThu:ApplyGetOneLuckyItem(nPos)
	local nIsCanDoLucky, szMsg = self:IsCanDoLucky(me);
	if (0 == nIsCanDoLucky) then
		Dialog:Say(szMsg);
		return 0;
	end
	
	local nRound = self:GetPlayerCurRound(me) + 1;
	local nRandomItem = self:GetOneTempItemIndex(me, nRound);
	if (not nRandomItem or nRandomItem <= 0) then
		print("LuckyfanTrungThu", "ApplyGetOneLuckyItem random fail ", me.szName, nRound);
		assert(false);
		return 0;
	end
	self:SetPlayerLuckyLotteryOneResult(me, nRound, nPos, nRandomItem);
	
	self:SetPlayerCurRound(me, nRound);
	if (nRound >= self.LOTTERY_MAX_ROUND) then
		self:FinishOneLottery(me);
	end
	
	me.CallClientScript({"Ui:ServerCall", "UI_LUCKYFANTRUNGTHU", "UpdatePanel"});
	return 1;
end

--------------------------------------------------------
-- 点击一次卡牌，获取一个结果
--------------------------------------------------------
function LuckyfanTrungThu:ApplyGetLuckyGameAward()
	local nIsCanGetAward, szMsg = self:IsCanGetAward(me);
	if (nIsCanGetAward == 0) then
		Dialog:Say(szMsg);
		return 0;
	end

	local nAwardType = self:GetPlayerAwardType(me);
	local tbAward = self.tbAwardItemList[nAwardType];

	if (not tbAward) then
		Dialog:Say("Thưởng bất thường!");
		return 0;
	end
	
	self:SetPlayerAwardType(me, 0);

	local pItem = me.AddItem(unpack(tbAward));
	if (not pItem) then
		return 0;
	end
	pItem.Bind(1);
	pItem.SetTimeOut(0, GetTime() + 30 * 3600 * 24 );
	pItem.Sync();
	Dialog:SendBlackBoardMsg(me, "<color=yellow>Bạn nhận được 1 "..pItem.szName.."<color>");
	local nRound = self:GetPlayerTodayGameCount(me);
	if nRound >= self.LOTTERY_MAX_DALIY_COUNT then
		self:AddSpeTile();
	end
	pItem.SetGenInfo(1, nRound);
	Dbg:WriteLog("LuckyfanTrungThu", "ApplyGetLuckyGameAward",  me.szName, "AddItem", pItem.szName);
	me.CallClientScript({"Ui:ServerCall", "UI_LUCKYFANTRUNGTHU", "UpdatePanel"});
	--StatLog:WriteStatLog("stat_info", "flip_card", "midautumn_2013", me.nId, string.format("%s,%s", nRound, nAwardType));
	return 1;
end

function LuckyfanTrungThu:AddSpeTile()
	local nTime = Lib:GetDate2Time(GetLocalDate("%Y%m%d")) + 3600*24 - 1;
	me.AddTitleByTime(6, 109, 1, 0, nTime);
	--me.AddSpeTitle("千里共婵娟", nTime, "pink");
end

function LuckyfanTrungThu:IsCanGetAward(pPlayer)
	if (not pPlayer) then
		return 0, "Hoạt động không diễn ra!";
	end

	if (self:IsGameOpen() ~= 1) then
		return 0, "Hoạt động chưa diễn ra!";
	end

	local nAwardFlag = self:GetPlayerAwardType(pPlayer);
	if (nAwardFlag <= 0) then
		return 0, "Ngươi không có phần thưởng để nhận!";
	end
	
	if (self:IsMapOk(pPlayer.nMapId) ~= 1) then
		return 0, "Chỉ có thể mở ở thành thị và thôn trấn!";
	end
	
	if (pPlayer.CountFreeBagCell() < 1) then
		return 0, "Hành trang cần 1 ô trống!";
	end
	
	return 1;
end

function LuckyfanTrungThu:ApplyLuckyFan_ActiveGameStep()
	local nCurStep = self:GetLuckyFanOneRoundStep(me);
	if (self.DEF_STEP_NOGAME == nCurStep) then
		local nAwardFinish = self:GetPlayerAwardType(me);
		if (nAwardFinish > 0) then
			self:ApplyGetLuckyGameAward();
			return 0;
		end
		self:ApplyStartLuckyGame();
--	elseif (self.DEF_STEP_SHOW_BEGIN_CARD == nCurStep) then
--		me.SetTask(self.TASK_GROUP_ID, self.TASKID_GAME_STEP, self.DEF_STEP_GET_CARD);
--		me.CallClientScript({"Ui:ServerCall", "UI_LUCKYFANTRUNGTHU", "UpdatePanel"});
	end
end

function LuckyfanTrungThu:ApplyLuckyFan_GetOneResultCard(nPos)
	self:ApplyGetOneLuckyItem(nPos);
end

function LuckyfanTrungThu:SetLuckFanVersion(pPlayer, nValue)
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_LUCKYFAN_VERSION, nValue);
end


function LuckyfanTrungThu:OnDaliyEvent_PlayerLuckyFanEvent()
	self:SetPlayerTodayGameCount(me, 0);
	me.SetTask(self.TASK_GROUP_ID, self.TASKID_TODAY_GET_ITEM_EVENT, 0);
end

function LuckyfanTrungThu:UpdateVersionEvent()
	local nVersion = self:GetLuckFanVersion(me);
	if (nVersion >= self.LUCKYFAN_VERSION) then
		return 0;
	end
	self:SetLuckFanVersion(me, self.LUCKYFAN_VERSION);
	for i=self.TASKID_RANDOM_RESULT, self.MAX_COUNT_TASK do
		me.SetTask(self.TASK_GROUP_ID, i, 0);
	end
end

function LuckyfanTrungThu:AddTangYuan(pPlayer, nType)
	-- 不在活动期间
	if (not pPlayer) then
		return 1;
	end
	
	if (self:IsGameOpen() ~= 1) then
		return 1;
	end
	
	if (pPlayer.CountFreeBagCell() < self.nTangYuanCountForEveryEvent) then
		return 1;
	end
	
	local nGetFlag = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_TODAY_GET_ITEM_EVENT);
	local nIsTodayGet = KLib.GetBit(nGetFlag, nType);
	if (0 ~= nIsTodayGet) then
		return 1;
	end
	
	nGetFlag = KLib.SetBit(nGetFlag, nType, 1);
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_TODAY_GET_ITEM_EVENT, nGetFlag);

	local nNowTime = GetTime();
	for i=1, self.nTangYuanCountForEveryEvent do
		local tbAwardItem = self.tbGameJoinItem;
		pPlayer.AddItemEx(tbAwardItem[1], tbAwardItem[2], tbAwardItem[3], tbAwardItem[4], {bForceBind = 1}, nil, nNowTime + 24*3600 - 1);
	end
	
	return 0;	
end

function LuckyfanTrungThu:SetPlayerPaiZiCount(pPlayer, nCount)
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASKID_GET_AWARD, nCount);
end

function LuckyfanTrungThu:GetPlayerPaiZiCount(pPlayer)
	return pPlayer.GetTask(self.TASK_GROUP_ID, self.TASKID_GET_AWARD);
end


function LuckyfanTrungThu:OnLogin_UpdateLuckyFan()
	self:UpdateVersionEvent();
end

PlayerEvent:RegisterGlobal("OnLogin", LuckyfanTrungThu.OnLogin_UpdateLuckyFan, LuckyfanTrungThu);
PlayerSchemeEvent:RegisterGlobalDailyEvent({LuckyfanTrungThu.OnDaliyEvent_PlayerLuckyFanEvent, LuckyfanTrungThu});
