local tbGhep_BanhChung = {};
SpecialEvent.Ghep_BanhChung = tbGhep_BanhChung;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3030,1),}, 25},--Gạo nếp
		{{string.format("%s,%s,%s,%s", 18,1,3030,2),}, 25},--Đậu xanh
		{{string.format("%s,%s,%s,%s", 18,1,3030,3),}, 25},--Thịt ba chỉ
		{{string.format("%s,%s,%s,%s", 18,1,3030,4),}, 500},--Lá dong
	},

};

function tbGhep_BanhChung:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Ghép Bánh Chưng - Sự kiện Tết 2024:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Ghép 25 Bánh Chưng", self.LuaChon, self, 1});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbGhep_BanhChung:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Ghép Bánh Chưng - Sự kiện Tết 2024:<color>";
	if (nValue == 1) then
		szMsg = "<color=yellow>Ghép 25 Bánh Chưng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 25 Gạo nếp.\n- 25 Đậu xanh.\n- 25 Thịt ba chỉ.\n- 500 Lá dong.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbGhep_BanhChung:OnOpenGiftOk(nValue, tbGhep_BanhChungObj)
	local tbGhep_BanhChungList	= {};
	for _, pItem in pairs(tbGhep_BanhChungObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbGhep_BanhChungList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbGhep_BanhChungList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbGhep_BanhChungObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuongBanhChung = 25;
		me.AddStackItem(18,1,3030,5,{bForceBind=1,},nSoLuongBanhChung);--Chuông Vàng Trung Thu
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nSoLuongBanhChung.."<color> Bánh Chưng của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	
end;

function tbGhep_BanhChung:ChechItem(pItem, tbGhep_BanhChungList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbGhep_BanhChungList do
		local tbI = tbGhep_BanhChungList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;