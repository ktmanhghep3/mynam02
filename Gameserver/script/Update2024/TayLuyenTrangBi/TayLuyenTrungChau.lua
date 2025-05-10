local tbTayLuyenTrungChau = {};
SpecialEvent.TayLuyenTrungChau = tbTayLuyenTrungChau;



local REQUIRE_ITEM = 
{ 
[1] = {--Trang Bị
{ {
string.format("%s,%s,%s,%s",4,9,3010,10),-- Nón Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,3,3010,10),-- Áo Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,8,3010,10),-- Lưng Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,10,3010,10),-- Tay Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,7,3010,10),-- Giày Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,5,3010,10),-- Liên Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,4,3010,10),-- Nhẫn Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,11,3010,10),-- Bội Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,6,3010,10),-- Phù Cấp 2- Nam - Kim
string.format("%s,%s,%s,%s",4,9,3011,10),-- Nón Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,3,3011,10),-- Áo Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,8,3011,10),-- Lưng Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,10,3011,10),-- Tay Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,7,3011,10),-- Giày Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,5,3011,10),-- Liên Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,4,3011,10),-- Nhẫn Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,11,3011,10),-- Bội Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,6,3011,10),-- Phù Cấp 2- Nữ - Kim
string.format("%s,%s,%s,%s",4,9,3012,10),-- Nón Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,3,3012,10),-- Áo Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,8,3012,10),-- Lưng Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,10,3012,10),-- Tay Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,7,3012,10),-- Giày Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,5,3012,10),-- Liên Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,4,3012,10),-- Nhẫn Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,11,3012,10),-- Bội Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,6,3012,10),-- Phù Cấp 2- Nam - Mộc
string.format("%s,%s,%s,%s",4,9,3013,10),-- Nón Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,3,3013,10),-- Áo Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,8,3013,10),-- Lưng Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,10,3013,10),-- Tay Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,7,3013,10),-- Giày Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,5,3013,10),-- Liên Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,4,3013,10),-- Nhẫn Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,11,3013,10),-- Bội Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,6,3013,10),-- Phù Cấp 2- Nữ - Mộc
string.format("%s,%s,%s,%s",4,9,3014,10),-- Nón Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,3,3014,10),-- Áo Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,8,3014,10),-- Lưng Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,10,3014,10),-- Tay Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,7,3014,10),-- Giày Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,5,3014,10),-- Liên Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,4,3014,10),-- Nhẫn Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,11,3014,10),-- Bội Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,6,3014,10),-- Phù Cấp 2- Nam - Thủy
string.format("%s,%s,%s,%s",4,9,3015,10),-- Nón Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,3,3015,10),-- Áo Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,8,3015,10),-- Lưng Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,10,3015,10),-- Tay Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,7,3015,10),-- Giày Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,5,3015,10),-- Liên Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,4,3015,10),-- Nhẫn Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,11,3015,10),-- Bội Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,6,3015,10),-- Phù Cấp 2- Nữ - Thủy
string.format("%s,%s,%s,%s",4,9,3016,10),-- Nón Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,3,3016,10),-- Áo Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,8,3016,10),-- Lưng Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,10,3016,10),-- Tay Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,7,3016,10),-- Giày Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,5,3016,10),-- Liên Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,4,3016,10),-- Nhẫn Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,11,3016,10),-- Bội Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,6,3016,10),-- Phù Cấp 2- Nam - Hỏa
string.format("%s,%s,%s,%s",4,9,3017,10),-- Nón Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,3,3017,10),-- Áo Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,8,3017,10),-- Lưng Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,10,3017,10),-- Tay Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,7,3017,10),-- Giày Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,5,3017,10),-- Liên Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,4,3017,10),-- Nhẫn Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,11,3017,10),-- Bội Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,6,3017,10),-- Phù Cấp 2- Nữ - Hỏa
string.format("%s,%s,%s,%s",4,9,3018,10),-- Nón Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,3,3018,10),-- Áo Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,8,3018,10),-- Lưng Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,10,3018,10),-- Tay Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,7,3018,10),-- Giày Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,5,3018,10),-- Liên Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,4,3018,10),-- Nhẫn Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,11,3018,10),-- Bội Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,6,3018,10),-- Phù Cấp 2- Nam - Thổ
string.format("%s,%s,%s,%s",4,9,3019,10),-- Nón Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,3,3019,10),-- Áo Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,8,3019,10),-- Lưng Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,10,3019,10),-- Tay Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,7,3019,10),-- Giày Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,5,3019,10),-- Liên Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,4,3019,10),-- Nhẫn Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,11,3019,10),-- Bội Cấp 2- Nữ - Thổ
string.format("%s,%s,%s,%s",4,6,3019,10),-- Phù Cấp 2- Nữ - Thổ

},1},
{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 600},--Chiến Tích Phù Văn
{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 600},--Hiệp Nghĩa Tửu
{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 400},--Lệnh Bài Sát Thần PK
{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 250},--Thần Binh Phổ
{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 125},--Ngôi Sao May Mắn
{{string.format("%s,%s,%s,%s", 18,1,3924,1),}, 2},--Phổ Sinh Cơ
{{string.format("%s,%s,%s,%s", 18,1,3924,3),}, 3},--Vô Cực Hàn Thạch
},

};


function tbTayLuyenTrungChau:OnDialog()
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Trang bị Vô Cực-Trung Châu<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Tẩy Luyện Trang bị Vô Cực-Trung Châu<color>", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbTayLuyenTrungChau:LuaChon(nValue)	
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Trang bị Vô Cực-Trung Châu<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Trang bị Vô Cực-Trung Châu bất kỳ<color><color=yellow>\n-Chiến Tích Phù Văn: 600\n-Hiệp Nghĩa Tửu: 600\n-Lệnh Bài Sát Thần PK: 400\n-Thần Binh Phổ: 250\n-Ngôi Sao May Mắn: 125\n-Phổ Sinh Cơ: 2\n-Vô Cực Hàn Thạch: 3<color>";
	end;


Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbTayLuyenTrungChau:OnOpenGiftOk(nValue, tbItemObj)
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
		local tb_ChienTichPhuVan	= {18,1,3006,2,0,0};
		local tb_HiepNghiaTuu	= {18,1,3006,3,0,0};
		local tb_LenhBaiST	= {18,1,3001,1,0,0};
		local tb_ThanBinhPho	= {18,1,3006,4,0,0};
		local tb_NgoiSaoMM	= {18,1,3004,2,0,0};
		local tb_PhoSinhCo	= {18,1,3924,1,0,0};
		local tb_VoCucHanThach	= {18,1,3924,3,0,0};		
		Task:DelItem(me, tb_ChienTichPhuVan, 600);
		Task:DelItem(me, tb_HiepNghiaTuu, 600);
		Task:DelItem(me, tb_LenhBaiST, 400);
		Task:DelItem(me, tb_ThanBinhPho, 250);
		Task:DelItem(me, tb_NgoiSaoMM, 125);
		Task:DelItem(me, tb_PhoSinhCo, 2);
		Task:DelItem(me, tb_VoCucHanThach, 3);

		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thành công <color=green>Trang bị Vô Cực-Trung Châu<color> với tỷ lệ thành công: 50%, võ công đột phá 1 bậc mới!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thành công <color=green>Trang bị Vô Cực-Trung Châu<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	
		else
		
		local tb_ChienTichPhuVan	= {18,1,3006,2,0,0};
		local tb_HiepNghiaTuu	= {18,1,3006,3,0,0};
		local tb_LenhBaiST	= {18,1,3001,1,0,0};
		local tb_ThanBinhPho	= {18,1,3006,4,0,0};
		local tb_NgoiSaoMM	= {18,1,3004,2,0,0};
		local tb_PhoSinhCo	= {18,1,3924,1,0,0};
		local tb_VoCucHanThach	= {18,1,3924,3,0,0};		
		Task:DelItem(me, tb_ChienTichPhuVan, 600);
		Task:DelItem(me, tb_HiepNghiaTuu, 600);
		Task:DelItem(me, tb_LenhBaiST, 400);
		Task:DelItem(me, tb_ThanBinhPho, 250);
		Task:DelItem(me, tb_NgoiSaoMM, 125);
		Task:DelItem(me, tb_PhoSinhCo, 2);
		Task:DelItem(me, tb_VoCucHanThach, 3);
		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thất bại <color=green>Trang bị Vô Cực-Trung Châu<color> với tỷ lệ thành công: 50%!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thất bại <color=green>Trang bị Vô Cực-Trung Châu<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	

		end;
end

end

function tbTayLuyenTrungChau:ChechItem(pItem, tbItemList, tbCountList)
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