local tbTheSatThanVip1 = Npc:GetClass("TheSatThanVip1");

tbTheSatThanVip1.TaskGroup = 4025;
tbTheSatThanVip1.Task_ID_Vip = 3;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3011,1),}, 1},	--Chiến Tích Phù Văn
	},




};


function tbTheSatThanVip1:OnDialog()
local nLevel = me.GetSkillLevel(self.nSkill);
local szMsg = "<color=gold>[Nhận Tuyệt Kỹ VIP]<color>";

local tbOpt = {{"Kết thúc đối thoại..."},};
table.insert(tbOpt, 1, {"<color=yellow>Nhận Tuyệt Kỹ bằng <color=cyan>Thẻ Sát Thần 1<color>", self.LuaChon, self, 1});
	
	
Dialog:Say(szMsg, tbOpt);
end


function tbTheSatThanVip1:LuaChon(nValue)
local szMsg = "<color=gold>[Nhận Tuyệt Kỹ VIP]<color>";
local nLevel = me.GetSkillLevel(self.nSkill);	--Huy chương
	
	if (nValue == 1) then	
	szMsg = "<color=yellow>Đặt vào đây: \n<color=cyan>Thẻ Sát Thần 1<color><color>";
	end;
		

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;


function tbTheSatThanVip1:OnOpenGiftOk(nValue, tbItemObj)
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbItemList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbItemList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	--for _, pItem in pairs(tbItemObj) do
		--if me.DelItem(pItem[1]) ~= 1 then
			--return 0;
		--end;
	--end
	
---Phần thưởng---
	if (nValue == 1) then
	me.SetTask(self.TaskGroup, self.Task_ID_Vip, 1);
	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(87);
	end;
	
	

	
end;

function tbTheSatThanVip1:ChechItem(pItem, tbItemList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbItemList do
		local tbI = tbItemList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;