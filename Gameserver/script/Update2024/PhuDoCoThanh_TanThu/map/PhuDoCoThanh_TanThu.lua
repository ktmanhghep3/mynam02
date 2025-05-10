local tbMap = Map:GetClass(2109);

-- 定义玩家进入事件
function tbMap:OnEnter(szParam)
	
	-- 判断剩余时间
	local nUseTime = me.GetTask(Boss.PhuDoCoThanh_TanThu.TASK_GROUP_ID, Boss.PhuDoCoThanh_TanThu.TASK_USE_TIME);
	
	-- 剩余时间为0
	if nUseTime >= Boss.PhuDoCoThanh_TanThu.MAX_DAILY_TIME then
		me.NewWorld(Boss.PhuDoCoThanh_TanThu:GetLeaveMapPos());
		me.SetFightState(0);
		return;
	end
	
	-- 战斗保护
	Player:AddProtectedState(me, 6);
	
	-- 加入当前地图的列表
	Boss.PhuDoCoThanh_TanThu:AddPlayer(me.nId, 1);
	
	-- 地图对玩家影响
	Boss.PhuDoCoThanh_TanThu:OnMapEffect(me.nId, 1);
	
	self:_SetState(me);
end;

function tbMap:_SetState(pPlayer)
	--pPlayer.nPkModel = Player.emKPK_STATE_PRACTISE; -- ko pk emKPK_STATE_PRACTISE
	--pPlayer.nForbidChangePK	= 1;
	--pPlayer.nInBattleState	= 1;	
	--pPlayer.SetNoDeathPunish(1);	
	pPlayer.DisabledStall(1);
	pPlayer.SetDisableTeam(1);
	pPlayer.SetDisableStall(1);
	pPlayer.SetDisableFriend(1);		
	--pPlayer.ForbitTrade(1);		
	pPlayer.TeamDisable(1);
	
end

-- 定义玩家离开事件
function tbMap:OnLeave(szParam)
local pPlayer = me;
	-- 清除地图效果
	Boss.PhuDoCoThanh_TanThu:OnMapLeave(me.nId, 1);
			
	-- 移出当前地图的列表
	Boss.PhuDoCoThanh_TanThu:RemovePlayer(me.nId);
	
	self:_ResetState(me);
	
end;

function tbMap:_ResetState(pPlayer)
	--pPlayer.nPkModel = Player.emKPK_STATE_PRACTISE; -- ko pk emKPK_STATE_PRACTISE
	--pPlayer.nForbidChangePK	= 0;
	--pPlayer.nInBattleState	= 0;	
	--pPlayer.SetNoDeathPunish(0);	
	pPlayer.DisabledStall(0);
	pPlayer.SetDisableTeam(0);
	pPlayer.SetDisableStall(0);
	pPlayer.SetDisableFriend(0);		
	--pPlayer.ForbitTrade(0);		
	pPlayer.TeamDisable(0);
	--Dialog:ShowBattleMsg(pPlayer, 0, 0);
end

--VỊ TRÍ GIỮA MAP AN TOÀN--
--[[local tbSafeIn1 = tbMap:GetTrapClass("trap_chiendau");
function tbSafeIn1:OnPlayer()

	me.NewWorld(2109, 1622, 3167);--Chiến đấu
	me.SetFightState(1); --Trạng thái Chiến Đấu
	Player:AddProtectedState(me, 3);
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn đã vào khu vực Chiến Đấu!<color>"));
end;


--VỊ TRÍ RA NGOÀI AN TOÀN - CHIẾN ĐẤU--
local tbSafeOut1 = tbMap:GetTrapClass("trap_antoan");

function tbSafeOut1:OnPlayer()
	
	me.NewWorld(2109, 1605, 3153);--An toàn
	me.SetFightState(0); --Trạng thái An Toàn
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Bạn đã vào khu vực An Toàn!<color>"));
end;]]

