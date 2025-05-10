local tbItem = Item:GetClass("Event_Noel_2");

tbItem.Item_Ruong = {18,1,3966,1}; --Bản Đồ Sự Kiện (Chưa Giám Định)
tbItem.LeverBoss = 150;
tbItem.Times = 2;
tbItem.Id_BossSuKien =
{
{8139},
{8140},
{8141},
{8142},
{8143},
{8144},
{8145},
{8146},
{8147},
{8148},
}

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
GeneralProcess:StartProcess("<bclr=0,0,200><color=white>Đang triệu hồi ...", self.Times * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end


function tbItem:XuLyMo()
local nRand_Id_BossSuKien = MathRandom(1,#self.Id_BossSuKien)
local nMapId, nPosX, nPosY = me.GetWorldPos();

KNpc.Add2(unpack(self.Id_BossSuKien[nRand_Id_BossSuKien]), self.LeverBoss, -1, nMapId, nPosX, nPosY)
Task:DelItem(me, self.Item_Ruong, 1);
end
