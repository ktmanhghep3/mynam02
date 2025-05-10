local tbItem = Item:GetClass("Event_He_Tra_ThanhSam");

tbItem.Item_Ruong = {18,1,3401,2};
tbItem.Times_Delay = 20;

tbItem.TaskGroup_Moc_TraThanhSam = 4202;		--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm
tbItem.TaskID_Moc_TraThanhSam = 1;				--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm
tbItem.TaskID_TimeOpen = 2;						--Task giãn cách thời gian dùng


tbItem.Use_CaSuKien = 500;					--Số lượng ăn cả Sự Kiện
tbItem.Time_MoRuong = 15; 					--Giãn cách Thời gian Dùng

function tbItem:OnUse()
local Moc_TraThanhSam = me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TaskID_Moc_TraThanhSam);
local nCheck, nSec = self:Check_Time_MoRuong();
--Reset Ngày--
	if nCheck == 0 then
		local szTime = Lib:TimeFullDesc(nSec);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Giãn cách dùng Bánh không quá 15s, hiện tại còn: "..szTime.."<color>"});
		return;
	end

	if Moc_TraThanhSam >= self.Use_CaSuKien then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Moc_TraThanhSam.."<color>/"..self.Use_CaSuKien.." không thể dùng nữa!<color>"});
		return;
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
GeneralProcess:StartProcess("<color=yellow>Đang thưởng thức ...<color>", self.Times_Delay * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end

function tbItem:XuLyMo()
local nCurTime = GetTime();
local nTimeDung= me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TaskID_TimeOpen);
local Moc_TraThanhSam = me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TaskID_Moc_TraThanhSam);





me.SetTask(self.TaskGroup_Moc_TraThanhSam, self.TaskID_TimeOpen, nCurTime);
me.SetTask(self.TaskGroup_Moc_TraThanhSam, self.TaskID_Moc_TraThanhSam, Moc_TraThanhSam + 1);

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(157);
end





function tbItem:Check_Time_MoRuong()
	local nEndTime = me.GetTask(self.TaskGroup_Moc_TraThanhSam, self.TaskID_TimeOpen) + self.Time_MoRuong;
	local nRemainSec = nEndTime -  GetTime();	
	if nRemainSec < 0   then
	 	return 1 , 0;
	end
	return 0 , nRemainSec;			
end
