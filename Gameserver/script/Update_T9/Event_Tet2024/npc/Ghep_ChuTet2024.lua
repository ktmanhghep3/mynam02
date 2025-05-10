local tbGhep_ChuTet2024 = {};
SpecialEvent.Ghep_ChuTet2024 = tbGhep_ChuTet2024;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,1),}, 1},--Chữ: Năm
		{{string.format("%s,%s,%s,%s", 18,1,3032,2),}, 1},--Chữ: Mới
		{{string.format("%s,%s,%s,%s", 18,1,3032,3),}, 1},--Chữ: Giáp
		{{string.format("%s,%s,%s,%s", 18,1,3032,4),}, 1},--Chữ: Thìn
		{{string.format("%s,%s,%s,%s", 18,1,3032,5),}, 1},--Chữ: 2024
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,1),}, 5},--Chữ: Năm
		{{string.format("%s,%s,%s,%s", 18,1,3032,2),}, 5},--Chữ: Mới
		{{string.format("%s,%s,%s,%s", 18,1,3032,3),}, 5},--Chữ: Giáp
		{{string.format("%s,%s,%s,%s", 18,1,3032,4),}, 5},--Chữ: Thìn
		{{string.format("%s,%s,%s,%s", 18,1,3032,5),}, 5},--Chữ: 2024
	},

	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,1),}, 10},--Chữ: Năm
		{{string.format("%s,%s,%s,%s", 18,1,3032,2),}, 10},--Chữ: Mới
		{{string.format("%s,%s,%s,%s", 18,1,3032,3),}, 10},--Chữ: Giáp
		{{string.format("%s,%s,%s,%s", 18,1,3032,4),}, 10},--Chữ: Thìn
		{{string.format("%s,%s,%s,%s", 18,1,3032,5),}, 10},--Chữ: 2024
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,1),}, 20},--Chữ: Năm
		{{string.format("%s,%s,%s,%s", 18,1,3032,2),}, 20},--Chữ: Mới
		{{string.format("%s,%s,%s,%s", 18,1,3032,3),}, 20},--Chữ: Giáp
		{{string.format("%s,%s,%s,%s", 18,1,3032,4),}, 20},--Chữ: Thìn
		{{string.format("%s,%s,%s,%s", 18,1,3032,5),}, 20},--Chữ: 2024
	},

	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,1),}, 50},--Chữ: Năm
		{{string.format("%s,%s,%s,%s", 18,1,3032,2),}, 50},--Chữ: Mới
		{{string.format("%s,%s,%s,%s", 18,1,3032,3),}, 50},--Chữ: Giáp
		{{string.format("%s,%s,%s,%s", 18,1,3032,4),}, 50},--Chữ: Thìn
		{{string.format("%s,%s,%s,%s", 18,1,3032,5),}, 50},--Chữ: 2024
	},

};

function tbGhep_ChuTet2024:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Phong Chữ Sự Kiện Tết - Sự kiện Tết 2024:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Ghép 1 Phong Chữ Sự Kiện Tết", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>Ghép 5 Phong Chữ Sự Kiện Tết", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>Ghép 10 Phong Chữ Sự Kiện Tết", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>Ghép 20 Phong Chữ Sự Kiện Tết", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=yellow>Ghép 50 Phong Chữ Sự Kiện Tết", self.LuaChon, self, 5});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbGhep_ChuTet2024:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Ghép Phong Chữ Sự Kiện Tết - Sự kiện Tết 2024:<color>";
	if (nValue == 1) then
		szMsg = "<color=yellow>Ghép 1 Phong Chữ Sự Kiện Tết:<color>\n<color=pink>Đặt vào:\n<color=cyan>- 1 Chữ: Năm.\n- 1 Chữ: Mới.\n- 1 Chữ: Giáp.\n- 1 Chữ: Thìn.\n- 1 Chữ: 2024.<color>";
	end;

	if (nValue == 2) then
		szMsg = "<color=yellow>Ghép 5 Phong Chữ Sự Kiện Tết:<color>\n<color=pink>Đặt vào:\n<color=cyan>- 5 Chữ: Năm.\n- 5 Chữ: Mới.\n- 5 Chữ: Giáp.\n- 5 Chữ: Thìn.\n- 5 Chữ: 2024.<color>";
	end;

	if (nValue == 3) then
		szMsg = "<color=yellow>Ghép 10 Phong Chữ Sự Kiện Tết:<color>\n<color=pink>Đặt vào:\n<color=cyan>- 10 Chữ: Năm.\n- 10 Chữ: Mới.\n- 10 Chữ: Giáp.\n- 10 Chữ: Thìn.\n- 10 Chữ: 2024.<color>";
	end;

	if (nValue == 4) then
		szMsg = "<color=yellow>Ghép 20 Phong Chữ Sự Kiện Tết:<color>\n<color=pink>Đặt vào:\n<color=cyan>- 20 Chữ: Năm.\n- 20 Chữ: Mới.\n- 20 Chữ: Giáp.\n- 20 Chữ: Thìn.\n- 20 Chữ: 2024.<color>";
	end;

	if (nValue == 5) then
		szMsg = "<color=yellow>Ghép 50 Phong Chữ Sự Kiện Tết:<color>\n<color=pink>Đặt vào:\n<color=cyan>- 50 Chữ: Năm.\n- 50 Chữ: Mới.\n- 50 Chữ: Giáp.\n- 50 Chữ: Thìn.\n- 50 Chữ: 2024.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbGhep_ChuTet2024:OnOpenGiftOk(nValue, tbGhep_ChuTet2024Obj)
	local tbGhep_ChuTet2024List	= {};
	for _, pItem in pairs(tbGhep_ChuTet2024Obj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbGhep_ChuTet2024List) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbGhep_ChuTet2024List[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbGhep_ChuTet2024Obj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuong_PhongChu = 1;
		me.AddStackItem(18,1,3032,6,{bForceBind=1,},nSoLuong_PhongChu);--Năm Mới Giáp Thìn 2024
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_PhongChu.."<color> Phong Chữ Sự Kiện Tết của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		local nSoLuong_PhongChu = 5;
		me.AddStackItem(18,1,3032,6,{bForceBind=1,},nSoLuong_PhongChu);--Năm Mới Giáp Thìn 2024
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_PhongChu.."<color> Phong Chữ Sự Kiện Tết của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		local nSoLuong_PhongChu = 10;
		me.AddStackItem(18,1,3032,6,{bForceBind=1,},nSoLuong_PhongChu);--Năm Mới Giáp Thìn 2024
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_PhongChu.."<color> Phong Chữ Sự Kiện Tết của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		local nSoLuong_PhongChu = 20;
		me.AddStackItem(18,1,3032,6,{bForceBind=1,},nSoLuong_PhongChu);--Năm Mới Giáp Thìn 2024
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_PhongChu.."<color> Phong Chữ Sự Kiện Tết của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 5) then
		local nSoLuong_PhongChu = 50;
		me.AddStackItem(18,1,3032,6,{bForceBind=1,},nSoLuong_PhongChu);--Năm Mới Giáp Thìn 2024
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_PhongChu.."<color> Phong Chữ Sự Kiện Tết của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
end;

function tbGhep_ChuTet2024:ChechItem(pItem, tbGhep_ChuTet2024List, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbGhep_ChuTet2024List do
		local tbI = tbGhep_ChuTet2024List[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;