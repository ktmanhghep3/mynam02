 local tbMap = Map:GetClass(2103);
 
local MapId = 2103;

local tbHoanhThanhPK = SpecialEvent.HoanhThanhPK;
function tbMap:OnEnter(szParam)
	if Limit_HoanhThanhPK.MapBoss_CheckNumAccount == 1 then
		if Limit_HoanhThanhPK:CheckValidHardware(me) == 0 then
		Limit_HoanhThanhPK:WriteZeroHardWare(me);
		end
		
		local nCheck,nNum,Msg = Limit_HoanhThanhPK:CheckHardWare(me);
		if nCheck ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Hoạt động này giới hạn: <color=red>1<color> Accout/PC<color>"});
		me.NewWorld(775,1446,3357);
		end
	end
	
	if Limit_HoanhThanhPK.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = Limit_HoanhThanhPK:CheckHardWare(me);
	Limit_HoanhThanhPK:WriteNewHardWare(me,nNumOld);
	end

	if tbHoanhThanhPK.nStatus == 0 then
		local nMapId, nReliveId  = me.GetRevivePos();
		local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
		me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
		me.SetFightState(0);
		return 0;
	end
	
	tbHoanhThanhPK:AddPlayer(me.nId);
	self:_SetState(me);
end;
function tbMap:OnLeave(szParam)
	local pPlayer = me;

	if Limit_HoanhThanhPK.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = Limit_HoanhThanhPK:CheckHardWare(pPlayer);
	Limit_HoanhThanhPK:TruNewHardWare(pPlayer,nNumOld);
	end

	self:_ResetState(me);
	tbHoanhThanhPK:RemovePlayerTitle(me);
end;

function tbMap:_SetState(pPlayer)
	pPlayer.nPkModel = Player.emKPK_STATE_PRACTISE; -- ko pk emKPK_STATE_PRACTISE
	pPlayer.nForbidChangePK	= 1;
	pPlayer.nInBattleState	= 1;	
	pPlayer.SetNoDeathPunish(1);	
	pPlayer.DisabledStall(1);
	pPlayer.SetDisableTeam(1);
	pPlayer.SetDisableStall(1);
	pPlayer.SetDisableFriend(1);		
	pPlayer.ForbitTrade(1);		
	pPlayer.TeamDisable(1);
	
end

function tbMap:_ResetState(pPlayer)
	pPlayer.nPkModel = Player.emKPK_STATE_PRACTISE; -- ko pk emKPK_STATE_PRACTISE
	pPlayer.nForbidChangePK	= 0;
	pPlayer.nInBattleState	= 0;	
	pPlayer.SetNoDeathPunish(0);	
	pPlayer.DisabledStall(0);
	pPlayer.SetDisableTeam(0);
	pPlayer.SetDisableStall(0);
	pPlayer.SetDisableFriend(0);		
	pPlayer.ForbitTrade(0);		
	pPlayer.TeamDisable(0);
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end
