local tbItem = Item:GetClass("PhoLuyenTBVC_Ao");

tbItem.Item_Ruong = {18,1,3200,2};	--Giám Định
tbItem.PhoLuyen = {18,1,3210,2};	--Phổ Luyện

tbItem.Delay_Times = 10;
tbItem.Time_HSD = 86400*1;				--Set Hạn sử dụng của Vật phẩm
tbItem.TaskGroup_KichHoatVoCuc = 4200;	--KÍCH HOẠT VÔ CỰC
tbItem.TaskId_KichHoatVoCuc = 1;		--KÍCH HOẠT VÔ CỰC
tbItem.YeuCau = 1;
function tbItem:OnUse()
local KichHoatVoCuc = me.GetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc);
if KichHoatVoCuc < self.YeuCau then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Cần Kích Hoạt Vô Cực mới Giám định được!<color>"});
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
GeneralProcess:StartProcess("<color=yellow>...Đang Giám định...", self.Delay_Times * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end

function tbItem:XuLyMo()
Task:DelItem(me, self.Item_Ruong, 1);
local pItem = me.AddItem(unpack(self.PhoLuyen));
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Giám định thành công "..pItem.szName.." !!!<color>"});
end

--Set Hạn sử dụng của Vật phẩm
function tbItem:InitGenInfo()
	--Set Hạn sử dụng của Vật phẩm
	local nSec = GetTime() + self.Time_HSD;
	it.SetTimeOut(0, nSec);
	return	{ };
end
