-- 文件名　：bank.lua
-- 创建者　：furuilei
-- 创建时间：2008-11-24 14:57:51

if MODULE_GAMECLIENT then
	return;
end

Bank.tbc2sFun = {};

if (GLOBAL_AGENT) then
	Bank.nBankState = 0;
else
	Bank.nBankState = 1;
end;


function Bank:SetBankState(nState)
	self.nBankState = nState;
end

-- 存入金币
function Bank:GoldSave(nValue)
	if (not nValue or 0 == Lib:IsInteger(nValue)) then
		return;
	end
	if (not nValue or nValue <= 0 or nValue > me.nCoin) then
		local szMsg = "B岷 kh么ng mang theo 膽峄?b岷, kh么ng th峄?th峄眂 hi峄噉 thao t谩c v峄玜 ch峄峮.";
		me.Msg(szMsg);
		return;
	end
	local nMoneyOld = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_SUM);
--	me.Msg("当前（存入金币前）钱庄内金币数量为："..nMoneyOld.."个。");
	local bRet = me.RestoreCoin(nValue);
	if (bRet == 0) then
		me.Msg("B芒y gi峄?c谩c tr貌 ch啤i 膽ang ch岷 t峄?t峄? t么i s岷?膽i m峄檛 l岷 n峄痑 膽峄?ti岷縯 ki峄噈 ti峄乶.");
	else
		if (nMoneyOld == 0) then
			me.CallClientScript({"Bank:UpdateInfo", nValue});
		end;
	end
end
Bank.tbc2sFun["GoldSave"] = Bank.GoldSave;

-- 从钱庄取出金币
function Bank:GoldDraw(nGoldDrawCount)
	if (not nGoldDrawCount or 0 == Lib:IsInteger(nGoldDrawCount)) then
		return;
	end
	local nGoldSum = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_SUM);
	if (not nGoldDrawCount or nGoldDrawCount <= 0 or nGoldDrawCount > nGoldSum) then
		local szMsg = "S峄?ti峄乶 b岷 v峄玜 nh岷璸 kh么ng 膽煤ng, xin vui l貌ng nh岷璸 l岷.";
		me.Msg(szMsg);
		return;
	end
	
	local nGoldLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT);
	local nHaveDraw = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTGOLDCOUNT);
	local nDate = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_TAKEOUTGOLD_DATE);
	local nTime = GetTime();
	
	if (nTime - nDate >= self.DAYSECOND) then
		if (nGoldDrawCount > nGoldLimit)then
			me.Msg("B岷 mu峄憂 lo岷 b峄?v脿ng qu谩 m峄ヽ gi峄沬 h岷.");
			return;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TAKEOUTGOLD_DATE, nTime);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTGOLDCOUNT, nGoldDrawCount);
	else
		if ((nGoldDrawCount + nHaveDraw) > nGoldLimit) then
			local nCanDrawCount = nGoldLimit - nHaveDraw;
			if (nCanDrawCount < 0) then
				nCanDrawCount = 0;
			end
			local szMsg = "B岷 lo岷 b峄?trong v貌ng 24 gi峄?v脿ng v瓢峄 qu谩 gi峄沬 h岷, b岷 c贸 th峄?膽瓢a ra l锚n t峄沬<color=yellow>" .. nCanDrawCount .. "<color>金币。";
			me.Msg(szMsg);
			return;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTGOLDCOUNT, nGoldDrawCount + nHaveDraw);
	end
	local bRet = me.TakeOutCoin(nGoldDrawCount);
	if (bRet == 0) then
		me.Msg("Game 膽ang b峄?ch岷 ch岷璵, h茫y nh岷璶 l岷 ti峄乶 c峄 b岷");
	end
end
Bank.tbc2sFun["GoldDraw"] = Bank.GoldDraw;

-- 取消未生效的金币支取上限
function Bank:CancelGoldLimit()
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_EFFICIENT_DAY, 0);
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_UNEFFICIENT_LIMIT, 0);
	me.Msg("B岷 膽茫 h峄 b峄?r煤t ti峄乶");	
	me.CallClientScript({"Bank:UpdateInfo"});
end
Bank.tbc2sFun["CancelGoldLimit"] = Bank.CancelGoldLimit;

-- 修改金币支取上限
function Bank:ModifyGoldLimit(nNewGoldLimit)
	if (not nNewGoldLimit or 0 == Lib:IsInteger(nNewGoldLimit)) then
		return;
	end
	if (not nNewGoldLimit or nNewGoldLimit <= 0 or nNewGoldLimit > Bank.MAX_COIN) then
		me.Msg("S峄?b岷 nh岷璸 v脿o kh么ng 膽煤ng, xin vui l貌ng nh岷璸 l岷.");
		return;
	end
	
	local nOldGoldLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT);
	local szMsg = "";
	local nTime = GetTime();
	
	if nNewGoldLimit <= nOldGoldLimit then
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT, nNewGoldLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_UNEFFICIENT_LIMIT, 0);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_EFFICIENT_DAY, 0);
		szMsg = "S峄?v脿ng m峄沬 c峄 b岷 <color=yellow>" .. nNewGoldLimit .. "<color> 膼茫 c贸 hi峄噓 l峄眂";
	else
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_UNEFFICIENT_LIMIT, nNewGoldLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_EFFICIENT_DAY, nTime + self.EFFECITDAYS * self.DAYSECOND);
		szMsg = "S峄?v脿ng m峄沬 c峄 b岷 <color=yellow>" .. nNewGoldLimit .. "<color> s岷?膽瓢峄 "..self.EFFECITDAYS.."	ngay sau 膽贸.";
	end
	
	me.Msg(szMsg);
	me.CallClientScript({"Bank:UpdateInfo"});
end
Bank.tbc2sFun["ModifyGoldLimit"] = Bank.ModifyGoldLimit;

-- 处理存入银两操作
function Bank:SilverSave(nValue)
	if (not nValue or 0 == Lib:IsInteger(nValue)) then
		return;
	end
	if (not nValue or nValue <= 0 or nValue > me.nCashMoney) then
		me.Msg("S峄?b岷 nh岷璸 v脿o kh么ng 膽煤ng, xin vui l貌ng nh岷璸 l岷.");
		return;
	end
	local nMoney = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_SUM) + nValue;
	if (nMoney > me.GetMaxCarryMoney()) then
		me.Msg("B岷 c贸 m峄ヽ ti峄乶 g峄璱 hi峄噉 t岷 c峄 b岷 膽岷 膽岷縩 s峄?l瓢峄g t峄慽 膽a cho ph茅p 膽峄?l瓢u tr峄?");
		return;
	end
	me.CostMoney(nValue, Player.emKPAY_RESTOREBANK);
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_SUM, nMoney);
	
	local szMsg = "B岷 膽茫 g峄璱 b岷 <color=yellow>" .. nValue .. "<color> .";
	me.Msg(szMsg);
	me.CallClientScript({"Bank:UpdateInfo"});
	
	szMsg = "G峄璱 b岷 v脿o ti峄乶 trang: " .. nValue;
	me.PlayerLog(Log.emKPLAYERLOG_TYPE_COINBANK, szMsg);
end
Bank.tbc2sFun["SilverSave"] = Bank.SilverSave;

-- 取出银两操作
function Bank:SilverDraw(nSilverDrawCount)	
	if (not nSilverDrawCount or 0 == Lib:IsInteger(nSilverDrawCount)) then
		return;
	end
	local nSilverSum = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_SUM);
	if (not nSilverDrawCount or nSilverDrawCount <= 0 or nSilverDrawCount > nSilverSum) then
		me.Msg("S峄?b岷 nh岷璸 v脿o kh么ng 膽煤ng, xin vui l貌ng nh岷璸 l岷.");
		return;
	end	
	
	local nSilverLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT);
	local nHaveDraw = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTSILVERCOUNT);
	local nTime = GetTime();
	local nDate = me.GetTask(self.TASK_GROUP, self.TASK_ID_TAKEOUTSILVER_DATE);
	
	if (me.nCashMoney + nSilverDrawCount > me.GetMaxCarryMoney()) then
		me.Msg("B岷 kh么ng th峄?r煤t qu谩 s峄?ti峄乶 m矛nh 膽茫 g峄璱.");
		return;	
	end
	
	if (nTime - nDate >= self.DAYSECOND) then
		if (nSilverDrawCount > nSilverLimit) then
			me.Msg("B岷 mu峄憂 lo岷 b峄?b岷 gi峄沬 h岷 ?");
			return;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TAKEOUTSILVER_DATE, nTime);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTSILVERCOUNT, nSilverDrawCount);
	else
		if ((nSilverDrawCount + nHaveDraw) > nSilverLimit) then
			local nCanDrawCount = nSilverLimit - nHaveDraw;
			if (nCanDrawCount < 0) then
				nCanDrawCount = 0;
			end
			local szMsg = "B岷 lo岷 b峄?trong v貌ng 24 gi峄?so v峄沬 gi峄沬 h岷 nhi峄乽 h啤n, b岷 c农ng c贸 th峄?lo岷 b峄?l锚n 膽岷縩: <color=yellow>" .. nCanDrawCount .. "<color> b岷."
			me.Msg(szMsg);
			return;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_TODAYTAKEOUTSILVERCOUNT, nHaveDraw + nSilverDrawCount);
	end	
	
	local nMoney = nSilverSum - nSilverDrawCount;	
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_SUM, nMoney);
	me.Earn(nSilverDrawCount, Player.emKEARN_DRAWBANK);
		
	local szMsg = "B岷 膽茫 x贸a th脿nh c么ng v峄沬: <color=yellow>" .. nSilverDrawCount .. "<color> gi峄沬 h岷";
	me.Msg(szMsg);
	me.CallClientScript({"Bank:UpdateInfo"});
	
	szMsg = "R煤t b岷: " .. nSilverDrawCount;
	me.PlayerLog(Log.emKPLAYERLOG_TYPE_COINBANK, szMsg);
end
Bank.tbc2sFun["SilverDraw"] = Bank.SilverDraw;

-- 取消未生效的银两支取上限
function Bank:CancelSilverLimit()
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_EFFICIENT_DAY, 0);
	me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_UNEFFICIENT_LIMIT, 0);
	me.Msg("B岷 膽茫 hu峄?b峄?hi峄噓 l峄眂 c峄 b岷 kh么ng gi峄沬 h岷 thu h峄搃.");	
	me.CallClientScript({"Bank:UpdateInfo"});
end
Bank.tbc2sFun["CancelSilverLimit"] = Bank.CancelSilverLimit;

-- 修改银两支取上限
function Bank:ModifySilverLimit(nNewSilverLimit)
	if (not nNewSilverLimit or 0 == Lib:IsInteger(nNewSilverLimit)) then
		return;
	end
	if (not nNewSilverLimit or nNewSilverLimit <= 0 or nNewSilverLimit > Bank.MAX_MONEY) then
		me.Msg("S峄?b岷 nh岷璸 v脿o kh么ng 膽煤ng, xin vui l貌ng nh岷璸 l岷.");
		return;
	end
	local nOldSilverLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT);
	local szMsg = "";
	local nTime = GetTime();
	
	if nNewSilverLimit <= nOldSilverLimit then
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT, nNewSilverLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_UNEFFICIENT_LIMIT, 0);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_EFFICIENT_DAY, 0);
		szMsg = "B岷 膽茫 s峄璦 gi峄沬 h岷 b岷 m峄沬: <color=yellow>" .. nNewSilverLimit .. "<color> 膽茫 c贸 hi峄噓 l峄眂";
	else
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_UNEFFICIENT_LIMIT, nNewSilverLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_EFFICIENT_DAY, nTime + self.EFFECITDAYS * self.DAYSECOND);
		szMsg = "B岷 膽茫 s峄璦 gi峄沬 h岷 b岷 m峄沬: <color=yellow>" .. nNewSilverLimit .. "<color> s岷?膽瓢峄 "..self.EFFECITDAYS.." 贸 hi峄噓 l峄眂 v脿o ng脿y";
	end
	
	me.Msg(szMsg);
	me.CallClientScript({"Bank:UpdateInfo"});
end
Bank.tbc2sFun["ModifySilverLimit"] = Bank.ModifySilverLimit;

-- 判断并执行金币以及银两的生效操作
function Bank:DoEfficient()
	self:DoGoldEfficient();
	self:DoSilverEfficient();
	me.CallClientScript({"Bank:UpdateInfo"});
end
Bank.tbc2sFun["DoEfficient"] = Bank.DoEfficient;

-- 判断并执行金币的生效操作,如果存在0值,把该值赋值为默认值
function Bank:DoGoldEfficient()
	local nEfficientTime = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_EFFICIENT_DAY);
	local nTime = GetTime();
		
	if (nEfficientTime > 0 and nTime >= nEfficientTime) then
		local nNewGoldLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_UNEFFICIENT_LIMIT);
		if (nNewGoldLimit == 0) then
			return 0;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT, nNewGoldLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_EFFICIENT_DAY, 0);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_UNEFFICIENT_LIMIT, 0);
	end	
	
	local nGoldLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT);
	if (0 == nGoldLimit) then
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_GOLD_LIMIT, Bank.DEFAULTCOINLIMIT);
	end
end

-- 判断并执行银两的生效操作，如果存在0值，把该值赋值为默认值
function Bank:DoSilverEfficient()
	local nEfficientTime = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_EFFICIENT_DAY);
	local nTime = GetTime();
	
	if (nEfficientTime > 0 and nTime >= nEfficientTime) then
		local nNewSilverLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_UNEFFICIENT_LIMIT);
		if (0 == nNewSilverLimit) then
			return 0;
		end
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT, nNewSilverLimit);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_EFFICIENT_DAY, 0);
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_UNEFFICIENT_LIMIT, 0);
	end
	
	local nSilverLimit = me.GetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT);
	if (0 == nSilverLimit) then
		me.SetTask(Bank.TASK_GROUP, Bank.TASK_ID_SILVER_LIMIT, Bank.DEFAULTMONEYLIMIT);
	end
end
