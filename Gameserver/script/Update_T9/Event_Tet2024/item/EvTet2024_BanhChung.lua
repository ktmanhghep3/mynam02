local tbItem = Item:GetClass("EvTet2024_BanhChung");

tbItem.Item_Ruong = {18,1,3030,5};
tbItem.Times_Delay = 20;
tbItem.TaskGroup_Reset_Day = 4098;		--Task Reset Số lần ăn bánh trong ngày
tbItem.Reset_Day = 1;
tbItem.TaskGroup_GioiHan_Ngay = 4096;	--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbItem.TaskID_GioiHan_Ngay = 1;			--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbItem.TaskID_TimeOpen = 2;				--Task giãn cách thời gian dùng
tbItem.TaskGroup_GioiHan_CaSuKien = 4097;	--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbItem.TaskID_GioiHan_CaSuKien = 1;
tbItem.Use_Ngay = 25;						--Số lượng ăn 1 ngày
tbItem.Use_CaSuKien = 500;					--Số lượng ăn cả Sự Kiện
tbItem.Time_MoRuong = 15; 					--Giãn cách Thời gian Dùng

function tbItem:OnUse()
local SoLanNgay= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_Ngay);
local SoLanSuKien= me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien);
local nCheck, nSec = self:Check_Time_MoRuong();
--Reset Ngày--
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup_Reset_Day, self.Reset_Day) < nDate then
me.SetTask(self.TaskGroup_Reset_Day, self.Reset_Day, nDate);
me.SetTask(self.TaskGroup_GioiHan_Ngay, self.TaskID_GioiHan_Ngay, 0);		--Reset Số lần ăn bánh trong ngày
end
--Reset Ngày--

	if nCheck == 0 then
		local szTime = Lib:TimeFullDesc(nSec);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Giãn cách dùng Bánh không quá 15s, hiện tại còn: "..szTime.."<color>"});
		return;
	end

	if SoLanNgay >= self.Use_Ngay then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi đã dùng <color=cyan>"..SoLanNgay.."<color>/"..self.Use_Ngay.." ngày mai hãy dùng tiếp!<color>"});
		return;
	end

	if SoLanSuKien >= self.Use_CaSuKien then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..SoLanSuKien.."<color>/"..self.Use_CaSuKien.." không thể dùng nữa!<color>"});
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
local SoLanNgay= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_Ngay);
local SoLanSuKien= me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien);
local nTimeDung= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_TimeOpen);
local nCurTime = GetTime(); 

me.SetTask(self.TaskGroup_GioiHan_Ngay, self.TaskID_TimeOpen, nCurTime);
me.SetTask(self.TaskGroup_GioiHan_Ngay, self.TaskID_GioiHan_Ngay, SoLanNgay + 1);
me.SetTask(self.TaskGroup_GioiHan_CaSuKien, self.TaskID_GioiHan_CaSuKien, SoLanSuKien + 1);

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(115);
end

function tbItem:Check_Time_MoRuong()
	local nEndTime = me.GetTask(self.TaskGroup_GioiHan_Ngay, self.TaskID_TimeOpen) + self.Time_MoRuong;
	local nRemainSec = nEndTime -  GetTime();	
	if nRemainSec < 0   then
	 	return 1 , 0;
	end
	return 0 , nRemainSec;			
end
