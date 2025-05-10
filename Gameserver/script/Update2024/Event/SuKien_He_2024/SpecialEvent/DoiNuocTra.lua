local tbEventHe2024_DoiNuocTra = {};
SpecialEvent.DoiNuocTra = tbEventHe2024_DoiNuocTra;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 5},--Thẻ Tân Thủ
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 10},--Thẻ Tân Thủ
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 20},--Thẻ Tân Thủ
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 5},--Thẻ Cao Thủ
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 10},--Thẻ Cao Thủ
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 20},--Thẻ Cao Thủ
	},

	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 5},--Ngôi Sao May Mắn
	},
	[8] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 10},--Ngôi Sao May Mắn
	},
	[9] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 20},--Ngôi Sao May Mắn
	},
};

function tbEventHe2024_DoiNuocTra:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Đổi Nước Trà Event\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=green>5 Thẻ Tân Thủ đổi 500 Nước Trà", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=green>10 Thẻ Tân Thủ đổi 1000 Nước Trà", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=green>20 Thẻ Tân Thủ đổi 2000 Nước Trà", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=gold>5 Thẻ Cao Thủ đổi 500 Nước Trà", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=gold>10 Thẻ Cao Thủ đổi 1000 Nước Trà", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=gold>20 Thẻ Cao Thủ đổi 2000 Nước Trà", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<color=yellow>5 Ngôi Sao May Mắn đổi 25 Nước Trà", self.LuaChon, self, 7});
	table.insert(tbOpt, 8, {"<color=yellow>10 Ngôi Sao May Mắn đổi 50 Nước Trà", self.LuaChon, self, 8});
	table.insert(tbOpt, 9, {"<color=yellow>20 Ngôi Sao May Mắn đổi 100 Nước Trà", self.LuaChon, self, 9});


	
	Dialog:Say(szMsg, tbOpt);
end


function tbEventHe2024_DoiNuocTra:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Đổi Nước Trà Event\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Đổi 500 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 5 Thẻ Tân Thủ.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đổi 1000 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 10 Thẻ Tân Thủ.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Đổi 1000 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 20 Thẻ Tân Thủ.<color>";
	end;
	
	if (nValue == 4) then
		szMsg = "<color=green>Đổi 500 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 5 Thẻ Cao Thủ.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=green>Đổi 1000 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 10 Thẻ Cao Thủ.<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=green>Đổi 1000 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 20 Thẻ Cao Thủ.<color>";
	end;

	if (nValue == 7) then
		szMsg = "<color=green>Đổi 25 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 5 Ngôi Sao May Mắn.<color>";
	end;
	if (nValue == 8) then
		szMsg = "<color=green>Đổi 50 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 10 Ngôi Sao May Mắn.<color>";
	end;
	if (nValue == 9) then
		szMsg = "<color=green>Đổi 100 Nước Trà<color>\n<color=lightgreen>Đặt vào:\n 20 Ngôi Sao May Mắn.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbEventHe2024_DoiNuocTra:OnOpenGiftOk(nValue, tbEventHe2024_DoiNuocTraObj)
	local tbEventHe2024_DoiNuocTraList	= {};
	for _, pItem in pairs(tbEventHe2024_DoiNuocTraObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbEventHe2024_DoiNuocTraList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbEventHe2024_DoiNuocTraList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbEventHe2024_DoiNuocTraObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},500);--Nước Trà
	end
	
	if (nValue == 2) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},1000);--Nước Trà
	end
	
	if (nValue == 3) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},2000);--Nước Trà
	end

	if (nValue == 4) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},500);--Nước Trà
	end
	
	if (nValue == 5) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},1000);--Nước Trà
	end
	
	if (nValue == 6) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},2000);--Nước Trà

	end

	if (nValue == 7) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},25);--Nước Trà
	end
	
	if (nValue == 8) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},50);--Nước Trà
	end
	
	if (nValue == 9) then
		me.AddStackItem(18,1,3400,1,{bForceBind=1,},100);--Nước Trà
	end
	
end;

function tbEventHe2024_DoiNuocTra:ChechItem(pItem, tbEventHe2024_DoiNuocTraList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbEventHe2024_DoiNuocTraList do
		local tbI = tbEventHe2024_DoiNuocTraList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;