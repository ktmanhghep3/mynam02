-------------------------------------------------------------------
--File: account_gs.lua
--Author: lbh
--Date: 2008-6-27 10:04
--Describe: 账号相关GS端
-------------------------------------------------------------------
Require("\\script\\account\\account_head.lua");
Require("\\script\\player\\playerevent.lua");

Account.tbUnlockFailCount = {} -- 账号解锁失败次数
Account.tbBanUnlockTime = {} -- 账号禁止时间
Account.UNLOCK_FAIL_LIMIT = 5;
Account.UNLOCK_BAN_TIME = 30;	-- 解锁达失败次数冻结多少分钟
Account.TIME_UNLOCKPASSPOD = 60 * 5;	-- 登陆后8分钟不得解锁
Account.c2sCmd = {};

function Account:ProcessClientCmd(nId, tbParam)
	if type(nId) ~= "number" then
		return;
	end
	local fun = self.c2sCmd[nId];
	if not fun then
		return;
	end
	fun(Account, unpack(tbParam));
end

function Account:SetAccPsw(nOldPsw, nNewPsw, nr)
	if not nr then
		nr = 1;
	end
	nNewPsw = math.floor(math.floor(nNewPsw * nr) / 64);
	local bSetOldPsw = 0;
	if (nOldPsw ~= 0) then
		bSetOldPsw = 1;
		nOldPsw = math.floor(nOldPsw * math.floor(nNewPsw / 1048576) / 64) - 1000000;
	end
	nNewPsw = nNewPsw % 1048576;
	local nNameId = KLib.String2Id(tostring(me.GetNpc().dwId));
	local nNewPswOrg = nNewPsw;
	local nOldPswOrg = nOldPsw;
	nNewPsw = 0;
	nOldPsw = 0;
	local nPos = 1;
	for i = 1, 6 do
		nNewPsw = nNewPsw + ((nNewPswOrg - nNameId) % 10 + 10) % 10 * nPos;
		nNewPswOrg = math.floor(nNewPswOrg / 10);
		if bSetOldPsw ~= 0 then
			nOldPsw = nOldPsw + ((nOldPswOrg - nNameId) % 10 + 10) % 10 * nPos;		
			nOldPswOrg = math.floor(nOldPswOrg / 10);
		end
		nNameId = math.floor(nNameId / 10);
		nPos = nPos * 10;
	end
	
	if nNewPsw < 100000 or nNewPsw > 999999 then
		me.Msg("Thi岷縯 l岷璸 kh么ng th脿nh c么ng: m岷璽 kh岷﹗ ph岷 t峄� 6 k媒 t峄�, v脿 kh么ng th峄� b岷痶 膽岷 v峄沬 0");
		return 0;
	end
	
	local szAccount = me.szAccount;
	local nBanTime = self.tbBanUnlockTime[szAccount];
	if nBanTime then
		local nLeftMin = math.ceil(nBanTime / 60 + self.UNLOCK_BAN_TIME -  GetTime() / 60);
		if nLeftMin > 0 then
			me.Msg("<color=yellow>"..nLeftMin.."<color>V脿i ph煤t sau, b岷 h茫y th峄� l岷!");
			return 0;
		end
		self.tbBanUnlockTime[szAccount] = nil;
	end
	
	if me.SetAccountLockCode(nOldPsw, nNewPsw) ~= 1 then
		me.Msg("C岷 h矛nh th岷 b岷: m岷璽 kh岷﹗ ban 膽岷 l脿 kh么ng ch铆nh x谩c!");
		self:PswFail();
		return 0;	
	end
	
	if self.tbUnlockFailCount[szAccount] then
		GlobalExcute{"Account:SetUnLockAccFailCount", szAccount, nil};
	end
	
	if (nOldPsw == 0) then
		me.UnLockAccount(nNewPsw); -- 重新同步锁定状态
		me.Msg("Kh贸a m岷璽 kh岷﹗ T脿i kho岷 膽瓢峄 thi岷縯 l岷璸 th脿nh c么ng, t脿i kho岷 c峄 t岷 c岷� c谩c vai tr貌 trong c谩c tr貌 ch啤i m峄梚 khi b岷 膽膬ng nh岷璸, kh贸a s岷� m峄� t峄� 膽峄檔g!");	
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Kh贸a m岷璽 kh岷﹗ T脿i kho岷 膽瓢峄 thi岷縯 l岷璸 th脿nh c么ng.");
		
	else
		me.Msg("Thay 膽峄昳 m岷璽 kh岷﹗ t脿i kho岷 kh贸a th脿nh c么ng!");
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Thay doi mat khau tai khoan thanh cong.");
	end

	return 1;
end
Account.c2sCmd[Account.SET_PSW] = Account.SetAccPsw;

function Account:LockAcc()
	if me.LockAccount() ~= 1 then		
		me.Msg("Kh贸a t脿i kho岷 th岷 b岷: m岷璽 kh岷﹗ t脿i kho岷 kh贸a kh么ng 膽瓢峄 thi岷縯 l岷璸!");
		return;
	end
	me.Msg("T脿i kho岷 b峄� kh贸a!");
	return 1;
end
Account.c2sCmd[Account.LOCKACC] = Account.LockAcc;

-- 是否有权申请自助解锁
function Account:CanApplyDisableLock()
	if me.GetAccountMaxLevel() > me.nLevel then
		return 0;
	end
	return 1;
end

-- 申请自助解锁
function Account:DisableLock_Apply()
	if me.IsAccountLockOpen() ~= 1 then
		me.Msg("T脿i kho岷 c峄 b岷 kh么ng kh贸a.");
		return 0;
	end
	if self.CanApplyDisableLock() == 1 then
		me.DisableAccountLock_Apply();
		me.Msg("B岷 膽茫 g峄璱 h峄� tr峄� m峄� kh贸a, Kh贸a s岷� 膽瓢峄 m峄� <color=yellow> v脿o 5 ng脿y sau <color>, b岷 c贸 th峄� h峄 m峄� kh贸a b岷 c峄� l煤c n脿o.")
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "申请自助解锁。");
	else
		me.Msg("Vui l貌ng 膽膬ng nh岷璸 v脿o t脿i kho岷 c峄 b岷 ti岷縫 theo ch峄峮 t峄� gi煤p 膽峄� m峄� kh贸a t脿i kho岷.");
	end
	self:SyncJiesuoStateToClient();
end
Account.c2sCmd[Account.JIESUO_APPLY] = Account.DisableLock_Apply;

-- 自助解锁 执行
function Account:DisableLock()
	me.ClearAccountLock();
	Account:DisableLock_Cancel(); -- 清除自助解锁申请
	
	self:SyncJiesuoStateToClient();
	me.CallClientScript({"Player:JiesuoNotify"});
	me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Tro giup mo khoa thanh cong.");
end

-- 取消自助解锁申请
function Account:DisableLock_Cancel()
	me.DisableAccountLock_Cancel();
	self:SyncJiesuoStateToClient();
end

function Account:Jiesuo_Cancel()
	self:DisableLock_Cancel();
	me.Msg("Tr峄� gi煤p m峄� kh贸a 膽茫 膽瓢峄 h峄 b峄�.");
	me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Tro giup mo khoa bi huy bo.");
end
Account.c2sCmd[Account.JIESUO_CANCEL] = Account.Jiesuo_Cancel;

function Account:GetDisableLockApplyTime()
	--me.Msg("上次申请解锁时间 "..os.date("%Y-%m-%d %H:%M:%S", me.GetDisableAccountLockApplyTime()));
	return me.GetDisableAccountLockApplyTime();
end

function Account:IsApplyingDisableLock()
	return me.IsApplyingDisableAccountLock();
end
Account.c2sCmd[Account.IS_APPLYING_JIESUO] = Account.IsApplyingDisableLock;

function Account:UnLockAcc(nPsw, nr)
	if (me.GetPasspodMode() == 1) then
		return 0;	-- 有密保，原账号锁失效
	end
	
	if not nr then
		nr = 1;
	end
	nPsw = math.floor(math.floor(nPsw * nr) / 64) % 1048576;
	if nPsw == 0 then
		return 0;
	end
	local nNameId = KLib.String2Id(tostring(me.GetNpc().dwId));
	local nOldPsw = nPsw;
	nPsw = 0;
	local nPos = 1;
	for i = 1, 6 do
		nPsw = nPsw + ((nOldPsw - nNameId) % 10 + 10) % 10 * nPos;
		nOldPsw = math.floor(nOldPsw / 10);
		nNameId = math.floor(nNameId / 10);
		nPos = nPos * 10;
	end
	local szAccount = me.szAccount;
	local nBanTime = self.tbBanUnlockTime[szAccount];
	if nBanTime then
		local nLeftMin = math.ceil(nBanTime / 60 + self.UNLOCK_BAN_TIME -  GetTime() / 60);
		if nLeftMin > 0 then
			me.Msg("<color=yellow>"..nLeftMin.."<color>V脿i ph煤t sau, b岷 c贸 th峄� th峄� 膽峄� m峄� kh贸a t脿i kho岷 m峄檛 l岷 n峄痑!");
			return 0;
		end
		self.tbBanUnlockTime[szAccount] = nil;
	end

	return me.UnLockAccount(nPsw);
end
Account.c2sCmd[Account.UNLOCK] = Account.UnLockAcc;

function Account:UnLockAcc_ByPasspod(szCode)
	if (me.GetPasspodMode() == 0) then
		return 0;	-- 无密保
	end
	if type(szCode) ~= "string" then
		return 0;
	end

	if me.GetPasspodMode() == self.PASSPODMODE_ZPTOKEN and 
		(GetTime() < Player:GetLastLoginTime(me) + self.TIME_UNLOCKPASSPOD) then
			return 0;	-- 金山令牌 登陆后8分钟内不得解锁
	end
	
	local szAccount = me.szAccount;
	local nBanTime = self.tbBanUnlockTime[szAccount];
	if nBanTime then
		local nLeftMin = math.ceil(nBanTime / 60 + self.UNLOCK_BAN_TIME -  GetTime() / 60);
		if nLeftMin > 0 then
			me.Msg("<color=yellow>"..nLeftMin.."<color>V脿i ph煤t sau, b岷 c贸 th峄� th峄� 膽峄� m峄� kh贸a t脿i kho岷 m峄檛 l岷 n峄痑!");
			return 0;
		end
		self.tbBanUnlockTime[szAccount] = nil;
	end
	me.ClearAccountLock();	-- 清除安全锁
	return me.UnLockPasspodAccount(szCode);
end
Account.c2sCmd[Account.UNLOCK_BYPASSPOD] = Account.UnLockAcc_ByPasspod;

function Account:UnLockAcc_PhoneLock()
	GCExcute{"Account:OnApplyPhoneLock", me.szName};
end
Account.c2sCmd[Account.UNLOCK_PHONELOCK] = Account.UnLockAcc_PhoneLock;

function Account:OnUnlockResult(nResult)
	if (nResult == 1) then
		if self.tbUnlockFailCount[me.szAccount] then
			GlobalExcute{"Account:SetUnLockAccFailCount", me.szAccount, nil};
		end
		me.Msg("M峄� kh贸a th脿nh c么ng");
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Mo khoa thanh cong");
		return;
	end
	
	local szErrorMsg = "";
	if (me.GetPasspodMode() ~= 0) then
		
		szErrorMsg = "M峄� kh贸a kh么ng th脿nh c么ng "..(self.FAILED_RESULT[nResult] or "Vui l貌ng ki峄僲 tra l岷");
		
		me.Msg(szErrorMsg);
		
		--通知客户端界面更新错误提示
		me.CallClientScript({"Ui:ServerCall", "UI_LOCKACCOUNT", "UpdateErrorMsg" , szErrorMsg});	
	
		
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, szErrorMsg);
	else
		
		szErrorMsg = "B岷 膽茫 nh岷璸 sai m岷璽 kh岷﹗, xin vui l貌ng nh岷璸 l岷.";
		
		me.Msg(szErrorMsg);
		
	  --通知客户端界面更新错误提示
		me.CallClientScript({"Ui:ServerCall", "UI_LOCKACCOUNT", "UpdateErrorMsg" , szErrorMsg});	
		
		me.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, szErrorMsg);
	end
	self:PswFail();
end

function Account:OnUnlockPhoneLockResult(szPlayerName, nResult)
	local pPlayer = KPlayer.GetPlayerByName(szPlayerName);
	if pPlayer then
		if (1 == nResult) then
			pPlayer.UnLockAccount(0);
			pPlayer.PlayerLog(Log.emKPLAYERLOG_TYPE_JOINSPORT, "Thiet lap khoa thanh cong");
		end
		pPlayer.CallClientScript{"Ui:ServerCall", "UI_LOCKACCOUNT", "PhoneLockResult" , nResult};
	end
end

function Account:SetUnLockAccFailCount(szAccount, nCount)
	self.tbUnlockFailCount[szAccount] = nCount;
end

function Account:SetUnLockAccBanTime(szAccount, nTime)
	self.tbBanUnlockTime[szAccount] = nTime;
	self.tbUnlockFailCount[szAccount] = 0; -- 次数清0
end

function Account:PswFail()
	local szAccount = me.szAccount;
	local nFailCount = self.tbUnlockFailCount[szAccount];	
	if not nFailCount then
		nFailCount = 0;
	end
	nFailCount = nFailCount + 1;
	
	if nFailCount >= self.UNLOCK_FAIL_LIMIT then
		
		local szErrorMsg = "膼茫 h岷縯 s峄� l岷 th峄� l岷 <color=yellow>"..self.UNLOCK_BAN_TIME..
			"<color>Ph煤t n峄痑 h茫y th峄� l岷 ho岷穋 li锚n h峄� v峄沬 b峄� ph岷璶 ch膬m s贸c kh谩ch h脿ng"
		me.Msg(szErrorMsg);
		
		--通知客户端界面更新错误提示
		me.CallClientScript({"Ui:ServerCall", "UI_LOCKACCOUNT", "UpdateErrorMsg" , szErrorMsg});	
		
		local nTime = GetTime();
		self.tbBanUnlockTime[szAccount] = nTime;
		GlobalExcute{"Account:SetUnLockAccBanTime", szAccount, nTime};	

		return 0;
	end	
	me.Msg("B岷 膽茫 nh岷璸 qu谩 s峄� l岷 qui 膽峄媙h <color=yellow>"..nFailCount..
	"<color>Th峄� hai, n岷縰 li锚n t峄 <color=yellow>"..self.UNLOCK_FAIL_LIMIT.."<color>th岷 b岷, trong<color=yellow>"..
		self.UNLOCK_BAN_TIME.."<color>Ph煤t d瓢峄沬 c霉ng m峄檛 t脿i kho岷 vai tr貌 l脿 b岷 s岷� kh么ng c峄� g岷痭g m峄檛 l岷 n峄痑!");
	
	self.tbUnlockFailCount[szAccount] = nFailCount;
	
	GlobalExcute{"Account:SetUnLockAccFailCount", szAccount, nFailCount};
	return 1;
end

function Account:OnLogin(bExchangeServer)
	if me.GetPasspodMode() == self.PASSPODMODE_ZPMATRIX then
		self:RandomMatrixPos();	-- 随机矩阵卡位置
	end
	if (bExchangeServer == 1) then
		return;
	end	
	if me.IsApplyingDisableAccountLock() == 1 then		
		local dwTimeApply = me.GetDisableAccountLockApplyTime();
		if dwTimeApply ~= 0 then
			if dwTimeApply + 5 * 24 * 60 * 60 <= GetTime() then
				Account:DisableLock();
			else
				me.CallClientScript({"Player:ApplyJiesuoNotify", me.GetDisableAccountLockApplyTime()});				
			end
		else
			me.CallClientScript({"Player:ApplyJiesuoNotify"});
		end
	end
	self:SyncJiesuoStateToClient();
end

function Account:RandomMatrixPos()
	local tbRow = {'A','B','C','D','E','F','G','H'};
	local tbLine = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
	
	local szPos = "";
	for i = 1, 3 do
		local nIndex = MathRandom(#tbRow);
		szPos = szPos..tbRow[nIndex];
		table.remove(tbRow, nIndex);
		nIndex = MathRandom(#tbLine);
		szPos = szPos..tbLine[nIndex];
		table.remove(tbLine, nIndex);
	end
	me.SetMatrixPosition(szPos);
end

function Account:SyncJiesuoStateToClient()
	me.CallClientScript({"Player:SyncJiesuoState_C", self.CanApplyDisableLock()
		, self.IsApplyingDisableLock(), self.GetDisableLockApplyTime()});
end

-- 是否打开推广密保和令牌
function Account:IsOpenPasspodAd()
	if string.sub(GetGatewayName(), 1, 4) == "gate" then
		return 1;
	end
	return 0;
end

PlayerEvent:RegisterGlobal("OnLogin", Account.OnLogin, Account);

