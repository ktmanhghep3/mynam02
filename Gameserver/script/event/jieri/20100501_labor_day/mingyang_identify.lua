-- 文件名　：mingyang_identify.lua
-- 创建者　：jiazhenwei
-- 创建时间：2010-03-31 14:16:07
-- 描  述  ：

local tbItem 	= Item:GetClass("mingyang_identify");
SpecialEvent.LaborDay = SpecialEvent.LaborDay or {};
local LaborDay = SpecialEvent.LaborDay or {};

function tbItem:OnUse()
	local nData = tonumber(GetLocalDate("%Y%m%d"));
	--if nData < LaborDay.OpenTime or nData > LaborDay.CloseTime then
		--Dialog:Say("没有在活动期间，您还不能使用该物品！", {"ok 5"});
		--return;
	--end
	Dialog:Say("这块牌子您可以加入收集册来换取奖励，有何想法？",			
			{"ok", self.Add2Book, self,  it.dwId},
			{"ok 2"}
			);
end

--加入收集册
function tbItem:Add2Book(nItemId)
	--背包判断
	if me.CountFreeBagCell() < 2 then
		Dialog:Say("需要1格背包空间，整理下再来！",{"ok 4"});
		return;
	end
	local pItem = KItem.GetObjById(nItemId);
	if pItem then		
		local tbItemEx = me.FindItemInAllPosition(unpack(LaborDay.tbmingyang_book));
		if #tbItemEx == 0 then
			me.AddItem(unpack(LaborDay.tbmingyang_book));			
		end
		local nNum = pItem.nLevel;
		local nFlag = me.GetTask(LaborDay.TASKID_GROUP,LaborDay.TASKID_BOOK+ nNum - 1);
		if nFlag == 1 then
			Dialog:Say("Th??ng hi?u này ?? t?n t?i trong b? s?u t?p c?a b?n và kh?ng th? thêm vào.",{"ok 3"});
			return;
		end
		me.SetTask(LaborDay.TASKID_GROUP, LaborDay.TASKID_BOOK + nNum - 1, 1);
		pItem.Delete(me);
	end	
end
