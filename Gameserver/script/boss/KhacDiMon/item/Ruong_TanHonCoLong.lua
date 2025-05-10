local tbItem = Item:GetClass("Ruong_TanHonCoLong");

tbItem.Item_Ruong = {18,1,3029,1};
tbItem.Delay_Times = 12;
tbItem.Time_HSD = 3600*1;				--Set Hạn sử dụng của Vật phẩm


tbItem.TaskGroup_RuongTanHon = 4094;	--Task Mở Rương Tàn Hồn Cổ Long ngày
tbItem.TaskID_RuongTanHon = 1;

tbItem.Lucky_100 = 1;
tbItem.Lucky_80 = 3;
tbItem.Lucky_60 = 5;
tbItem.Lucky_50 = 7;
tbItem.Lucky_10 = 9;
tbItem.Lucky_Zero = 11;

--Reset Khắc Di Môn--
tbItem.TaskGroup_Reset_Day = 4103;			--Task Reset Ngày của các Task trong KDM
tbItem.Reset_Day = 1;

tbItem.TaskGroup_SoLanMoTru = 4093;			--Điếm số lần mở Chi Ngạo Hỏa Trụ KDM trong ngày
tbItem.TaskID_SoLanMoTru = 1;

tbItem.TaskGroup_TimeKDM = 4090;			-- Tast Thời gian Dong Ha Lan Son (KDM)
tbItem.TaskID_TimeKDM = 1;

tbItem.TaskGroup_TimeLH_CoQuat = 4091;		-- Tast Thời gian Long Hon Co Quat
tbItem.TaskID_TimeLH_CoQuat = 1;

tbItem.TaskGroup_TimeLH_BiBao = 4092;		-- Tast Thời gian Long Hon Bi Bao
tbItem.TaskID_TimeLH_BiBao = 1;
--Reset Khắc Di Môn--


function tbItem:OnUse()
DoScript("\\script\\boss\\KhacDiMon\\item\\Ruong_TanHonCoLong.lua");
local SoLan_RuongTanHon = me.GetTask(self.TaskGroup_RuongTanHon,self.TaskID_RuongTanHon);

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup_Reset_Day, self.Reset_Day) < nDate then
me.SetTask(self.TaskGroup_Reset_Day, self.Reset_Day, nDate);


	me.SetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru, 0);		--Reset Số lần mở Hỏa Trụ
	me.SetTask(self.TaskGroup_TimeKDM, self.TaskID_TimeKDM, 0);				--Reset Thời gian Dong Ha Lan Son (KDM)
	me.SetTask(self.TaskGroup_TimeLH_CoQuat, self.TaskID_TimeLH_CoQuat, 0);	--Reset Thời gian Long Hon Co Quat
	me.SetTask(self.TaskGroup_TimeLH_BiBao, self.TaskID_TimeLH_BiBao, 0);	--Reset Thời gian Long Hon Bi Bao
	me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, 0);		--Reset Mở Rương Tàn Hồn Cổ Long ngày
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
GeneralProcess:StartProcess("<color=yellow>Đang mở, hôm nay đã mở "..SoLan_RuongTanHon.." lần", self.Delay_Times * Env.GAME_FPS, {self.XuLyMo, self}, nil, tbBreakEvent);
end

function tbItem:XuLyMo()
local SoLan_RuongTanHon = me.GetTask(self.TaskGroup_RuongTanHon,self.TaskID_RuongTanHon);
me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
Task:DelItem(me, self.Item_Ruong, 1);

	if SoLan_RuongTanHon <= self.Lucky_100 then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(108);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end

	if SoLan_RuongTanHon <= self.Lucky_80 then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(109);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end

	if SoLan_RuongTanHon <= self.Lucky_60 then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(110);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end

	if SoLan_RuongTanHon <= self.Lucky_50 then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(111);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end


	if SoLan_RuongTanHon <= self.Lucky_10 then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(112);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end

	if SoLan_RuongTanHon > self.Lucky_10 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Rương Tàn Hồn Cổ Long hôm nay đã mở: <color=cyan>"..(SoLan_RuongTanHon+1).."<color> lần!<color>"});
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 0);
		Player:SendMsgToKinOrTong(me, " Mở Rương Tàn Hồn Cổ Long lần thứ ["..(SoLan_RuongTanHon+1).."] trong ngày!", 1);
		--me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, SoLan_RuongTanHon + 1);
		return;
	end


end

--Set Hạn sử dụng của Vật phẩm
function tbItem:InitGenInfo()
	--Set Hạn sử dụng của Vật phẩm
	local nSec = GetTime() + self.Time_HSD;
	it.SetTimeOut(0, nSec);
	return	{ };
end
