local tbNpc = Npc:GetClass("LongHonBiBao");

tbNpc.Delay_Times = 25;

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
    GeneralProcess:StartProcess("<color=green>Đang mở...<color>", self.Delay_Times * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local pNpc = KNpc.GetById(nNpcId);
pNpc.Delete();
local nUseTime = me.GetTask(4092, 1);--Tăng 3 phút Long hồn Bí Bảo--
me.SetTask(4092, 1, nUseTime-180);


---Phần thưởng Random--
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(114);
Player:SendMsgToKinOrTong(me, " Mở thành công Long Hồn Bí Bảo, nhận phần thưởng bất ngờ!", 0);
Player:SendMsgToKinOrTong(me, " Mở thành công Long Hồn Bí Bảo, nhận phần thưởng bất ngờ!", 1);
return 0;
end  