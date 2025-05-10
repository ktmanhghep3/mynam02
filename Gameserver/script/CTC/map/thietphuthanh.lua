local tbTest = Map:GetClass(CTC.MapID); -- µØÍ¼Id

-- ¶¨ÒåÍæ¼Ò½øÈëÊÂ¼þ
function tbTest:OnEnter(szParam)
	if Limit_CTC.MapBoss_CheckNumAccount == 1 then
		if Limit_CTC:CheckValidHardware(me) == 0 then
		Limit_CTC:WriteZeroHardWare(me);
		end
		
		local nCheck,nNum,Msg = Limit_CTC:CheckHardWare(me);
		if nCheck ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Hoạt động này giới hạn: <color=red>2<color> Accout/PC<color>"});
		me.NewWorld(2,1752,3563);
		end
	end
	
	if Limit_CTC.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = Limit_CTC:CheckHardWare(me);
	Limit_CTC:WriteNewHardWare(me,nNumOld);
	end

	if CTC:FindPlayer(me) == false then
		me.NewWorld(29,1623,3953);
	end
	--me.SetFightState(1);
	me.nPkModel = Player.emKPK_STATE_TONG;
	me.nForbidChangePK	= 1;
	me.SetNoDeathPunish(1);
end;

-- ¶¨ÒåÍæ¼ÒÀë¿ªÊÂ¼þ
function tbTest:OnLeave(szParam)
	local pPlayer = me;

	if Limit_CTC.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = Limit_CTC:CheckHardWare(pPlayer);
	Limit_CTC:TruNewHardWare(pPlayer,nNumOld);
	end

		Dialog:ShowBattleMsg(me, 0, 0);
		me.nPkModel = Player.emKPK_STATE_PRACTISE;
		me.nForbidChangePK	= 0;
		me.SetNoDeathPunish(0);
end;
local tbTestTrap13	= tbTest:GetTrapClass("to_in")

-- ¶¨ÒåÍæ¼ÒTrapÊÂ¼þ
function tbTestTrap13:OnPlayer()
		local i = CTC:FindPosTongList(CTC.TongList,me.dwTongId)
		if i == 0 then
				me.NewWorld(29,1623,3953);
		end
		me.NewWorld(unpack(CTC.MapPos_Prepare[i]));
		me.SetFightState(0)
end;
local tbTestTrap14	= tbTest:GetTrapClass("to_out")

-- ¶¨ÒåÍæ¼ÒTrapÊÂ¼þ
function tbTestTrap14:OnPlayer()	
		local i = CTC:FindPosTongList(CTC.TongList,me.dwTongId)
		if i == 0 then
				me.NewWorld(29,1623,3953);
		end
		--Jie add--
		if CTC.nTimerId == 0 then
			Dialog:Say("Trước khi khai chiến,tất cả các binh sĩ không được rời khỏi doanh trại.Bạn hãy chuẩn bị thật tốt chờ tới lúc khai chiến!");
			me.NewWorld(unpack(CTC.MapPos_Prepare[i]));
			return 0;
		end
		----
		me.AddSkillState(786, 1, 1, 10 * Env.GAME_FPS);
		me.NewWorld(unpack(CTC.MapPos[i]));
		me.SetFightState(1);
	

		
end;
