
Require("\\script\\baibaoxiang\\baibaoxiang_def.lua");

local tbJinxiangziItem = Item:GetClass("jinxiangzi");

tbJinxiangziItem.TaskGroup = 4005;
tbJinxiangziItem.TaskID = 1;

function tbJinxiangziItem:OnUse()
	
	local nWeekOpen	= me.GetTask(Baibaoxiang.TASK_GROUP_ID, Baibaoxiang.TASK_BAIBAOXIANG_WEEKEND);
	
	if nWeekOpen >= 30 then
		me.Msg("Một tuần chỉ có thể mở 30 rương cao quý, vui lòng kiểm tra lại!");
		return 0;		
	end;
	
	if me.CountFreeBagCell() < 1 then
		me.Msg("Túi của bạn đã đầy, cần ít nhất 1 ô trống.");
		return 0;
	end
	
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	--Phần thưởng
	
	nWeekOpen = nWeekOpen + 1;
	me.SetTask(Baibaoxiang.TASK_GROUP_ID, Baibaoxiang.TASK_BAIBAOXIANG_WEEKEND, nWeekOpen);
	local SoRuong = me.GetTask(self.TaskGroup, self.TaskID);
	me.SetTask(self.TaskGroup, self.TaskID,SoRuong + 1);
	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(128);
	
	return 1;
end

function tbJinxiangziItem:WeekEvent()
	me.SetTask(Baibaoxiang.TASK_GROUP_ID, Baibaoxiang.TASK_BAIBAOXIANG_WEEKEND, 0);
end;

PlayerSchemeEvent:RegisterGlobalWeekEvent({tbJinxiangziItem.WeekEvent, tbJinxiangziItem});
