local tbItem = Item:GetClass("Thuoc_DMCT");

tbItem.Item_Ruong = {18,1,3930,2};
tbItem.Times = 10;
tbItem.TaskGroup_VHC = 2066;
tbItem.TaskID_VHC = 272;
tbItem.SoLanGiam = 1;

function tbItem:OnUse()

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
GeneralProcess:StartProcess("<color=yellow>Đang dùng ...<color>", self.Times * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);

local SoLanVHC = me.GetTask(self.TaskGroup_VHC, self.TaskID_VHC);
me.SetTask(self.TaskGroup_VHC, self.TaskID_VHC, SoLanVHC - self.SoLanGiam);

Dialog:SendBlackBoardMsg(me, "<color=yellow>Số lần vào Đại Mạc Cổ Thành trong tuần tăng thêm: "..self.SoLanGiam.." lần!<color>");
end
