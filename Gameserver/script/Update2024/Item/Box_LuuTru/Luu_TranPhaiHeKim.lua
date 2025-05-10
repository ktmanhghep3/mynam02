local tbLuu_TranPhaiHeKim = {};
SpecialEvent.Luu_TranPhaiHeKim = tbLuu_TranPhaiHeKim;


tbLuu_TranPhaiHeKim.TaskGroupTP_ThieuLam = 4217; --Túi Trữ Trấn Phái Thiếu Lâm
tbLuu_TranPhaiHeKim.TGTP_ThieuLam21 = 1;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam22 = 2;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam23 = 3;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam24 = 4;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam25 = 5;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam26 = 6;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam27 = 7;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam28 = 8;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam29 = 9;
tbLuu_TranPhaiHeKim.TGTP_ThieuLam30 = 10;

tbLuu_TranPhaiHeKim.TaskGroupTP_ThienVuong = 4218; --Túi Trữ Trấn Phái Thiên Vương
tbLuu_TranPhaiHeKim.TGTP_ThienVuong21 = 1;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong22 = 2;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong23 = 3;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong24 = 4;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong25 = 5;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong26 = 6;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong27 = 7;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong28 = 8;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong29 = 9;
tbLuu_TranPhaiHeKim.TGTP_ThienVuong30 = 10;


local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 1,15,1250,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 21
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 1,15,1251,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 22
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 1,15,1252,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 23
	},
	[4] = {
		{{string.format("%s,%s,%s,%s", 1,15,1253,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 24
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 1,15,1254,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 25
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 1,15,1255,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 26
	},
	[7] = {
		{{string.format("%s,%s,%s,%s", 1,15,1256,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 27
	},
	[8] = {
		{{string.format("%s,%s,%s,%s", 1,15,1257,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 28
	},
	[9] = {
		{{string.format("%s,%s,%s,%s", 1,15,1258,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 29
	},
	[10] = {
		{{string.format("%s,%s,%s,%s", 1,15,1259,7),}, 1},--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 30
	},


	[11] = {
		{{string.format("%s,%s,%s,%s", 1,15,1260,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 21
	},
	[12] = {
		{{string.format("%s,%s,%s,%s", 1,15,1261,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 22
	},
	[13] = {
		{{string.format("%s,%s,%s,%s", 1,15,1262,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 23
	},
	[14] = {
		{{string.format("%s,%s,%s,%s", 1,15,1263,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 24
	},
	[15] = {
		{{string.format("%s,%s,%s,%s", 1,15,1264,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 25
	},
	[16] = {
		{{string.format("%s,%s,%s,%s", 1,15,1265,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 26
	},
	[17] = {
		{{string.format("%s,%s,%s,%s", 1,15,1266,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 27
	},
	[18] = {
		{{string.format("%s,%s,%s,%s", 1,15,1267,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 28
	},
	[19] = {
		{{string.format("%s,%s,%s,%s", 1,15,1268,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 29
	},
	[20] = {
		{{string.format("%s,%s,%s,%s", 1,15,1269,7),}, 1},--Tuyệt Thế Trấn Phái Thiên Vương Tầng 30
	},

};


function tbLuu_TranPhaiHeKim:OnDialog_TL()
	local szMsg = "<bclr=0,0,200><color=white>Mời lựa chọn cất Tuyệt kỹ: 2<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 21", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 22", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 23", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 24", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 25", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 26", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 27", self.LuaChon, self, 7});
	table.insert(tbOpt, 8, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 28", self.LuaChon, self, 8});
	table.insert(tbOpt, 9, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 29", self.LuaChon, self, 9});
	table.insert(tbOpt, 10, {"<color=yellow>Trấn Phái Thiếu Lâm Tầng 30", self.LuaChon, self, 10});

	Dialog:Say(szMsg, tbOpt);
end

function tbLuu_TranPhaiHeKim:OnDialog_TV()
	local szMsg = "<bclr=0,0,200><color=white>Mời lựa chọn cất Tuyệt kỹ:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};

	table.insert(tbOpt, 1, {"<color=yellow>Trấn Phái Thiên Vương Tầng 21", self.LuaChon, self, 11});
	table.insert(tbOpt, 2, {"<color=yellow>Trấn Phái Thiên Vương Tầng 22", self.LuaChon, self, 12});
	table.insert(tbOpt, 3, {"<color=yellow>Trấn Phái Thiên Vương Tầng 23", self.LuaChon, self, 13});
	table.insert(tbOpt, 4, {"<color=yellow>Trấn Phái Thiên Vương Tầng 24", self.LuaChon, self, 14});
	table.insert(tbOpt, 5, {"<color=yellow>Trấn Phái Thiên Vương Tầng 25", self.LuaChon, self, 15});
	table.insert(tbOpt, 6, {"<color=yellow>Trấn Phái Thiên Vương Tầng 26", self.LuaChon, self, 16});
	table.insert(tbOpt, 7, {"<color=yellow>Trấn Phái Thiên Vương Tầng 27", self.LuaChon, self, 17});
	table.insert(tbOpt, 8, {"<color=yellow>Trấn Phái Thiên Vương Tầng 28", self.LuaChon, self, 18});
	table.insert(tbOpt, 9, {"<color=yellow>Trấn Phái Thiên Vương Tầng 29", self.LuaChon, self, 19});
	table.insert(tbOpt, 10, {"<color=yellow>Trấn Phái Thiên Vương Tầng 30", self.LuaChon, self, 20});

	
	Dialog:Say(szMsg, tbOpt);
end

function tbLuu_TranPhaiHeKim:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Ghép các loại Trà Sự kiện Event Hè\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 4) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 7) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 8) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 9) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 10) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 11) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 12) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 13) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 14) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 15) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 16) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 17) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 18) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 19) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;
	if (nValue == 20) then
		szMsg = "<color=green>Đặt vào 1 Quyển Trấn Phái tương ứng.<color>";
	end;

	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;

function tbLuu_TranPhaiHeKim:OnOpenGiftOk(nValue, tbLuu_TranPhaiHeKimObj)
	local tbLuu_TranPhaiHeKimList	= {};
	for _, pItem in pairs(tbLuu_TranPhaiHeKimObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbLuu_TranPhaiHeKimList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbLuu_TranPhaiHeKimList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbLuu_TranPhaiHeKimObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
	local nTranPhaiIDTask = self.TGTP_ThieuLam21;
	local nTranPhai = me.GetTask(self.TaskGroupTP_ThieuLam,nTranPhaiIDTask);
	me.SetTask(self.TaskGroupTP_ThieuLam, nTranPhaiIDTask, nTranPhai + 1);
	end




end;

function tbLuu_TranPhaiHeKim:ChechItem(pItem, tbLuu_TranPhaiHeKimList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbLuu_TranPhaiHeKimList do
		local tbI = tbLuu_TranPhaiHeKimList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;