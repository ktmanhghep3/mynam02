local tbEventHe2024_Ghep_Tra = {};
SpecialEvent.Ghep_Tra = tbEventHe2024_Ghep_Tra;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 5000},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,2),}, 2500},--Thanh Sâm
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 12500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,2),}, 6250},--Thanh Sâm
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 25000},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,2),}, 12500},--Thanh Sâm
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,3),}, 150},--Hồng Sâm
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 1250},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,3),}, 375},--Hồng Sâm
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 2500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,3),}, 750},--Hồng Sâm
	},

	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,4),}, 200},--Hoàng Sâm
	},
	[8] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 1250},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,4),}, 500},--Hoàng Sâm
	},
	[9] = {
		{{string.format("%s,%s,%s,%s", 18,1,3400,1),}, 2500},--Nước Trà
		{{string.format("%s,%s,%s,%s", 18,1,3400,4),}, 1000},--Hoàng Sâm
	},
};

function tbEventHe2024_Ghep_Tra:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Ghép các loại Trà Sự kiện Event Hè\nMời lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=green>Ghép: 10 Trà Thanh Sâm", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=green>Ghép: 25 Trà Thanh Sâm", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=green>Ghép: 50 Trà Thanh Sâm", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=pink>Ghép: 10 Trà Hồng Sâm", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=pink>Ghép: 25 Trà Hồng Sâm", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=pink>Ghép: 50 Trà Hồng Sâm", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<color=yellow>Ghép: 10 Trà Hoàng Sâm", self.LuaChon, self, 7});
	table.insert(tbOpt, 8, {"<color=yellow>Ghép: 25 Trà Hoàng Sâm", self.LuaChon, self, 8});
	table.insert(tbOpt, 9, {"<color=yellow>Ghép: 50 Trà Hoàng Sâm", self.LuaChon, self, 9});


	
	Dialog:Say(szMsg, tbOpt);
end


function tbEventHe2024_Ghep_Tra:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Ghép các loại Trà Sự kiện Event Hè\nMời lựa chọn:<color>";
	
	if (nValue == 1) then
		szMsg = "<color=green>Ghép: 10 Trà Thanh Sâm<color>\n<color=lightgreen>Đặt vào:\n 5000: Nước Trà.\n 2500: Thanh Sâm.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Ghép: 25 Trà Thanh Sâm<color>\n<color=lightgreen>Đặt vào:\n 12500: Nước Trà.\n 6250: Thanh Sâm.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=green>Ghép: 50 Trà Thanh Sâm<color>\n<color=lightgreen>Đặt vào:\n 25000: Nước Trà.\n 12500: Thanh Sâm.<color>";
	end;
	
	if (nValue == 4) then
		szMsg = "<color=pink>Ghép: 10 Trà Hồng Sâm<color>\n<color=lightgreen>Đặt vào:\n 500: Nước Trà.\n 150: Hồng Sâm.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=pink>Ghép: 25 Trà Hồng Sâm<color>\n<color=lightgreen>Đặt vào:\n 1250: Nước Trà.\n 375: Hồng Sâm.<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=pink>Ghép: 50 Trà Hồng Sâm<color>\n<color=lightgreen>Đặt vào:\n 2500: Nước Trà.\n 750: Hồng Sâm.<color>";
	end;

	if (nValue == 7) then
		szMsg = "<color=yellow>Ghép: 10 Trà Hoàng Sâm<color>\n<color=lightgreen>Đặt vào:\n 500: Nước Trà.\n 200: Hoàng Sâm.<color>";
	end;
	if (nValue == 8) then
		szMsg = "<color=yellow>Ghép: 25 Trà Hoàng Sâm<color>\n<color=lightgreen>Đặt vào:\n 1250: Nước Trà.\n 500: Hoàng Sâm.<color>";
	end;
	if (nValue == 9) then
		szMsg = "<color=yellow>Ghép: 50 Trà Hoàng Sâm<color>\n<color=lightgreen>Đặt vào:\n 2500: Nước Trà.\n 1000: Hoàng Sâm.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbEventHe2024_Ghep_Tra:OnOpenGiftOk(nValue, tbEventHe2024_Ghep_TraObj)
	local tbEventHe2024_Ghep_TraList	= {};
	for _, pItem in pairs(tbEventHe2024_Ghep_TraObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbEventHe2024_Ghep_TraList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbEventHe2024_Ghep_TraList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbEventHe2024_Ghep_TraObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuong_Tra = 10;
		me.AddStackItem(18,1,3401,2,{bForceBind=1,},nSoLuong_Tra);--Trà Thanh Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Thanh Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 2) then
		local nSoLuong_Tra = 25;
		me.AddStackItem(18,1,3401,2,{bForceBind=1,},nSoLuong_Tra);--Trà Thanh Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Thanh Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 3) then
		local nSoLuong_Tra = 50;
		me.AddStackItem(18,1,3401,2,{bForceBind=1,},nSoLuong_Tra);--Trà Thanh Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Thanh Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		local nSoLuong_Tra = 10;
		me.AddStackItem(18,1,3401,3,{bForceBind=1,},nSoLuong_Tra);--Trà Hồng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hồng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 5) then
		local nSoLuong_Tra = 25;
		me.AddStackItem(18,1,3401,3,{bForceBind=1,},nSoLuong_Tra);--Trà Hồng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hồng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 6) then
		local nSoLuong_Tra = 50;
		me.AddStackItem(18,1,3401,3,{bForceBind=1,},nSoLuong_Tra);--Trà Hồng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hồng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 7) then
		local nSoLuong_Tra = 10;
		me.AddStackItem(18,1,3401,4,{bForceBind=1,},nSoLuong_Tra);--Trà Hoàng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hoàng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 8) then
		local nSoLuong_Tra = 25;
		me.AddStackItem(18,1,3401,4,{bForceBind=1,},nSoLuong_Tra);--Trà Hoàng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hoàng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 9) then
		local nSoLuong_Tra = 50;
		me.AddStackItem(18,1,3401,4,{bForceBind=1,},nSoLuong_Tra);--Trà Hoàng Sâm
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuong_Tra.."<color> Trà Hoàng Sâm của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
end;

function tbEventHe2024_Ghep_Tra:ChechItem(pItem, tbEventHe2024_Ghep_TraList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbEventHe2024_Ghep_TraList do
		local tbI = tbEventHe2024_Ghep_TraList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;