
local tbLenhBaiVIP = Item:GetClass("lenhbaichungminhvip");
tbLenhBaiVIP.TaskGourp = 3000;
tbLenhBaiVIP.TaskId_Day = 1;
tbLenhBaiVIP.TaskId_Count = 2;
tbLenhBaiVIP.TaskId_Last = 3;
tbLenhBaiVIP.Relay_Time = 60*30*1;
tbLenhBaiVIP.Use_Max =5;
tbLenhBaiVIP.tbItemInfo = {bForceBind=1,};

function tbLenhBaiVIP:OnUse()
DoScript("\\script\\event\\cacevent\\vip\\lenhbaichungminhvip.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(3000, 1) < nDate then
		me.SetTask(3000, 1, nDate);
		me.SetTask(3000, 2, 0);
		me.SetTask(3000, 3, 0);
	end 
	local nCount = me.GetTask(3000, 2);
	local szMsg = string.format("<color=orange>Phần Thưởng Hàng Ngày<color> \n\nMỗi <color=yellow>30 phút online<color> hàng ngày có thể nhận thưởng, tối đa <color=yellow>5<color> lần.\n<color=red>Chú Ý<color>:VIP NHẬn NHIỀU HƠN LẦN 1 VÀ 2\n<color=green>Hôm nay bạn đã nhận <color=red>%d<color> phần thưởng.<color>",nCount);
local szColor = "<color=Gray>"
	local szColorx = "<color>"
	szMsg = szMsg.."\n<color=yellow>Lần 1:<color> "..((nCount >= 1 and szColor) or "").."30000000 EXP<color>";
	szMsg = szMsg.."\n<color=yellow>Lần 2:<color> "..((nCount >= 2 and szColor) or "").."30000000 EXP<color>";
	szMsg = szMsg.."\n<color=yellow>Lần 3:<color> "..((nCount >= 3 and szColor) or "").."30000000 EXP<color>";
	szMsg = szMsg.."\n<color=yellow>Lần 4:<color> "..((nCount >= 4 and szColor) or "").."30000000 EXP<color>";
	szMsg = szMsg.."\n<color=yellow>Lần 5:<color> "..((nCount >= 5 and szColor) or "").."30000000 EXP<color>";
	-- szMsg = szMsg.."\n<color=yellow>Lần 6:<color> "..((nCount >= 6 and szColor) or "").."10 Hòa Thị Bích<color>";

	szMsg = szMsg..string.format("\n\n<color=yellow>Hôm nay bạn đã nhận "..((nCount >= self.Use_Max and "đủ") or nCount).." phần thưởng.<color>");

	local tbOpt = {};
	if (nCount < self.Use_Max) then
		table.insert(tbOpt , {"Nhận thưởng ngay",  self.nhanthuong, self});
	end
	table.insert(tbOpt, {"Ta chỉ ghé ngang qua"});
	Dialog:Say(szMsg, tbOpt);
end

function tbLenhBaiVIP:nhanthuong()
	local nCount = me.GetTask(3000, 2);
	local nCount3 = me.GetItemCountInBags(18,1,25297,1);
    if nCount >= self.Use_Max then
        Dialog:Say(string.format("Hôm nay bạn đã nhận đủ phần thưởng."));
        return 0; 
    end
	if me.CountFreeBagCell() < 15 then
		Dialog:Say(string.format("Dọn trống hành trang 15 ô"));
		return 0;
	end;
	local nLast = me.GetTask(3000, 3);
	local nHour = tonumber(GetLocalDate("%Y%m%d%H%M%S"));
	local nSec1 = Lib:GetDate2Time(nHour);
	local nSec2 = nLast + self.Relay_Time;
	if nSec1 < nSec2 then
		if ((nSec2 - nSec1)<=60) then
			me.Msg(string.format("Còn <color=yellow>%s giây<color> nữa mới nhận được phần thưởng tiếp theo.", (nSec2 - nSec1)));
			Dialog:SendBlackBoardMsg(me, string.format("Còn <color=red>%d giây<color> nữa mới nhận được phần thưởng tiếp theo !!!", (nSec2 - nSec1)/60));
		else
			me.Msg(string.format("Còn <color=yellow>%d phút<color> nữa mới nhận được phần thưởng tiếp theo.", (nSec2 - nSec1)/60));
			Dialog:SendBlackBoardMsg(me, string.format("Còn <color=red>%d phút<color> nữa mới nhận được phần thưởng tiếp theo !!!", (nSec2 - nSec1)/60));
		end
		return 0;
	end;
	if (nCount == 0) then
	me.AddExp(30000000) -- 10tr EXp
	me.Msg("Chúc mừng bạn nhận được phần thưởng lần <color=red>thứ ".. nCount+1 .."<color>!!!");
	elseif (nCount == 1) then
	me.AddExp(30000000) -- 10tr EXp
	me.Msg("Chúc mừng bạn nhận được phần thưởng lần <color=red>thứ ".. nCount+1 .."<color>!!!");
	elseif (nCount == 2) then
	me.AddExp(30000000) -- 10tr EXp
	me.Msg("Chúc mừng bạn nhận được phần thưởng lần <color=red>thứ ".. nCount+1 .."<color>!!!");
	elseif (nCount == 3) then
	me.AddExp(30000000) -- 10tr EXp
	me.Msg("Chúc mừng bạn nhận được phần thưởng lần <color=red>thứ ".. nCount+1 .."<color>!!!");
	elseif (nCount == 4) then
	me.AddExp(30000000) -- 10tr EXp
	me.Msg("Chúc mừng bạn nhận được phần thưởng lần <color=red>thứ ".. nCount+1 .."<color>!!!");
	end
	me.Msg(string.format("Mỗi 30 phút online mỗi ngày có thể nhận thưởng, tối đa 2 lần. Bạn đã nhận được phần thưởng hàng ngày lần <color=yellow>%d<color>",nCount + 1));
	me.SetTask(3000, 2, nCount + 1);
	local nHourS = tonumber(GetLocalDate("%Y%m%d%H%M%S"));
	local nSec3 = Lib:GetDate2Time(nHourS);
	me.SetTask(3000, 3, nSec3);
end

