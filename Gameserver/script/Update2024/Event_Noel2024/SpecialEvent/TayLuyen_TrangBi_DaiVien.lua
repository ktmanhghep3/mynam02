local tbTayLuyen_DaiVien = {};
SpecialEvent.TayLuyen_DaiVien = tbTayLuyen_DaiVien;



local REQUIRE_ITEM = 
{ 
[1] = {--Trang Bị
{ {
string.format("%s,%s,%s,%s",4,9,3020,10),--Nón Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,3,3020,10),--Áo Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,8,3020,10),--Lưng Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,10,3020,10),--Tay Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,7,3020,10),--Giày Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,5,3020,10),--Liên Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,4,3020,10),--Nhẫn Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,11,3020,10),--Bội Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,6,3020,10),--Phù Cấp 3- Nam - Kim
string.format("%s,%s,%s,%s",4,9,3021,10),--Nón Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,3,3021,10),--Áo Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,8,3021,10),--Lưng Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,10,3021,10),--Tay Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,7,3021,10),--Giày Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,5,3021,10),--Liên Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,4,3021,10),--Nhẫn Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,11,3021,10),--Bội Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,6,3021,10),--Phù Cấp 3- Nữ - Kim
string.format("%s,%s,%s,%s",4,9,3022,10),--Nón Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,3,3022,10),--Áo Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,8,3022,10),--Lưng Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,10,3022,10),--Tay Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,7,3022,10),--Giày Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,5,3022,10),--Liên Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,4,3022,10),--Nhẫn Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,11,3022,10),--Bội Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,6,3022,10),--Phù Cấp 3- Nam - Mộc
string.format("%s,%s,%s,%s",4,9,3023,10),--Nón Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,3,3023,10),--Áo Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,8,3023,10),--Lưng Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,10,3023,10),--Tay Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,7,3023,10),--Giày Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,5,3023,10),--Liên Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,4,3023,10),--Nhẫn Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,11,3023,10),--Bội Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,6,3023,10),--Phù Cấp 3- Nữ - Mộc
string.format("%s,%s,%s,%s",4,9,3024,10),--Nón Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,3,3024,10),--Áo Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,8,3024,10),--Lưng Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,10,3024,10),--Tay Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,7,3024,10),--Giày Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,5,3024,10),--Liên Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,4,3024,10),--Nhẫn Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,11,3024,10),--Bội Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,6,3024,10),--Phù Cấp 3- Nam - Thủy
string.format("%s,%s,%s,%s",4,9,3025,10),--Nón Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,3,3025,10),--Áo Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,8,3025,10),--Lưng Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,10,3025,10),--Tay Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,7,3025,10),--Giày Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,5,3025,10),--Liên Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,4,3025,10),--Nhẫn Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,11,3025,10),--Bội Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,6,3025,10),--Phù Cấp 3- Nữ - Thủy
string.format("%s,%s,%s,%s",4,9,3026,10),--Nón Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,3,3026,10),--Áo Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,8,3026,10),--Lưng Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,10,3026,10),--Tay Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,7,3026,10),--Giày Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,5,3026,10),--Liên Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,4,3026,10),--Nhẫn Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,11,3026,10),--Bội Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,6,3026,10),--Phù Cấp 3- Nam - Hỏa
string.format("%s,%s,%s,%s",4,9,3027,10),--Nón Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,3,3027,10),--Áo Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,8,3027,10),--Lưng Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,10,3027,10),--Tay Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,7,3027,10),--Giày Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,5,3027,10),--Liên Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,4,3027,10),--Nhẫn Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,11,3027,10),--Bội Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,6,3027,10),--Phù Cấp 3- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,9,3028,10),--Nón Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,3,3028,10),--Áo Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,8,3028,10),--Lưng Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,10,3028,10),--Tay Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,7,3028,10),--Giày Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,5,3028,10),--Liên Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,4,3028,10),--Nhẫn Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,11,3028,10),--Bội Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,6,3028,10),--Phù Cấp 3- Nam - Thổ
string.format("%s,%s,%s,%s",4,9,3029,10),--Nón Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,3,3029,10),--Áo Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,8,3029,10),--Lưng Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,10,3029,10),--Tay Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,7,3029,10),--Giày Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,5,3029,10),--Liên Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,4,3029,10),--Nhẫn Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,11,3029,10),--Bội Cấp 3- Nữ - Thổ
string.format("%s,%s,%s,%s",4,6,3029,10),--Phù Cấp 3- Nữ - Thổ


},1},
{{string.format("%s,%s,%s,%s", 18,1,3965,1),}, 1},--Vô Cực Chí Dẫn
},

};


function tbTayLuyen_DaiVien:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Tẩy Luyện Trang bị Vô Cực-Đại Viễn<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<bclr=0,0,200><color=white>Tẩy luyện Trang bị Vô Cực-Đại Viễn 222", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbTayLuyen_DaiVien:LuaChon(nValue)	
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Tẩy Luyện Trang bị Vô Cực-Đại Viễn<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Trang bị Vô Cực-Đại Viễn bất kỳ<color><color=yellow>\n-Vô Cực Chí Dẫn: 1<color>";
	end;


Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbTayLuyen_DaiVien:OnOpenGiftOk(nValue, tbItemObj)
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
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;

	
	if (nValue == 1) then
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local tbRate = {50,50};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		if nIndex == 1 then
			--local pItem = me.AddItem(18,1,3004,2); --
			

		------Cường Hóa +16------On------
		local tbItemInfo = {bForceBind=1,};
		local tbItemList	= {};
		for _, pItem in pairs(tbItemObj) do
		me.AddItem(pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel,nil,16);
		end
		for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
		end
		------Cường Hóa +16------End------
		local tbVoCuc_ChiVien	= {18,1,3965,1,0,0};		
		Task:DelItem(me, tbVoCuc_ChiVien, 1);

		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thành công <color=green>Trang bị Vô Cực-Đại Viễn<color> với tỷ lệ thành công: 50%, võ công đột phá 1 bậc mới!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thành công <color=green>Trang bị Vô Cực-Đại Viễn<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	
		else
		
		local tbVoCuc_ChiVien	= {18,1,3965,1,0,0};		
		Task:DelItem(me, tbVoCuc_ChiVien, 1);
		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thất bại <color=green>Trang bị Vô Cực-Đại Viễn<color> với tỷ lệ thành công: 50%!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thất bại <color=green>Trang bị Vô Cực-Đại Viễn<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	

		end;
	end

end

function tbTayLuyen_DaiVien:ChechItem(pItem, tbItemList, tbCountList)
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