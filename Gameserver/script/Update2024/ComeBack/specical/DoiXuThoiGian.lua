local tbEventHe2024_DoiXuThoiGian = {};
SpecialEvent.DoiXuThoiGian = tbEventHe2024_DoiXuThoiGian;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 100},--Thẻ Tân Thủ
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 200},--Thẻ Tân Thủ
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3102,1),}, 500},--Thẻ Tân Thủ
	},


	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 100},--Thẻ Cao Thủ
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 200},--Thẻ Cao Thủ
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3103,1),}, 500},--Thẻ Cao Thủ
	},


};

function tbEventHe2024_DoiXuThoiGian:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Đổi Xu Thời Gian\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=green>100 Thẻ Tân Thủ đổi 10 Xu Thời Gian", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=green>200 Thẻ Tân Thủ đổi 20 Xu Thời Gian", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=green>500 Thẻ Tân Thủ đổi 50 Xu Thời Gian", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=gold>100 Thẻ Cao Thủ đổi 10 Xu Thời Gian", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=gold>200 Thẻ Cao Thủ đổi 20 Xu Thời Gian", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=gold>500 Thẻ Cao Thủ đổi 50 Xu Thời Gian", self.LuaChon, self, 6});


	
	Dialog:Say(szMsg, tbOpt);
end


function tbEventHe2024_DoiXuThoiGian:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Đổi Xu Thời Gian\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Đổi 10 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 100 Thẻ Tân Thủ.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đổi 20 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 200 Thẻ Tân Thủ.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Đổi 50 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 500 Thẻ Tân Thủ.<color>";
	end;
	
	if (nValue == 4) then
		szMsg = "<color=green>Đổi 10 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 100 Thẻ Cao Thủ.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=green>Đổi 20 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 200 Thẻ Cao Thủ.<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=green>Đổi 50 Xu Thời Gian<color>\n<color=lightgreen>Đặt vào:\n 500 Thẻ Cao Thủ.<color>";
	end;

	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbEventHe2024_DoiXuThoiGian:OnOpenGiftOk(nValue, tbEventHe2024_DoiXuThoiGianObj)
	local tbEventHe2024_DoiXuThoiGianList	= {};
	for _, pItem in pairs(tbEventHe2024_DoiXuThoiGianObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbEventHe2024_DoiXuThoiGianList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbEventHe2024_DoiXuThoiGianList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbEventHe2024_DoiXuThoiGianObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},10);--Xu Thời Gian
	end
	
	if (nValue == 2) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},20);--Xu Thời Gian
	end
	
	if (nValue == 3) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},50);--Xu Thời Gian
	end

	if (nValue == 4) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},10);--Xu Thời Gian
	end
	
	if (nValue == 5) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},20);--Xu Thời Gian
	end
	
	if (nValue == 6) then
		me.AddStackItem(18,1,3607,1,{bForceBind=1,},50);--Xu Thời Gian

	end

	
end;

function tbEventHe2024_DoiXuThoiGian:ChechItem(pItem, tbEventHe2024_DoiXuThoiGianList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbEventHe2024_DoiXuThoiGianList do
		local tbI = tbEventHe2024_DoiXuThoiGianList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;