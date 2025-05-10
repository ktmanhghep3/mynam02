local tbNpc = Npc:GetClass("BoxBanTiecTanNien_2025");

function tbNpc:OnDialog()
	local tbEvent = 
	{
		Player.ProcessBreakEvent.emEVENT_MOVE,
		Player.ProcessBreakEvent.emEVENT_ATTACK,
		Player.ProcessBreakEvent.emEVENT_SITE,
		Player.ProcessBreakEvent.emEVENT_USEITEM,
		Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
		Player.ProcessBreakEvent.emEVENT_DROPITEM,
		Player.ProcessBreakEvent.emEVENT_SENDMAIL,
		Player.ProcessBreakEvent.emEVENT_TRADE,
		Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
		Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
		Player.ProcessBreakEvent.emEVENT_DEATH,
		Player.ProcessBreakEvent.emEVENT_ATTACKED,
	}
    GeneralProcess:StartProcess("<bclr=0,0,200><color=white>Đang thưởng thức...<color>", 29 * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local pNpc = KNpc.GetById(nNpcId);
pNpc.Delete();

-- Phần thưởng cố định--
		me.AddStackItem(18,1,4018,2,{bForceBind=1,},1);		--Túi Quà: Bánh Chưng Tân Niên

		local szMsg = "<bclr=0,0,200><color=white>"..me.szName.." chúc mừng Tân Niên Đoàn Viên 2025 tại Sự kiện: Tiệc Đoàn Viên-Phượng Tường!";
		GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);



return 0;
end  