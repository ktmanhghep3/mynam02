local tbEventTrungThu2024_GhepLongDen = {};
SpecialEvent.EventTrungThu2024_GhepLongDen = tbEventTrungThu2024_GhepLongDen;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 500},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,2),}, 10},--Giấy Kiếng Thanh Đồng
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 1000},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,2),}, 20},--Giấy Kiếng Thanh Đồng
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 2500},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,2),}, 50},--Giấy Kiếng Thanh Đồng
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 100},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,3),}, 10},--Giấy Kiếng Hoàng Kim
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 500},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,3),}, 50},--Giấy Kiếng Hoàng Kim
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3925,1),}, 1000},--Khung Lồng Đèn
		{{string.format("%s,%s,%s,%s", 18,1,3925,3),}, 100},--Giấy Kiếng Hoàng Kim
	},



};

function tbEventTrungThu2024_GhepLongDen:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Ghép các loại Lồng Đèn Sự kiện Event Trung Thu 2024\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=green>Ghép 10 Lồng Đèn Thanh Đồng", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=green>Ghép 20 Lồng Đèn Thanh Đồng", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=green>Ghép 50 Lồng Đèn Thanh Đồng", self.LuaChon, self, 3});

	table.insert(tbOpt, 4, {"<color=yellow>Ghép 10 Lồng Đèn Hoàng Kim", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=yellow>Ghép 50 Lồng Đèn Hoàng Kim", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=yellow>Ghép 100 Lồng Đèn Hoàng Kim", self.LuaChon, self, 6});

	
	Dialog:Say(szMsg, tbOpt);
end


function tbEventTrungThu2024_GhepLongDen:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Ghép các loại Lồng Đèn Sự kiện Event Trung Thu 2024\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Ghép: 10 Lồng Đèn Thanh Đồng<color>\n<color=lightgreen>Đặt vào:\n 500: Khung Lồng Đèn.\n 10: Giấy Kiếng Thanh Đồng.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Ghép: 20 Lồng Đèn Thanh Đồng<color>\n<color=lightgreen>Đặt vào:\n 1000: Khung Lồng Đèn.\n 20: Giấy Kiếng Thanh Đồng.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Ghép: 50 Lồng Đèn Thanh Đồng<color>\n<color=lightgreen>Đặt vào:\n 2500: Khung Lồng Đèn.\n 50: Giấy Kiếng Thanh Đồng.<color>";
	end;

	if (nValue == 4) then
		szMsg = "<color=yellow>Ghép: 10 Lồng Đèn Hoàng Kim<color>\n<color=lightgreen>Đặt vào:\n 100: Khung Lồng Đèn.\n 10: Giấy Kiếng Hoàng Kim.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=yellow>Ghép: 50 Lồng Đèn Hoàng Kim<color>\n<color=lightgreen>Đặt vào:\n 500: Khung Lồng Đèn.\n 50: Giấy Kiếng Hoàng Kim.<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=yellow>Ghép: 100 Lồng Đèn Hoàng Kim<color>\n<color=lightgreen>Đặt vào:\n 1000: Khung Lồng Đèn.\n 100: Giấy Kiếng Hoàng Kim.<color>";
	end;



	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbEventTrungThu2024_GhepLongDen:OnOpenGiftOk(nValue, tbEventTrungThu2024_GhepLongDenObj)
	local tbEventTrungThu2024_GhepLongDenList	= {};
	for _, pItem in pairs(tbEventTrungThu2024_GhepLongDenObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbEventTrungThu2024_GhepLongDenList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbEventTrungThu2024_GhepLongDenList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbEventTrungThu2024_GhepLongDenObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuongEvent = 10;
		me.AddStackItem(18,1,3926,1,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Thanh Đồng
		--local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Thanh Đồng Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 2) then
		local nSoLuongEvent = 20;
		me.AddStackItem(18,1,3926,1,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Thanh Đồng
		--local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Thanh Đồng Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 3) then
		local nSoLuongEvent = 50;
		me.AddStackItem(18,1,3926,1,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Thanh Đồng
		--local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Thanh Đồng Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		local nSoLuongEvent = 10;
		me.AddStackItem(18,1,3926,2,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Hoàng Kim
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Hoàng Kim Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 5) then
		local nSoLuongEvent = 50;
		me.AddStackItem(18,1,3926,2,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Hoàng Kim
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Hoàng Kim Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 6) then
		local nSoLuongEvent = 100;
		me.AddStackItem(18,1,3926,2,{bForceBind=1,},nSoLuongEvent);--Lồng Đèn Hoàng Kim
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongEvent.."<color> Lồng Đèn Hoàng Kim Sự kiện Trung Thu 2024!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end






end;

function tbEventTrungThu2024_GhepLongDen:ChechItem(pItem, tbEventTrungThu2024_GhepLongDenList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbEventTrungThu2024_GhepLongDenList do
		local tbI = tbEventTrungThu2024_GhepLongDenList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;