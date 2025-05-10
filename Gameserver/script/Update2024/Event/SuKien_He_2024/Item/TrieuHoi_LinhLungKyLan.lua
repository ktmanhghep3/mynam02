local tbItem = Item:GetClass("TrieuHoi_LinhLungKyLan_Huy");
tbItem.tbBoss = 
{

['boss'] = {

{"<color=yellow>Linh Lung Kỳ Lân<color>", 9000 , -1,150},

}
}

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

function tbItem:OnUse()
local tbOpt = {};
for nId, tbBoss in ipairs(self.tbBoss['boss']) do
table.insert(tbOpt, {tbBoss[1], self.CallBoss, self, it.dwId, nId, tbBoss[4]});
end
table.insert(tbOpt, {"Để ta nghĩ lại!"});
Dialog:Say("Hãy chọn Boss muốn gọi", tbOpt);
end

function tbItem:CallBoss(nItemId, nId, nLevel, nSure)
local pItem = KItem.GetObjById(nItemId);
if not pItem then
return
end

if me.nFightState == 0 then
Dialog:Say("Không thể Triệu hồi khi nhân vật ở Trạng thái phi chiến đấu, trong thành!");
return 0;
end

if not nSure then
local szMsg = string.format("Ngươi có chắc muốn triệu hồi <color=yellow> %s <color>?", self.tbBoss['boss'][nId][1]);
local tbOpt = {
{"Vâng, triệu hồi ngay!", self.CallProcess, self, nItemId, nId, nLevel},
{"Để suy nghĩ lại!"},
}
Dialog:Say(szMsg, tbOpt);
return 0;
end
if me.DelItem(pItem) ~= 1 then
return;
end
local nMapId, nPosX, nPosY = me.GetWorldPos();
local pNpc = KNpc.Add2(self.tbBoss['boss'][nId][2], nLevel, self.tbBoss['boss'][nId][3], nMapId, nPosX, nPosY, 0, 1);
if pNpc then
me.Msg(string.format("Triệu hồi thành công %s", self.tbBoss['boss'][nId][1]));
end
end

function tbItem:CallProcess(nItemId, nId, nLevel)
GeneralProcess:StartProcess("Đang triệu hồi...", 5 * Env.GAME_FPS, {self.CallBoss, self, nItemId, nId, nLevel, 1}, nil, tbEvent);
end

