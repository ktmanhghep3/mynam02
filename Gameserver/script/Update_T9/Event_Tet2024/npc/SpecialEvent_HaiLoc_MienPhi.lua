local tbHaiLoc2024_free = {};
SpecialEvent.HaiLoc_DauNam_free = tbHaiLoc2024_free;



tbHaiLoc2024_free.TaskGourp = 4110; 			--Task Hái Lộc hàng ngày (add; 1-ngày 2-đếm số lần 3-tính thời gian)
tbHaiLoc2024_free.TaskId_Day = 1; 			--Task lưu ngày
tbHaiLoc2024_free.TaskId_Count = 2;  		--Task lưu lần nhận
tbHaiLoc2024_free.TaskId_Last = 3;  		 	--Task lưu thời gian nhận
tbHaiLoc2024_free.Relay_Time = 60*60;  		--Thời gian giữa 2 lần nhận
tbHaiLoc2024_free.Use_Max = 2;  		 		--Số lần nhận tối đa

tbHaiLoc2024_free.TimeOn_HaiLoc = 1800;	--Thời gian mở SK
tbHaiLoc2024_free.TimeOff_HaiLoc = 2200;	--Thời gian đóng SK

tbHaiLoc2024_free.Delay_Times = 25;

function tbHaiLoc2024_free:OnDialog()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(self.TaskGourp, self.TaskId_Day) < nDate then
		me.SetTask(self.TaskGourp, self.TaskId_Day, nDate);
		me.SetTask(self.TaskGourp, self.TaskId_Count, 0);
		me.SetTask(self.TaskGourp, self.TaskId_Last, 0);
	end 
	local nCount = me.GetTask(self.TaskGourp, self.TaskId_Count);
	local szMsg = "";
	szMsg = string.format("<color=gold>Hái Lộc Đầu Năm.\n<color=cyan>Mỗi ngày trong thời gian Sự kiện được tham gia 2 lần.<color><color>",self.Use_Max);
	local szColor = "<color=Gray>"
	local szColorx = "<color>"
	szMsg = szMsg.."\n<color=pink>Lần 1:<color> <color=yellow>"..((nCount >= 1 and szColor) or "").."1 - Lì Xì Năm Mới 2024<color>";
	szMsg = szMsg.."\n<color=pink>Lần 2:<color> <color=yellow>"..((nCount >= 2 and szColor) or "").."1 - Lì Xì Năm Mới 2024<color>";
	szMsg = szMsg..string.format("\n\n<color=green>Số lần hôm nay bạn đã Hái Lộc Miễn Phí: \n"..((nCount >= self.Use_Max and "<color=yellow>Đã dùng hết<color>") or nCount).."/"..self.Use_Max.." lần.<color>");
	local tbOpt = {};
	if (nCount < self.Use_Max) then
		table.insert(tbOpt , {"<color=yellow>Ta muốn Hái Lộc",  self.HaiLoc_Enter1, self});
	end
	table.insert(tbOpt, {"Ta chỉ ghé ngang qua"});
	Dialog:Say(szMsg, tbOpt);
end

function tbHaiLoc2024_free:HaiLoc_Enter1()
	local nCount = me.GetTask(self.TaskGourp, self.TaskId_Count);
	local nCurTime = tonumber(GetLocalDate("%H%M"));
	
	if nCurTime < self.TimeOn_HaiLoc or nCurTime >= self.TimeOff_HaiLoc then
		Dialog:Say("<color=yellow>Thời gian Hái Lộc Miễn Phí: <color=cyan>"..self.TimeOn_HaiLoc.." đến "..self.TimeOff_HaiLoc.."<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Thời gian Hái Lộc Miễn Phí hàng ngày: <color=cyan>"..self.TimeOn_HaiLoc.." đến "..self.TimeOff_HaiLoc.."<color>"});
		return 0;
	end

    if nCount >= self.Use_Max then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Số lần Hái Lộc Miễn Phí hôm nay đã dùng hết!<color>"));
        return 0; 
    end    
	local nLast = me.GetTask(self.TaskGourp, self.TaskId_Last);
	local nHour = tonumber(GetLocalDate("%Y%m%d%H%M%S"));
	local nSec1 = Lib:GetDate2Time(nHour);
	local nSec2 = nLast + self.Relay_Time;

		if nSec1 < nSec2 then
			if ((nSec2 - nSec1)<=60) then
				me.Msg(string.format("<color=red>Hái Lộc Miễn Phí lần tiếp theo còn: <color=yellow>%s<color> giây<color>", (nSec2 - nSec1)));
			else
				me.Msg(string.format("<color=red>Hái Lộc Miễn Phí lần tiếp theo còn: <color=yellow>%d<color> phút<color>", (nSec2 - nSec1)/60));
			end
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
GeneralProcess:StartProcess("<color=yellow>Đang Hái Lộc ...<color>", self.Delay_Times * Env.GAME_FPS, {self.HaiLoc_Enter2, self}, nil, tbBreakEvent);
end

function tbHaiLoc2024_free:HaiLoc_Enter2()
	local nCount = me.GetTask(self.TaskGourp, self.TaskId_Count);
	local nCurTime = tonumber(GetLocalDate("%H%M"));	
	local nLast = me.GetTask(self.TaskGourp, self.TaskId_Last);
	local nHour = tonumber(GetLocalDate("%Y%m%d%H%M%S"));
	local nSec1 = Lib:GetDate2Time(nHour);
	local nSec2 = nLast + self.Relay_Time;


	if (nCount == 0) then
		me.AddStackItem(18,1,3039,1,{bForceBind=1,},1);	--Lì Xì Năm Mới 2024
	elseif (nCount == 1) then
		me.AddStackItem(18,1,3039,1,{bForceBind=1,},1);	--Lì Xì Năm Mới 2024
	end
	me.Msg(string.format("<color=yellow>Bạn đã Hái Lộc Miễn Phí trong ngày lần thứ: <color=yellow>%d<color>",nCount + 1));
	me.SetTask(self.TaskGourp, self.TaskId_Count, nCount + 1);
	local nHourS = tonumber(GetLocalDate("%Y%m%d%H%M%S"));
	local nSec3 = Lib:GetDate2Time(nHourS);
	me.SetTask(self.TaskGourp, self.TaskId_Last, nSec3);
	local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Miễn Phí Đầu Năm lần thứ "..(nCount + 1).." trong ngày, tại <color=cyan>Tài Thần Mộc Bảo<color>, nhận được phần thưởng\n- 1: Lì Xì Năm Mới 2024<color>";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
end
