-------------------------------------------------------
-- 文件名　：KhacDiMon.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-06-04 16:14:13
-- 文件描述：fix skill state bug 2009-6-23
-------------------------------------------------------

Require("\\script\\boss\\KhacDiMon\\KhacDiMon_def.lua");

if (not MODULE_GAMESERVER) then
	return 0;
end

local tbKhacDiMon = Boss.KhacDiMon;

-- 计时器触发
function tbKhacDiMon:OnTimer()

	if self.tbPlayerList then	
	
		-- 遍历玩家列表
		for nPlayerId, tbPlayerMap in pairs(self.tbPlayerList) do
	
			local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
			
			-- 找到玩家对象
			if pPlayer then
				
				-- 取经过的时间
				local nTime = GetTime() - pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_START_TIME);
				
				-- 取使用时间
				local nUseTime = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME);
				
				-- 时间不足则踢出
				-- 这里仅仅把玩家踢出地图，后续的操作会由RemovePlayer完成
				if  nUseTime + nTime > self.MAX_DAILY_TIME or self:_CheckState() ~= 1 then

					pPlayer.SetFightState(0);
					pPlayer.NewWorld(self:GetLeaveMapPos());			
					
					local szMsg = "Thời gian được phép hoạt động Khắc Di Môn đã hết, ngày mai hãy đến!";
					Dialog:SendBlackBoardMsg(pPlayer, szMsg);
					pPlayer.Msg(szMsg);
				end
			else
				self.tbPlayerList[nPlayerId] = nil;
			end
		end
	end

	return 5 * Env.GAME_FPS;
end

function tbKhacDiMon:Init()
	
	-- 注册timer， 一直存在
	self.nTimerID = Timer:Register(5 * Env.GAME_FPS, self.OnTimer, self);
end

-- 增加玩家
function tbKhacDiMon:AddPlayer(nPlayerId, nMapLevel)
	
	if self:_CheckState() ~= 1 then
		return;
	end
	
	-- 通过ID找玩家对象
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	
	-- 找不到返回
	if not pPlayer then
		return;
	end
	
	-- 取剩余时间任务变量(秒)
	local nUseTime = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME);
	
	-- 没时间返回
	if nUseTime > self.MAX_DAILY_TIME then
		return;
	end
	
	-- 标记玩家, 地图等级.进入时间
	self.tbPlayerList[nPlayerId] = {};
	self.tbPlayerList[nPlayerId].nMapLevel = nMapLevel;
	self.tbPlayerList[nPlayerId].nStartTime = GetTime();
	
	-- 开启计时
	local nFrame = (self.MAX_DAILY_TIME - nUseTime) * Env.GAME_FPS;
	self:OpenRightUI(pPlayer, nFrame);
	
	-- 设置开始时间
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_START_TIME, self.tbPlayerList[nPlayerId].nStartTime);
	
	-- 设置保护
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_PROTECT, 1);
	pPlayer.SetLogoutRV(1);
end

-- 移除玩家
function tbKhacDiMon:RemovePlayer(nPlayerId)
	
	-- 通过ID找玩家对象
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	
	-- 找不到返回
	if not pPlayer then
		
		-- 容错，再判断下表中有没有数据，有就清掉
		if self.tbPlayerList[nPlayerId] then
			self.tbPlayerList[nPlayerId] = nil;
		end
		
		return;
	end
	
	if self.tbPlayerList[nPlayerId] then
		
		-- 取剩余时间
		local nTime = GetTime() - self.tbPlayerList[nPlayerId].nStartTime;
		local nUseTime = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME);
		
		nUseTime = nUseTime + nTime;
		
		if nUseTime > self.MAX_DAILY_TIME then
			nUseTime = self.MAX_DAILY_TIME;
		end

		-- 设任务变量
		pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME, nUseTime);
		pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_START_TIME, 0);
	end

	-- 移除列表
	self.tbPlayerList[nPlayerId] = nil
	
	-- 关闭界面
	self:CloseRightUI(pPlayer);
	
	-- 设置保护
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_PROTECT, 0);
end	

-- 开启右侧计时界面
function tbKhacDiMon:OpenRightUI(pPlayer, nRemainFrame)
	
	-- 右侧显示
	local szMsg = "<color=green>Thời gian còn lại: <color=white>%s<color>";
	
	-- 开启界面
	Dialog:SetBattleTimer(pPlayer, szMsg, nRemainFrame);
	Dialog:SendBattleMsg(pPlayer, "", 1);
	Dialog:ShowBattleMsg(pPlayer, 1, 0);
end

-- 关闭右侧计时界面
function tbKhacDiMon:CloseRightUI(pPlayer)
	
	-- 关闭界面
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end

-- 默认的回程点
function tbKhacDiMon:GetLeaveMapPos()
	
	local tbNpc = Npc:GetClass("chefu");
	
	for _, tbMapInfo in ipairs(tbNpc.tbCountry) do
		if SubWorldID2Idx(tbMapInfo.nId) >= 0 then
			local nRandomPos = MathRandom(1, #tbMapInfo.tbSect)
			return tbMapInfo.nId, tbMapInfo.tbSect[nRandomPos][1], tbMapInfo.tbSect[nRandomPos][2];
		end
	end
	
	return 5, 1580, 3029;
end

-- 每天重置为2小时	
function tbKhacDiMon:DailyEvent()
		
	if self:_CheckState() ~= 1 then
		return;
	end
	
	-- 如果玩家在地图中
	if self.tbPlayerList[me.nId] then
		
		-- 重置时间变量
		me.SetTask(self.TASK_GROUP_ID, self.TASK_START_TIME, GetTime());
		self.tbPlayerList[me.nId].nStartTime = GetTime();
		
		-- 更新界面
		self:OpenRightUI(me, self.MAX_DAILY_TIME * Env.GAME_FPS);
	end
	
	-- 记录玩家进入过秦始皇陵的天数
	if (me.GetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME) ~= 0) then
		Stats.Activity:AddCount(me, Stats.TASK_COUNT_KhacDiMon, 1);
	end
	
	--me.SetTask(self.TASK_GROUP_ID, self.TASK_USE_TIME, 0);
	
	-- 清空每天使用的炼化声望物品数
	me.SetTask(self.TASK_GROUP_ID, self.TASK_REFINE_ITEM, 0);
end;

-- 使用夜明珠回调
function tbKhacDiMon:OnUseYemingzhu(nPlayerId)
	
	-- 通过ID找玩家对象
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	
	-- 找不到返回
	if not pPlayer then		
		return;
	end
	
	-- 判断列表中有这个人
	if not self.tbPlayerList[nPlayerId] then
		Dialog:SendInfoBoardMsg(pPlayer, "<color=red>Vật phẩm chỉ có thể sử dụng bên trong Khắc Di Môn!<color>");
		return;
	end
	
	-- 取buff等级
	local nSkillLevel = pPlayer.GetSkillState(1413);
	
	-- 当前地图级别
	local nMapLevel = self.tbPlayerList[nPlayerId].nMapLevel;
	
	if nSkillLevel > 0 and nSkillLevel >= nMapLevel - 1 then
		pPlayer.Msg("Bạn đã nhận được hiệu quả Dạ Minh Châu rồi, không thể tiếp tục sử dụng!");
		Dialog:SendInfoBoardMsg(pPlayer, "<color=red>Bạn đã nhận được hiệu quả Dạ Minh Châu rồi, không thể tiếp tục sử dụng!<color>");
		return;
	end
	
	-- 玩家荣誉等级
	local nHonorLevel = pPlayer.GetHonorLevel();
	
	-- 不需要加buff
	if not self.tbYemingzhu[nMapLevel][nHonorLevel] or self.tbYemingzhu[nMapLevel][nHonorLevel] <= 0 then
		pPlayer.Msg("Cơ thể vẫn còn khả năng chống lại khí độc, không cần sử dụng thêm!");
		Dialog:SendInfoBoardMsg(pPlayer, "<color=red>Cơ thể vẫn còn khả năng chống lại khí độc, không cần sử dụng thêm!<color>");
		return;
	end
	
	-- 得到需要的夜明珠数量
	local nNum = tonumber(self.tbYemingzhu[nMapLevel][nHonorLevel]);
	
	-- 判断身上夜明珠数量
	local nFind = pPlayer.GetItemCountInBags(18, 1, 3025, 1);
	
	if nFind < nNum then
		Dialog:Say("Số lượng Dạ Minh Châu trên người không đủ.", {"Ta biết rồi"});
		return;
	end
	
	-- 扣除夜明珠
	local bRet = pPlayer.ConsumeItemInBags(nNum, 18, 1, 3025, 1);
	
	-- todo: check return
	pPlayer.AddSkillState(1413, nMapLevel - 1, 1, 60 * 60 * Env.GAME_FPS, 1, 1);
end

-- 需要数量
function tbKhacDiMon:GetCostNum(pPlayer)
	
	local nPlayerId = pPlayer.nId;
	
	-- 判断列表中有这个人
	if not self.tbPlayerList[nPlayerId] then
		return 0;
	end
	
	-- 当前地图级别
	local nMapLevel = self.tbPlayerList[nPlayerId].nMapLevel;
	
	-- 玩家荣誉等级
	local nHonorLevel = pPlayer.GetHonorLevel();
	
	local nNum = self.tbYemingzhu[nMapLevel][nHonorLevel];
	
	-- 不需要加buff
	if not nNum then
		return 0;
	end
	
	return nNum;
end

-- 加负面buff，恢复正面buff
function tbKhacDiMon:OnMapEffect(nPlayerId, nMapLevel)
	
	-- 通过ID找玩家对象
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	
	-- 找不到返回
	if not pPlayer then		
		return;
	end
	
	-- 当前地图级别
	local nMapLevel = self.tbPlayerList[nPlayerId].nMapLevel;
	
	-- 玩家荣誉等级
	-- temp fix bug
	--local nHonorLevel = pPlayer.GetHonorLevel();
	local nHonorLevel = PlayerHonor:GetPlayerMaxHonorLevel(pPlayer);
	
	-- 不需要加buff
	if not self.tbYemingzhu[nMapLevel][nHonorLevel] or self.tbYemingzhu[nMapLevel][nHonorLevel] <= 0 then
		return;
	end
	
	-- 加负面buff(10小时)
	pPlayer.AddSkillState(1412, nMapLevel - 1, 1, 10 * 60 * 60 * Env.GAME_FPS, 1, 1);
	
	local szMsg = string.format("Bạn hiện tại đang bước vào tầng %d Khắc Di Môn, do khí độc Khắc Di Môn khuếch tán, bạn khó có thể di chuyển, <color=yellow>theo truyền thuyết trong giang hồ sử dụng Dạ Minh Châu có thể chống lại khí độc<color>.", nMapLevel);
	Dialog:SendBlackBoardMsg(pPlayer, "Khí độc Khắc Di Môn khuếch tán, bạn khó có thể di chuyển, theo truyền thuyết trong giang hồ sử dụng <color=yellow>Dạ Minh Châu<color> có thể chống lại khí độc!");
	pPlayer.Msg(szMsg);
	
	-- 恢复正面buff
	local nBuffLevel = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_BUFF_LEVEL);
	local nBuffFrame = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_BUFF_FRAME);
	
	-- 如果有时间，并且不小于当前负buff等级
	if nBuffLevel > 0 and nBuffFrame > 36 and nBuffLevel >= nMapLevel - 1 then
		pPlayer.AddSkillState(1413, nBuffLevel, 1, nBuffFrame, 1, 1);
	
	-- 否则就清了
	else
		if pPlayer.GetSkillState(1413) > 0 then
			pPlayer.RemoveSkillState(1413);
		end
	end
end

-- 清楚所有buff，记录正面buff属性
function tbKhacDiMon:OnMapLeave(nPlayerId, nMapLevel)
	
	-- 通过ID找玩家对象
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	
	-- 找不到返回
	if not pPlayer then		
		return;
	end
	
	-- 出错了#-#
	if not self.tbPlayerList[nPlayerId] then
		Dbg:WriteLog("Boss_Qinling", "跨地图异常", pPlayer.szName, pPlayer.szAccount);
		return;
	end
	
	-- 记录正面buff
	local nSkillLevel, _, nEndFrame = pPlayer.GetSkillState(1413);
	
	if nSkillLevel > 0 and nEndFrame > 36 then
		pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_BUFF_LEVEL, nSkillLevel);
		pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_BUFF_FRAME, nEndFrame);
	else		
		-- 玩家荣誉等级
		local nHonorLevel = PlayerHonor:GetPlayerMaxHonorLevel(pPlayer);
		
		if (pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_BUFF_LEVEL) + 1) >= nMapLevel then
			if self.tbYemingzhu[nMapLevel][nHonorLevel] and self.tbYemingzhu[nMapLevel][nHonorLevel] > 0 then
				pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_BUFF_LEVEL, 0);
				pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_BUFF_FRAME, 0);
			end
		end
	end
	
	-- 正负buff全清了
	if pPlayer.GetSkillState(1412) > 0 then
		pPlayer.RemoveSkillState(1412);
	end
	
	if pPlayer.GetSkillState(1413) > 0 then
		pPlayer.RemoveSkillState(1413);
	end
	
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_SAVEDATE, 0);
end

function tbKhacDiMon:_OnMapEffect(pPlayer)
	if not pPlayer or not self.tbSaveData then
		return;
	end
	local nTask = 0;
	for i = 1, 4 do 
		local nMinute = math.floor(self.tbSaveData[i].nTime / 60);
		local nIndex = self.tbSaveData[i].nIndex - 1;
		local nOffset = (i - 1) * 8;
		nTask = Lib:SetBits(nTask, nIndex, nOffset, nOffset + 1);
		nTask = Lib:SetBits(nTask, nMinute, nOffset + 2, nOffset + 7);	
	end
	pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_SAVEDATE, nTask);
end



-- 返回步骤
--[[function tbKhacDiMon:GetBossStep()
	if self.tbBoss.nStep then
		return self.tbBoss.nStep;
	end
	return 0;
end]]


-- 死亡计数
function tbKhacDiMon:AddDeathCount()
	
	if not self.tbBoss.nDeathCount then
		self.tbBoss.nDeathCount = 0;
	end
	
	self.tbBoss.nDeathCount = self.tbBoss.nDeathCount + 1;
	
	if (self.tbBoss.nStep == 1 and self.tbBoss.nDeathCount == 4) then
		self:RecoverBoss(0.21);
		
	elseif (self.tbBoss.nStep == 2 and self.tbBoss.nDeathCount == 8) then
		self:RecoverBoss(0.51);
		
	elseif (self.tbBoss.nStep == 3 and self.tbBoss.nDeathCount == 12) then
		self:RecoverBoss(0.81);
	end
end

function tbKhacDiMon:ClearInfo()
	self.tbBoss.nTempId = nil;
	self.tbBoss.nStep = 0;
	self.tbBoss.nDeathCount = 0;
	self.tbBoss.tbDamage = {};
	self.tbBoss.nPassId1 = nil;
	self.tbBoss.nPassId2 = nil;
end


-- 死亡事件
function tbKhacDiMon:OnPlayerDeath()
		
	if self.tbPlayerList[me.nId] then
		
		if self.tbPlayerList[me.nId].nMapLevel > 3 then
			me.ReviveImmediately(1);
			me.SetFightState(0);
			me.NewWorld(2105, 1497, 2978);--An toàn			
			
		elseif self.tbPlayerList[me.nId].nMapLevel > 1 then
			me.ReviveImmediately(1);
			me.SetFightState(0);
			me.NewWorld(2105, 1497, 2978);--An toàn		
			
		else
			me.ReviveImmediately(1);
			me.SetFightState(0);
			me.NewWorld(2105, 1497, 2978);--An toàn		
		end
	end
end

-- 区域广播
function tbKhacDiMon:Broadcast(szMsg)

	if self.tbPlayerList then
		for nPlayerId, tbPlayerMap in pairs(self.tbPlayerList) do
			
			-- 找到玩家
			local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
			
			-- 找到玩家对象
			if pPlayer then
				Dialog:SendBlackBoardMsg(pPlayer, szMsg);
				pPlayer.Msg(szMsg);
			end
		end
	end
end


function tbKhacDiMon:_CheckState()
	return self._bOpen;
end

function tbKhacDiMon:OnPlayerLogin()
	
	local tbMap = 
	{
		[2105] = 1,
	};
	if tbMap[me.nMapId] then
		return;
	end
	
	local nProtect = me.GetTask(self.TASK_GROUP_ID, self.TASK_PROTECT);
	if nProtect ~= 1 then
		return;
	end
	
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
	me.nForbidChangePK	= 0;
	me.DisabledStall(0);

	if me.GetSkillState(1412) > 0 then
		me.RemoveSkillState(1412);
	end
	
	if me.GetSkillState(1413) > 0 then
		me.RemoveSkillState(1413);
	end
	
	me.SetTask(self.TASK_GROUP_ID, self.TASK_PROTECT, 0);
end

-- 注册玩家每日事件
PlayerSchemeEvent:RegisterGlobalDailyEvent({Boss.KhacDiMon.DailyEvent, Boss.KhacDiMon});

-- 注册启动事件
ServerEvent:RegisterServerStartFunc(Boss.KhacDiMon.Init, Boss.KhacDiMon);

-- 注册死亡事件
PlayerEvent:RegisterGlobal("OnDeath", Boss.KhacDiMon.OnPlayerDeath, Boss.KhacDiMon);

-- 注册登陆事件
PlayerEvent:RegisterGlobal("OnLogin", Boss.KhacDiMon.OnPlayerLogin, Boss.KhacDiMon);
