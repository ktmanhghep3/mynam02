local tbSystem = Npc:GetClass("DoiNguyenLieu");

local REQUIRE_ITEM = 
{ 
[1] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},10},
},

[2] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},20},
},

[3] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},50},
},

[4] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},100},
},

[5] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},200},
},

[6] = {
{ {
string.format("%s,%s,%s,%s",18,1,200,1),--Huyết Ảnh Thương
string.format("%s,%s,%s,%s",18,1,201,1),--Linh Thú Chiến Ngoa
string.format("%s,%s,%s,%s",18,1,202,1),--Độn Giáp Linh Phù
string.format("%s,%s,%s,%s",18,1,203,1),--Tử Tinh Huyễn Bội
string.format("%s,%s,%s,%s",18,1,204,1),--Thất Thái Tiên Đơn
string.format("%s,%s,%s,%s",18,1,263,1),--Bách Bộ Xuyên Dương Cung
string.format("%s,%s,%s,%s",18,1,264,1),--Hình Thiên Chiến Bào
string.format("%s,%s,%s,%s",18,1,265,1),--Hành Quân Phù Chú
string.format("%s,%s,%s,%s",18,1,266,1),--Du Tử Hộ Thân Phù
string.format("%s,%s,%s,%s",18,1,267,1),--Thiên Lý Chỉ Khát Đơn
},500},
},

};


function tbSystem:OnDialog_1()
	local szMsg = "<color=cyan>Hệ thống đổi Nguyên Liệu thành phẩm TDC và TĐLT\nChỉ đặt vào 1 lần 1 loại Nguyên Liệu<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Đổi 10 Nguyên liệu<color>", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<color=yellow>Đổi 20 Nguyên liệu<color>", self.LuaChon, self,2});
	table.insert(tbOpt,3,{"<color=yellow>Đổi 50 Nguyên liệu<color>", self.LuaChon, self,3});
	table.insert(tbOpt,4,{"<color=yellow>Đổi 100 Nguyên liệu<color>", self.LuaChon, self,4});
	table.insert(tbOpt,5,{"<color=yellow>Đổi 200 Nguyên liệu<color>", self.LuaChon, self,5});
	table.insert(tbOpt,6,{"<color=yellow>Đổi 500 Nguyên liệu<color>", self.LuaChon, self,6});

	Dialog:Say(szMsg, tbOpt);
end


function tbSystem:LuaChon(nValue)	
	local szMsg = "<color=cyan>Hệ thống đổi Nguyên Liệu thành phẩm TDC và TĐLT\nChỉ đặt vào 1 lần 1 loại Nguyên Liệu<color>";
	local szMsg;
	
	if nValue == 1 then	
	local nSoLuong = 10
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;

	if nValue == 2 then	
	local nSoLuong = 20
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;

	if nValue == 3 then	
	local nSoLuong = 50
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;

	if nValue == 4 then	
	local nSoLuong = 100
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;


	if nValue == 5 then	
	local nSoLuong = 200
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;


	if nValue == 6 then	
	local nSoLuong = 500
	szMsg = "<color=yellow>Đổi ["..nSoLuong.."] Mảnh Ghép ngẫu nhiên\nĐặt vào  {"..nSoLuong.."} chỉ 1 loại:<color><color=green>\n1)Huyết Ảnh Thương\n2)Linh Thú Chiến Ngoa\n3)Độn Giáp Linh Phù\n4)Tử Tinh Huyễn Bội\n5)Thất Thái Tiên Đơn\n6)Bách Bộ Xuyên Dương Cung\n7)Hình Thiên Chiến Bào\n8)Hành Quân Phù Chú\n9)Du Tử Hộ Thân Phù\n10)Thiên Lý Chỉ Khát Đơn\n<color>";
	end;

Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbSystem:OnOpenGiftOk(nValue, tbItemObj)
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
		Dialog:Say("\nNguyên Liệu đặt vào không đúng!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
--add thưởng--
	if (nValue == 1) then
	me.AddStackItem(18,1,3071,1,nil,10);
	end
	if (nValue == 2) then
	me.AddStackItem(18,1,3071,1,nil,20);
	end
	if (nValue == 3) then
	me.AddStackItem(18,1,3071,1,nil,50);
	end
	if (nValue == 4) then
	me.AddStackItem(18,1,3071,1,nil,100);
	end
	if (nValue == 5) then
	me.AddStackItem(18,1,3071,1,nil,200);
	end
	if (nValue == 6) then
	me.AddStackItem(18,1,3071,1,nil,500);
	end
end




function tbSystem:ChechItem(pItem, tbItemList, tbCountList)
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