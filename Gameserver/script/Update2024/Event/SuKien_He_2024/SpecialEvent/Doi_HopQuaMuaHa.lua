local tbEventHe2024_Doi_HopQuaMuaHa = {};
SpecialEvent.Doi_HopQuaMuaHa = tbEventHe2024_Doi_HopQuaMuaHa;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 100},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3010,1),}, 30},--Lục bảo
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 200},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3010,1),}, 60},--Lục bảo
	},
	
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3010,1),}, 150},--Lục bảo
	},
	
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 1000},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3010,1),}, 300},--Lục bảo
	},


};

function tbEventHe2024_Doi_HopQuaMuaHa:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Đổi Hộp Quà Mùa Hạ Sự kiện Event Hè\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=green>Đổi: 10 Hộp Quà Mùa Hạ", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=green>Đổi: 20 Hộp Quà Mùa Hạ", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=green>Đổi: 50 Hộp Quà Mùa Hạ", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=green>Đổi: 100 Hộp Quà Mùa Hạ", self.LuaChon, self, 4});
	Dialog:Say(szMsg, tbOpt);
end


function tbEventHe2024_Doi_HopQuaMuaHa:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Đổi Hộp Quà Mùa Hạ Sự kiện Event Hè\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Đổi: 10 Hộp Quà Mùa Hạ<color>\n<color=lightgreen>Đặt vào:\n 100: Nước Trà.\n 30: Lục bảo.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đổi: 10 Hộp Quà Mùa Hạ<color>\n<color=lightgreen>Đặt vào:\n 200: Nước Trà.\n 60: Lục bảo.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Đổi: 10 Hộp Quà Mùa Hạ<color>\n<color=lightgreen>Đặt vào:\n 500: Nước Trà.\n 150: Lục bảo.<color>";
	end;
	if (nValue == 4) then
		szMsg = "<color=green>Đổi: 10 Hộp Quà Mùa Hạ<color>\n<color=lightgreen>Đặt vào:\n 1000: Nước Trà.\n 300: Lục bảo.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbEventHe2024_Doi_HopQuaMuaHa:OnOpenGiftOk(nValue, tbEventHe2024_Doi_HopQuaMuaHaObj)
	local tbEventHe2024_Doi_HopQuaMuaHaList	= {};
	for _, pItem in pairs(tbEventHe2024_Doi_HopQuaMuaHaObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbEventHe2024_Doi_HopQuaMuaHaList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbEventHe2024_Doi_HopQuaMuaHaList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbEventHe2024_Doi_HopQuaMuaHaObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuong_HopQua = 10;
		me.AddStackItem(18,1,3600,1,{bForceBind=1,},nSoLuong_HopQua);--Hộp Quà Mùa Hạ
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuong_HopQua.."<color> Hộp Quà Mùa Hạ của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 2) then
		local nSoLuong_HopQua = 20;
		me.AddStackItem(18,1,3600,1,{bForceBind=1,},nSoLuong_HopQua);--Hộp Quà Mùa Hạ
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuong_HopQua.."<color> Hộp Quà Mùa Hạ của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 3) then
		local nSoLuong_HopQua = 50;
		me.AddStackItem(18,1,3600,1,{bForceBind=1,},nSoLuong_HopQua);--Hộp Quà Mùa Hạ
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuong_HopQua.."<color> Hộp Quà Mùa Hạ của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		local nSoLuong_HopQua = 100;
		me.AddStackItem(18,1,3600,1,{bForceBind=1,},nSoLuong_HopQua);--Hộp Quà Mùa Hạ
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuong_HopQua.."<color> Trà Hồng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

end;

function tbEventHe2024_Doi_HopQuaMuaHa:ChechItem(pItem, tbEventHe2024_Doi_HopQuaMuaHaList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbEventHe2024_Doi_HopQuaMuaHaList do
		local tbI = tbEventHe2024_Doi_HopQuaMuaHaList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;