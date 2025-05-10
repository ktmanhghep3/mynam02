local tbDoiTrangBi_VoCucDaiVien = {};
SpecialEvent.DoiTrangBi_VoCucDaiVien = tbDoiTrangBi_VoCucDaiVien;


local REQUIRE_ITEM = 
{ 

[1] = {--Nguyên Liệu
{ {
string.format("%s,%s,%s,%s",4,9,3020,10), --Nón Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,3,3020,10), --Áo Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,8,3020,10), --Lưng Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,10,3020,10), --Tay Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,7,3020,10), --Giày Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,5,3020,10), --Liên Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,4,3020,10), --Nhẫn Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,11,3020,10), --Bội Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,6,3020,10), --Phù Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,9,3021,10), --Nón Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,3,3021,10), --Áo Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,8,3021,10), --Lưng Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,10,3021,10), --Tay Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,7,3021,10), --Giày Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,5,3021,10), --Liên Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,4,3021,10), --Nhẫn Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,11,3021,10), --Bội Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,6,3021,10), --Phù Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,9,3022,10), --Nón Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,3,3022,10), --Áo Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,8,3022,10), --Lưng Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,10,3022,10), --Tay Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,7,3022,10), --Giày Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,5,3022,10), --Liên Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,4,3022,10), --Nhẫn Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,11,3022,10), --Bội Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,6,3022,10), --Phù Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,9,3023,10), --Nón Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,3,3023,10), --Áo Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,8,3023,10), --Lưng Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,10,3023,10), --Tay Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,7,3023,10), --Giày Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,5,3023,10), --Liên Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,4,3023,10), --Nhẫn Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,11,3023,10), --Bội Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,6,3023,10), --Phù Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,9,3024,10), --Nón Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,3,3024,10), --Áo Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,8,3024,10), --Lưng Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,10,3024,10), --Tay Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,7,3024,10), --Giày Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,5,3024,10), --Liên Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,4,3024,10), --Nhẫn Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,11,3024,10), --Bội Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,6,3024,10), --Phù Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,9,3025,10), --Nón Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,3,3025,10), --Áo Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,8,3025,10), --Lưng Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,10,3025,10), --Tay Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,7,3025,10), --Giày Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,5,3025,10), --Liên Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,4,3025,10), --Nhẫn Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,11,3025,10), --Bội Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,6,3025,10), --Phù Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,9,3026,10), --Nón Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,3,3026,10), --Áo Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,8,3026,10), --Lưng Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,10,3026,10), --Tay Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,7,3026,10), --Giày Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,5,3026,10), --Liên Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,4,3026,10), --Nhẫn Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,11,3026,10), --Bội Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,6,3026,10), --Phù Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,9,3027,10), --Nón Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,3,3027,10), --Áo Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,8,3027,10), --Lưng Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,10,3027,10), --Tay Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,7,3027,10), --Giày Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,5,3027,10), --Liên Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,4,3027,10), --Nhẫn Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,11,3027,10), --Bội Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,6,3027,10), --Phù Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,9,3028,10), --Nón Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,3,3028,10), --Áo Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,8,3028,10), --Lưng Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,10,3028,10), --Tay Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,7,3028,10), --Giày Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,5,3028,10), --Liên Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,4,3028,10), --Nhẫn Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,11,3028,10), --Bội Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,6,3028,10), --Phù Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,9,3029,10), --Nón Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,3,3029,10), --Áo Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,8,3029,10), --Lưng Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,10,3029,10), --Tay Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,7,3029,10), --Giày Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,5,3029,10), --Liên Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,4,3029,10), --Nhẫn Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,11,3029,10), --Bội Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,6,3029,10), --Phù Cấp 3- Nữ - Thổ
},1},
},




};

function tbDoiTrangBi_VoCucDaiVien:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>T.Bị Đại Viễn Đổi Rương<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Trang Bị Đại Viễn<color> <color=red>→ <color=green>Rương Đại Viễn", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbDoiTrangBi_VoCucDaiVien:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>T.Bị Đại Viễn Đổi Rương<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Trang bị Đại Viễn bất kỳ<color><color=yellow>\n→ Nhận lại ngẫu nhiên: \n10-15-25-30-50 Rương Đại Viễn.<color>";
	end;


	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiTrangBi_VoCucDaiVien:OnOpenGiftOk(nValue, tbItemObj)
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
		Dialog:Say("\nNguyên Liệu đặt vào không đúng số lượng hoặc nhiều hơn 1 loại, hãy xem lại!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
--add thưởng--
--1--
	if (nValue == 1) then
	
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	nRand = MathRandom(1, 1000);

	local tbRate = {500, 450, 50};
	local tbAward = {1 ,2, 3};

	for i = 1, 3 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end

	if (tbAward[nIndex]==1) then
		me.AddStackItem(18,1,3935,1,{bForceBind=1,},10);--Rương Trang Bị Vô Cực - Đại Viễn

	elseif (tbAward[nIndex]==2) then
		me.AddStackItem(18,1,3935,1,{bForceBind=1,},15);--Rương Trang Bị Vô Cực - Đại Viễn
		
	elseif (tbAward[nIndex]==3) then
		me.AddStackItem(18,1,3935,1,{bForceBind=1,},25);--Rương Trang Bị Vô Cực - Đại Viễn
	end

	end	

end;

function tbDoiTrangBi_VoCucDaiVien:ChechItem(pItem, tbItemList, tbCountList)
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