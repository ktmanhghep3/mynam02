local tbDoiTienSuKien = {};
SpecialEvent.DoiTienSuKien = tbDoiTienSuKien;


local REQUIRE_ITEM = 
{ 

[1] = {--Nguyên Liệu
{ {
string.format("%s,%s,%s,%s",2,1,2570,10), --Thương Phong Quy Thiền Đao
string.format("%s,%s,%s,%s",2,1,2571,10), --Thương Phong Vi Đà Côn
string.format("%s,%s,%s,%s",2,1,2572,10), --Thương Phong Trạm Kim Thương
string.format("%s,%s,%s,%s",2,1,2573,10), --Thương Phong Tứ Hải Chùy
string.format("%s,%s,%s,%s",2,1,2574,10), --Thương Phong U Minh Đao
string.format("%s,%s,%s,%s",2,1,2575,10), --Thương Phong Phệ Ảnh Thủ
string.format("%s,%s,%s,%s",2,1,2576,10), --Thương Phong Bát Hoang Kiếm
string.format("%s,%s,%s,%s",2,1,2577,10), --Thương Phong Khu Hổ Chùy
string.format("%s,%s,%s,%s",2,1,2578,10), --Thương Phong Mạn Tú Kiếm
string.format("%s,%s,%s,%s",2,1,2579,10), --Thương Phong Băng Tước Thủ
string.format("%s,%s,%s,%s",2,1,2580,10), --Thương Phong Nguyệt Hoa Thủ
string.format("%s,%s,%s,%s",2,1,2581,10), --Thương Phong Thiên Long Đao
string.format("%s,%s,%s,%s",2,1,2582,10), --Thương Phong Du Long Thủ
string.format("%s,%s,%s,%s",2,1,2583,10), --Thương Phong Lược Địa Bổng
string.format("%s,%s,%s,%s",2,1,2584,10), --Thương Phong Liêu Nguyên Đao
string.format("%s,%s,%s,%s",2,1,2585,10), --Thương Phong Giang Hải Thương
string.format("%s,%s,%s,%s",2,1,2586,10), --Thương Phong Trấn Nhạc Kiếm
string.format("%s,%s,%s,%s",2,1,2587,10), --Thương Phong Cực Lôi Kiếm
string.format("%s,%s,%s,%s",2,1,2588,10), --Thương Phong Canh Phong Đao
string.format("%s,%s,%s,%s",2,1,2589,10), --Thương Phong Tuyệt Kim Thương
string.format("%s,%s,%s,%s",2,1,2590,10), --Thương Phong Tuyệt Kim Chùy
string.format("%s,%s,%s,%s",2,1,2591,10), --Thương Phong Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2592,10), --Thương Phong Tuyệt Kim Bổng
string.format("%s,%s,%s,%s",2,1,2593,10), --Thương Phong Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2594,10), --Thương Phong Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2595,10), --Thương Phong Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2596,10), --Thương Phong Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2597,10), --Thương Phong Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2598,10), --Thương Phong Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2599,10), --Thương Phong Tuyệt Mộc Chùy
string.format("%s,%s,%s,%s",2,1,2600,10), --Thương Phong Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2601,10), --Thương Phong Tuyệt Mộc Bổng
string.format("%s,%s,%s,%s",2,1,2602,10), --Thương Phong Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2603,10), --Thương Phong Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2604,10), --Thương Phong Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2605,10), --Thương Phong Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2606,10), --Thương Phong Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2607,10), --Thương Phong Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2608,10), --Thương Phong Tuyệt Thủy Thương
string.format("%s,%s,%s,%s",2,1,2609,10), --Thương Phong Tuyệt Thủy Chùy
string.format("%s,%s,%s,%s",2,1,2610,10), --Thương Phong Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2611,10), --Thương Phong Tuyệt Thủy Bổng
string.format("%s,%s,%s,%s",2,1,2612,10), --Thương Phong Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2613,10), --Thương Phong Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2614,10), --Thương Phong Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2615,10), --Thương Phong Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2616,10), --Thương Phong Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2617,10), --Thương Phong Tuyệt Hỏa Thương
string.format("%s,%s,%s,%s",2,1,2618,10), --Thương Phong Tuyệt Hỏa Chùy
string.format("%s,%s,%s,%s",2,1,2619,10), --Thương Phong Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2620,10), --Thương Phong Tuyệt Hỏa Bổng
string.format("%s,%s,%s,%s",2,1,2621,10), --Thương Phong Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2622,10), --Thương Phong Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2623,10), --Thương Phong Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2624,10), --Thương Phong Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2625,10), --Thương Phong Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2626,10), --Thương Phong Tuyệt Thổ Thương
string.format("%s,%s,%s,%s",2,1,2627,10), --Thương Phong Tuyệt Thổ Chùy
string.format("%s,%s,%s,%s",2,1,2628,10), --Thương Phong Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,1,2629,10), --Thương Phong Tuyệt Thổ Bổng
string.format("%s,%s,%s,%s",2,1,2630,10), --Thương Phong Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2631,10), --Thương Phong Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2632,10), --Thương Phong Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2633,10), --Thương Phong Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2634,10), --Thương Phong Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,2,2510,10), --Thương Phong Cuồng Lan
string.format("%s,%s,%s,%s",2,2,2511,10), --Thương Phong Khổng Tước Vũ
string.format("%s,%s,%s,%s",2,2,2512,10), --Thương Phong Tuyệt Kim Phi Đao
string.format("%s,%s,%s,%s",2,2,2513,10), --Thương Phong Tuyệt Thủy Phi Đao
string.format("%s,%s,%s,%s",2,2,2514,10), --Thương Phong Tuyệt Hỏa Phi Đao
string.format("%s,%s,%s,%s",2,2,2515,10), --Thương Phong Tuyệt Thổ Phi Đao
string.format("%s,%s,%s,%s",2,2,2516,10), --Thương Phong Tuyệt Kim Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2517,10), --Thương Phong Tuyệt Thủy Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2518,10), --Thương Phong Tuyệt Hỏa Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2519,10), --Thương Phong Tuyệt Thổ Cung Tiễn
},1},
},

[2] = {--Nguyên Liệu
{ {
string.format("%s,%s,%s,%s",1,17,2171,10), --Thương Phong Kim Vũ
string.format("%s,%s,%s,%s",1,17,2172,10), --Thương Phong Mộc Vũ
string.format("%s,%s,%s,%s",1,17,2173,10), --Thương Phong Thủy Vũ
string.format("%s,%s,%s,%s",1,17,2174,10), --Thương Phong Hỏa Vũ
string.format("%s,%s,%s,%s",1,17,2175,10), --Thương Phong Thổ Vũ
string.format("%s,%s,%s,%s",1,17,2176,10), --Thương Phong Kim Vũ
string.format("%s,%s,%s,%s",1,17,2177,10), --Thương Phong Mộc Vũ
string.format("%s,%s,%s,%s",1,17,2178,10), --Thương Phong Thủy Vũ
string.format("%s,%s,%s,%s",1,17,2179,10), --Thương Phong Hỏa Vũ
string.format("%s,%s,%s,%s",1,17,2180,10), --Thương Phong Thổ Vũ
},1},
},

[3] = {--Nguyên Liệu
{ {
string.format("%s,%s,%s,%s",5,23,13,5), --Thương Phong Phù 13
string.format("%s,%s,%s,%s",5,20,13,5), --Thương Phong Y 13
string.format("%s,%s,%s,%s",5,22,13,5), --Thương Phong Hộ Uyển 13
string.format("%s,%s,%s,%s",5,21,13,5), --Thương Phong Giới 13
string.format("%s,%s,%s,%s",5,19,14,5), --Thương Phong Kiếm 13
string.format("%s,%s,%s,%s",5,23,14,5), --Thương Phong Phù 14
string.format("%s,%s,%s,%s",5,20,14,5), --Thương Phong Y 14
string.format("%s,%s,%s,%s",5,22,14,5), --Thương Phong Hộ Uyển 14
string.format("%s,%s,%s,%s",5,21,14,5), --Thương Phong Giới 14
string.format("%s,%s,%s,%s",5,19,15,5), --Thương Phong Kiếm 14
string.format("%s,%s,%s,%s",5,23,15,5), --Thương Phong Phù 15
string.format("%s,%s,%s,%s",5,20,15,5), --Thương Phong Y 15
string.format("%s,%s,%s,%s",5,22,15,5), --Thương Phong Hộ Uyển 15
string.format("%s,%s,%s,%s",5,21,15,5), --Thương Phong Giới 15
string.format("%s,%s,%s,%s",5,19,16,5), --Thương Phong Kiếm 15
},1},
},



};

function tbDoiTienSuKien:OnDialog()
	local szMsg = "<color=cyan>Hệ thống Đổi Tiền Sự Kiện<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Vũ Khí Thương Phong<color> <color=red>→ <color=green>Tiền Sự Kiện", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<color=yellow>Phi Phong Thương Phong<color> <color=red>→ <color=green>Tiền Sự Kiện", self.LuaChon, self,2});
	table.insert(tbOpt,3,{"<color=yellow>Đồng Hành Thương Phong<color> <color=red>→ <color=green>Tiền Sự Kiện", self.LuaChon, self,3});

	Dialog:Say(szMsg, tbOpt);
end


function tbDoiTienSuKien:LuaChon(nValue)
	local szMsg = "<color=cyan>Hệ thống Đổi Tiền Sự Kiện<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ Khí Thương Phong bất kỳ<color><color=yellow>\n→ Nhận lại 70% Tiền Xu Sự Kiện từ Rương Vũ Khí Thương Phong trong Shop Mốc.<color>";
	end;

	if nValue == 2 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Phi Phong Thương Phong bất kỳ:\nThương Phong Kim Vũ-Nam\nThương Phong Mộc Vũ-Nam\nThương Phong Thủy Vũ-Nam\nThương Phong Hỏa Vũ-Nam\nThương Phong Thổ Vũ-Nam\nThương Phong Kim Vũ-Nữ\nThương Phong Mộc Vũ-Nữ\nThương Phong Thủy Vũ-Nữ\nThương Phong Hỏa Vũ-Nữ\nThương Phong Thổ Vũ-Nữ<color><color=yellow>\n→ Nhận lại 70% Tiền Xu Sự Kiện từ Rương Phi Phong Thương Phong trong Shop Mốc.<color>";
	end;

	if nValue == 3 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Đồng Hành Thương Phong bất kỳ:\nĐồng Hành Thương Phong 13\nĐồng Hành Thương Phong 14\nĐồng Hành Thương Phong 15<color><color=yellow>\n→ Nhận lại 70% Tiền Xu Sự Kiện từ Rương Đồng Hành Thương Phong trong Shop Mốc.<color>";
	end;

	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiTienSuKien:OnOpenGiftOk(nValue, tbItemObj)
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
			me.AddStackItem(18,1,3929,1,{bForceBind=1,},245); --Tiền Sự Kiện
	end	
--2--
	if (nValue == 2) then
			me.AddStackItem(18,1,3929,1,{bForceBind=1,},210); --Tiền Sự Kiện
	end
--3--
	if (nValue == 3) then
			me.AddStackItem(18,1,3929,1,{bForceBind=1,},175); --Tiền Sự Kiện
	end

end;

function tbDoiTienSuKien:ChechItem(pItem, tbItemList, tbCountList)
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