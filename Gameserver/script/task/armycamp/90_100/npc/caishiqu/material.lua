-- �κ���Ҿ��ɲɼ�����Ʒ

-- ���ϣ��κ���ҵ����ɵô���Ʒ
--[[
local tbNpc = Npc:GetClass(""); 

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
		Player.ProcessBreakEvent.emEVENT_ATTACKED,
		Player.ProcessBreakEvent.emEVENT_DEATH,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
	}
	
	GeneralProcess:StartProcess("���ڲɼ�", 15 * 18, {self.OnCollect, self, him.dwId, me.nId}, {me.Msg, "�ɼ�ʧ��"}, tbEvent);		
end;


function tbNpc:OnCollect(nNpcId, nPlayerId)
	-- ɾ����Npc
	
	-- ��Ӳ���
end
--]]