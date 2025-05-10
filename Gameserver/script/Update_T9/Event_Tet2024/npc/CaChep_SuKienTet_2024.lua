local tbNpc = Npc:GetClass("CaChep_SuKienTet_2024");

tbNpc.Times_delay = 60;

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
    GeneralProcess:StartProcess("<color=cyan>Đang thu cá...<color>", self.Times_delay * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local pNpc = KNpc.GetById(nNpcId);
pNpc.Delete();


---Phần thưởng--
local pItem = me.AddItem(1,27,6,1);--Thánh Linh Giáp Thìn 2024
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>Sự kiện 23 Tết <color=Turquoise>"..me.szName.."<color> Tại <color=green>"..GetMapNameFormId(nMapId).."<color> cực kỳ may mắn tìm thấy Cá Chép, thành công nhận thưởng Trân bảo: <color=cyan>\n- 1 ~ "..pItem.szName.."<color>\nXin Chúc mừng!<color>");	
return 0;
end