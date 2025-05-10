local tbTayLuyenVuKhi = {};
SpecialEvent.TayLuyenVuKhi = tbTayLuyenVuKhi;



local REQUIRE_ITEM = 
{ 
[1] = {--Trang Bị
{ {
string.format("%s,%s,%s,%s",2,1,2500,10), --Thanh Hạ Quy Thiền Đao
string.format("%s,%s,%s,%s",2,1,2501,10), --Thanh Hạ Vi Đà Côn
string.format("%s,%s,%s,%s",2,1,2502,10), --Thanh Hạ Trạm Kim Thương
string.format("%s,%s,%s,%s",2,1,2503,10), --Thanh Hạ Tứ Hải Chùy
string.format("%s,%s,%s,%s",2,1,2504,10), --Thanh Hạ U Minh Đao
string.format("%s,%s,%s,%s",2,1,2505,10), --Thanh Hạ Phệ Ảnh Thủ
string.format("%s,%s,%s,%s",2,1,2506,10), --Thanh Hạ Bát Hoang Kiếm
string.format("%s,%s,%s,%s",2,1,2507,10), --Thanh Hạ Khu Hổ Chùy
string.format("%s,%s,%s,%s",2,1,2508,10), --Thanh Hạ Mạn Tú Kiếm
string.format("%s,%s,%s,%s",2,1,2509,10), --Thanh Hạ Băng Tước Thủ
string.format("%s,%s,%s,%s",2,1,2510,10), --Thanh Hạ Nguyệt Hoa Thủ
string.format("%s,%s,%s,%s",2,1,2511,10), --Thanh Hạ Thiên Long Đao
string.format("%s,%s,%s,%s",2,1,2512,10), --Thanh Hạ Du Long Thủ
string.format("%s,%s,%s,%s",2,1,2513,10), --Thanh Hạ Lược Địa Bổng
string.format("%s,%s,%s,%s",2,1,2514,10), --Thanh Hạ Liêu Nguyên Đao
string.format("%s,%s,%s,%s",2,1,2515,10), --Thanh Hạ Giang Hải Thương
string.format("%s,%s,%s,%s",2,1,2516,10), --Thanh Hạ Trấn Nhạc Kiếm
string.format("%s,%s,%s,%s",2,1,2517,10), --Thanh Hạ Cực Lôi Kiếm
string.format("%s,%s,%s,%s",2,1,2518,10), --Thanh Hạ Canh Phong Đao
string.format("%s,%s,%s,%s",2,1,2519,10), --Thanh Hạ Tuyệt Kim Thương
string.format("%s,%s,%s,%s",2,1,2520,10), --Thanh Hạ Tuyệt Kim Chùy
string.format("%s,%s,%s,%s",2,1,2521,10), --Thanh Hạ Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2522,10), --Thanh Hạ Tuyệt Kim Bổng
string.format("%s,%s,%s,%s",2,1,2523,10), --Thanh Hạ Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2524,10), --Thanh Hạ Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2525,10), --Thanh Hạ Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2526,10), --Thanh Hạ Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2527,10), --Thanh Hạ Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2528,10), --Thanh Hạ Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2529,10), --Thanh Hạ Tuyệt Mộc Chùy
string.format("%s,%s,%s,%s",2,1,2530,10), --Thanh Hạ Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2531,10), --Thanh Hạ Tuyệt Mộc Bổng
string.format("%s,%s,%s,%s",2,1,2532,10), --Thanh Hạ Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2533,10), --Thanh Hạ Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2534,10), --Thanh Hạ Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2535,10), --Thanh Hạ Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2536,10), --Thanh Hạ Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2537,10), --Thanh Hạ Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2538,10), --Thanh Hạ Tuyệt Thủy Thương
string.format("%s,%s,%s,%s",2,1,2539,10), --Thanh Hạ Tuyệt Thủy Chùy
string.format("%s,%s,%s,%s",2,1,2540,10), --Thanh Hạ Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2541,10), --Thanh Hạ Tuyệt Thủy Bổng
string.format("%s,%s,%s,%s",2,1,2542,10), --Thanh Hạ Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2543,10), --Thanh Hạ Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2544,10), --Thanh Hạ Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2545,10), --Thanh Hạ Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2546,10), --Thanh Hạ Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2547,10), --Thanh Hạ Tuyệt Hỏa Thương
string.format("%s,%s,%s,%s",2,1,2548,10), --Thanh Hạ Tuyệt Hỏa Chùy
string.format("%s,%s,%s,%s",2,1,2549,10), --Thanh Hạ Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2550,10), --Thanh Hạ Tuyệt Hỏa Bổng
string.format("%s,%s,%s,%s",2,1,2551,10), --Thanh Hạ Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2552,10), --Thanh Hạ Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2553,10), --Thanh Hạ Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2554,10), --Thanh Hạ Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2555,10), --Thanh Hạ Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2556,10), --Thanh Hạ Tuyệt Thổ Thương
string.format("%s,%s,%s,%s",2,1,2557,10), --Thanh Hạ Tuyệt Thổ Chùy
string.format("%s,%s,%s,%s",2,1,2558,10), --Thanh Hạ Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,1,2559,10), --Thanh Hạ Tuyệt Thổ Bổng
string.format("%s,%s,%s,%s",2,1,2560,10), --Thanh Hạ Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2561,10), --Thanh Hạ Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2562,10), --Thanh Hạ Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2563,10), --Thanh Hạ Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2564,10), --Thanh Hạ Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,2,2500,10), --Thanh Hạ Cuồng Lan
string.format("%s,%s,%s,%s",2,2,2501,10), --Thanh Hạ Khổng Tước Vũ
string.format("%s,%s,%s,%s",2,2,2502,10), --Thanh Hạ Tuyệt Kim Phi Đao
string.format("%s,%s,%s,%s",2,2,2503,10), --Thanh Hạ Tuyệt Thủy Phi Đao
string.format("%s,%s,%s,%s",2,2,2504,10), --Thanh Hạ Tuyệt Hỏa Phi Đao
string.format("%s,%s,%s,%s",2,2,2505,10), --Thanh Hạ Tuyệt Thổ Phi Đao
string.format("%s,%s,%s,%s",2,2,2506,10), --Thanh Hạ Tuyệt Kim Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2507,10), --Thanh Hạ Tuyệt Thủy Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2508,10), --Thanh Hạ Tuyệt Hỏa Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2509,10), --Thanh Hạ Tuyệt Thổ Cung Tiễn

},1},
{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 2500},--Chiến Tích Phù Văn
{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 2500},--Hiệp Nghĩa Tửu
{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 2000},--Lệnh Bài Sát Thần PK
{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1000},--Thần Binh Phổ
{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 500},--Ngôi Sao May Mắn
{{string.format("%s,%s,%s,%s", 18,1,3924,1),}, 4},--Phổ Sinh Cơ
{{string.format("%s,%s,%s,%s", 18,1,3924,2),}, 10},--Thanh Lân Ngọc Bích
},

};


function tbTayLuyenVuKhi:OnDialog()
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Vũ Khí Thanh Hạ<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Tẩy Luyện Vũ Khí Thanh Hạ<color>", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbTayLuyenVuKhi:LuaChon(nValue)	
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Vũ Khí Thanh Hạ<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ Khí Thanh Hạ bất kỳ<color><color=yellow>\n-Chiến Tích Phù Văn: 2500\n-Hiệp Nghĩa Tửu: 2500\n-Lệnh Bài Sát Thần PK: 2000\n-Thần Binh Phổ: 1000\n-Ngôi Sao May Mắn: 500\n-Phổ Sinh Cơ: 4\n-Thanh Lân Ngọc Bích: 10<color>";
	end;


Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbTayLuyenVuKhi:OnOpenGiftOk(nValue, tbItemObj)
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
		local tb_ThanhLanNgocBich	= {18,1,3924,2,0,0};		
		Task:DelItem(me, tb_ChienTichPhuVan, 2500);
		Task:DelItem(me, tb_HiepNghiaTuu, 2500);
		Task:DelItem(me, tb_LenhBaiST, 2000);
		Task:DelItem(me, tb_ThanBinhPho, 1000);
		Task:DelItem(me, tb_NgoiSaoMM, 500);
		Task:DelItem(me, tb_PhoSinhCo, 4);
		Task:DelItem(me, tb_ThanhLanNgocBich, 10);

		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thành công <color=green>Vũ Khí Thanh Hạ<color> với tỷ lệ thành công: 50%, võ công đột phá 1 bậc mới!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thành công <color=green>Vũ Khí Thanh Hạ<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	
		else
		
		local tb_ChienTichPhuVan	= {18,1,3006,2,0,0};
		local tb_HiepNghiaTuu	= {18,1,3006,3,0,0};
		local tb_LenhBaiST	= {18,1,3001,1,0,0};
		local tb_ThanBinhPho	= {18,1,3006,4,0,0};
		local tb_NgoiSaoMM	= {18,1,3004,2,0,0};
		local tb_PhoSinhCo	= {18,1,3924,1,0,0};
		local tb_ThanhLanNgocBich	= {18,1,3924,2,0,0};		
		Task:DelItem(me, tb_ChienTichPhuVan, 2500);
		Task:DelItem(me, tb_HiepNghiaTuu, 2500);
		Task:DelItem(me, tb_LenhBaiST, 2000);
		Task:DelItem(me, tb_ThanBinhPho, 1000);
		Task:DelItem(me, tb_NgoiSaoMM, 500);
		Task:DelItem(me, tb_PhoSinhCo, 4);
		Task:DelItem(me, tb_ThanhLanNgocBich, 10);
		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thất bại <color=green>Vũ Khí Thanh Hạ<color> với tỷ lệ thành công: 50%!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thất bại <color=green>Vũ Khí Thanh Hạ<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	

		end;
end

end

function tbTayLuyenVuKhi:ChechItem(pItem, tbItemList, tbCountList)
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