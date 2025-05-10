local tbItem = Item:GetClass("TrieuHoi_KyLan");

tbItem.Item_Ruong = {18,1,3967,1};
tbItem.Boss_ID = 9000;
tbItem.LeverBoss = 150;
tbItem.He = -1;
tbItem.Times = 1;

function tbItem:OnUse()
if me.nFightState == 0 then
Dialog:Say("Không thể Triệu hồi khi nhân vật ở Trạng thái phi chiến đấu, trong thành!");
return 0;
end

local tbBreakEvent =
{
Player.ProcessBreakEvent.emEVENT_MOVE,
Player.ProcessBreakEvent.emEVENT_ATTACK,
Player.ProcessBreakEvent.emEVENT_SIT,
Player.ProcessBreakEvent.emEVENT_RIDE,
Player.ProcessBreakEvent.emEVENT_USEITEM,
Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
Player.ProcessBreakEvent.emEVENT_DROPITEM,
Player.ProcessBreakEvent.emEVENT_CHANGEEQUIP,
Player.ProcessBreakEvent.emEVENT_SENDMAIL,
Player.ProcessBreakEvent.emEVENT_TRADE,
Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
Player.ProcessBreakEvent.emEVENT_ATTACKED,
Player.ProcessBreakEvent.emEVENT_DEATH,
Player.ProcessBreakEvent.emEVENT_LOGOUT,
Player.ProcessBreakEvent.emEVENT_REVIVE,
Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
}
GeneralProcess:StartProcess("<color=yellow>Đang triệu hồi ...<color>", self.Times * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end

function tbItem:XuLyMo()


local nMapId, nPosX, nPosY = me.GetWorldPos();
KNpc.Add2(self.Boss_ID, self.LeverBoss, self.He, nMapId, nPosX, nPosY)
Task:DelItem(me, self.Item_Ruong, 1);
end
