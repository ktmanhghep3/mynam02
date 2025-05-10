local tbDoiDBL = {};
SpecialEvent.DoiDBL = tbDoiDBL;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 20,1,475,1),}, 1},--Sen Mẫu Đơn
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,289,1),}, 1},--Lệnh bài Thương hội (Đại tướng Tống Kim)
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,289,2),}, 1},--Lệnh bài Thương hội (Phó tướng Tống Kim)
	},
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,289,3),}, 1},--Lệnh bài Thương hội (Thống lĩnh Tống Kim)
	},

	[5] = {
		{{string.format("%s,%s,%s,%s", 20,1,475,1),}, 1},--Sen Mẫu Đơn
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,289,1),}, 1},--Lệnh bài Thương hội (Đại tướng Tống Kim)
	},
	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,289,2),}, 1},--Lệnh bài Thương hội (Phó tướng Tống Kim)
	},
	
};



function tbDoiDBL:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>- Đổi Danh Bổ Lệnh (DBL).\n- Đổi Lệnh Bài Nghĩa Quân (LBNQ)\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>1 Sen Mẫu Đơn = 10 DBL", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>1 Lệnh bài Đại tướng Tống Kim = 5 DBL", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>1 Lệnh bài Phó tướng Tống Kim = 3 DBL", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>1 Lệnh bài Thống lĩnh Tống Kim = 1 DBL", self.LuaChon, self, 4});

	table.insert(tbOpt, 5, {"<color=yellow>1 Sen Mẫu Đơn = 1 LBNQ", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=yellow>1 Lệnh bài Đại tướng Tống Kim = 1 LBNQ", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<color=yellow>1 Lệnh bài Phó tướng Tống Kim = 1 LBNQ", self.LuaChon, self, 7});

	
	Dialog:Say(szMsg, tbOpt);
end


function tbDoiDBL:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>- Đổi Danh Bổ Lệnh (DBL).\n- Đổi Lệnh Bài Nghĩa Quân (LBNQ)\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Đổi 10 Danh Bổ Lệnh<color>\n<color=lightgreen>Đặt vào:\n 1 Sen Mẫu Đơn<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đổi 5 Danh Bổ Lệnh<color>\n<color=lightgreen>Đặt vào:\n 1 Lệnh bài Đại tướng Tống Kim<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Đổi 3 Danh Bổ Lệnh<color>\n<color=lightgreen>Đặt vào:\n 1 Lệnh bài Phó tướng Tống Kim<color>";
	end;	
	if (nValue == 4) then
		szMsg = "<color=green>Đổi 2 Danh Bổ Lệnh<color>\n<color=lightgreen>Đặt vào:\n 1 Lệnh bài Thống lĩnh Tống Kim<color>";
	end;

	if (nValue == 5) then
		szMsg = "<color=green>Đổi 1 Lệnh Bài Nghĩa Quân<color>\n<color=lightgreen>Đặt vào:\n 1 Sen Mẫu Đơn<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=green>Đổi 1 Lệnh Bài Nghĩa Quân<color>\n<color=lightgreen>Đặt vào:\n 1 Lệnh bài Đại tướng Tống Kim<color>";
	end;
	if (nValue == 7) then
		szMsg = "<color=green>Đổi 1 Lệnh Bài Nghĩa Quân<color>\n<color=lightgreen>Đặt vào:\n 1 Lệnh bài Phó tướng Tống Kim<color>";
	end;	
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiDBL:OnOpenGiftOk(nValue, tbDoiDBLObj)
	local tbDoiDBLList	= {};
	for _, pItem in pairs(tbDoiDBLObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbDoiDBLList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbDoiDBLList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbDoiDBLObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.AddStackItem(18,1,190,1,{bForceBind=1,},10);--Danh Bổ Lệnh
	end
	
	if (nValue == 2) then
		me.AddStackItem(18,1,190,1,{bForceBind=1,},5);--Danh Bổ Lệnh
	end
	
	if (nValue == 3) then
		me.AddStackItem(18,1,190,1,{bForceBind=1,},3);--Danh Bổ Lệnh
	end

	if (nValue == 4) then
		me.AddStackItem(18,1,190,1,{bForceBind=1,},1);--Danh Bổ Lệnh
	end
	
	if (nValue == 5) then
		me.AddStackItem(18,1,84,1,{bForceBind=1,},1);--Lệnh Bài Nghĩa Quân
	end
	if (nValue == 6) then
		me.AddStackItem(18,1,84,1,{bForceBind=1,},1);--Lệnh Bài Nghĩa Quân
	end
	if (nValue == 7) then
		me.AddStackItem(18,1,84,1,{bForceBind=1,},1);--Lệnh Bài Nghĩa Quân
	end
	
end;

function tbDoiDBL:ChechItem(pItem, tbDoiDBLList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbDoiDBLList do
		local tbI = tbDoiDBLList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;