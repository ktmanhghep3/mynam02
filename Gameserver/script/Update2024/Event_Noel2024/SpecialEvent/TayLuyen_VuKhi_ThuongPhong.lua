local tbTayLuyen_VuKhiThuongPhong = {};
SpecialEvent.TayLuyen_VuKhiThuongPhong = tbTayLuyen_VuKhiThuongPhong;



local REQUIRE_ITEM = 
{ 
[1] = {--Trang Bị
{ {
string.format("%s,%s,%s,%s",2,1,2570,10),-- Thương Phong Quy Thiền Đao
string.format("%s,%s,%s,%s",2,1,2571,10),-- Thương Phong Vi Đà Côn
string.format("%s,%s,%s,%s",2,1,2572,10),-- Thương Phong Trạm Kim Thương
string.format("%s,%s,%s,%s",2,1,2573,10),-- Thương Phong Tứ Hải Chùy
string.format("%s,%s,%s,%s",2,1,2574,10),-- Thương Phong U Minh Đao
string.format("%s,%s,%s,%s",2,1,2575,10),-- Thương Phong Phệ Ảnh Thủ
string.format("%s,%s,%s,%s",2,1,2576,10),-- Thương Phong Bát Hoang Kiếm
string.format("%s,%s,%s,%s",2,1,2577,10),-- Thương Phong Khu Hổ Chùy
string.format("%s,%s,%s,%s",2,1,2578,10),-- Thương Phong Mạn Tú Kiếm
string.format("%s,%s,%s,%s",2,1,2579,10),-- Thương Phong Băng Tước Thủ
string.format("%s,%s,%s,%s",2,1,2580,10),-- Thương Phong Nguyệt Hoa Thủ
string.format("%s,%s,%s,%s",2,1,2581,10),-- Thương Phong Thiên Long Đao
string.format("%s,%s,%s,%s",2,1,2582,10),-- Thương Phong Du Long Thủ
string.format("%s,%s,%s,%s",2,1,2583,10),-- Thương Phong Lược Địa Bổng
string.format("%s,%s,%s,%s",2,1,2584,10),-- Thương Phong Liêu Nguyên Đao
string.format("%s,%s,%s,%s",2,1,2585,10),-- Thương Phong Giang Hải Thương
string.format("%s,%s,%s,%s",2,1,2586,10),-- Thương Phong Trấn Nhạc Kiếm
string.format("%s,%s,%s,%s",2,1,2587,10),-- Thương Phong Cực Lôi Kiếm
string.format("%s,%s,%s,%s",2,1,2588,10),-- Thương Phong Canh Phong Đao
string.format("%s,%s,%s,%s",2,1,2589,10),-- Thương Phong Tuyệt Kim Thương
string.format("%s,%s,%s,%s",2,1,2590,10),-- Thương Phong Tuyệt Kim Chùy
string.format("%s,%s,%s,%s",2,1,2591,10),-- Thương Phong Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2592,10),-- Thương Phong Tuyệt Kim Bổng
string.format("%s,%s,%s,%s",2,1,2593,10),-- Thương Phong Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2594,10),-- Thương Phong Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2595,10),-- Thương Phong Tuyệt Kim Đao
string.format("%s,%s,%s,%s",2,1,2596,10),-- Thương Phong Tuyệt Kim Kiếm
string.format("%s,%s,%s,%s",2,1,2597,10),-- Thương Phong Tuyệt Kim Thủ
string.format("%s,%s,%s,%s",2,1,2598,10),-- Thương Phong Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2599,10),-- Thương Phong Tuyệt Mộc Chùy
string.format("%s,%s,%s,%s",2,1,2600,10),-- Thương Phong Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2601,10),-- Thương Phong Tuyệt Mộc Bổng
string.format("%s,%s,%s,%s",2,1,2602,10),-- Thương Phong Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2603,10),-- Thương Phong Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2604,10),-- Thương Phong Tuyệt Mộc Thương
string.format("%s,%s,%s,%s",2,1,2605,10),-- Thương Phong Tuyệt Mộc Đao
string.format("%s,%s,%s,%s",2,1,2606,10),-- Thương Phong Tuyệt Mộc Kiếm
string.format("%s,%s,%s,%s",2,1,2607,10),-- Thương Phong Tuyệt Mộc Thủ
string.format("%s,%s,%s,%s",2,1,2608,10),-- Thương Phong Tuyệt Thủy Thương
string.format("%s,%s,%s,%s",2,1,2609,10),-- Thương Phong Tuyệt Thủy Chùy
string.format("%s,%s,%s,%s",2,1,2610,10),-- Thương Phong Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2611,10),-- Thương Phong Tuyệt Thủy Bổng
string.format("%s,%s,%s,%s",2,1,2612,10),-- Thương Phong Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2613,10),-- Thương Phong Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2614,10),-- Thương Phong Tuyệt Thủy Đao
string.format("%s,%s,%s,%s",2,1,2615,10),-- Thương Phong Tuyệt Thủy Kiếm
string.format("%s,%s,%s,%s",2,1,2616,10),-- Thương Phong Tuyệt Thủy Thủ
string.format("%s,%s,%s,%s",2,1,2617,10),-- Thương Phong Tuyệt Hỏa Thương
string.format("%s,%s,%s,%s",2,1,2618,10),-- Thương Phong Tuyệt Hỏa Chùy
string.format("%s,%s,%s,%s",2,1,2619,10),-- Thương Phong Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2620,10),-- Thương Phong Tuyệt Hỏa Bổng
string.format("%s,%s,%s,%s",2,1,2621,10),-- Thương Phong Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2622,10),-- Thương Phong Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2623,10),-- Thương Phong Tuyệt Hỏa Đao
string.format("%s,%s,%s,%s",2,1,2624,10),-- Thương Phong Tuyệt Hỏa Kiếm
string.format("%s,%s,%s,%s",2,1,2625,10),-- Thương Phong Tuyệt Hỏa Thủ
string.format("%s,%s,%s,%s",2,1,2626,10),-- Thương Phong Tuyệt Thổ Thương
string.format("%s,%s,%s,%s",2,1,2627,10),-- Thương Phong Tuyệt Thổ Chùy
string.format("%s,%s,%s,%s",2,1,2628,10),-- Thương Phong Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,1,2629,10),-- Thương Phong Tuyệt Thổ Bổng
string.format("%s,%s,%s,%s",2,1,2630,10),-- Thương Phong Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2631,10),-- Thương Phong Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2632,10),-- Thương Phong Tuyệt Thổ Đao
string.format("%s,%s,%s,%s",2,1,2633,10),-- Thương Phong Tuyệt Thổ Kiếm
string.format("%s,%s,%s,%s",2,1,2634,10),-- Thương Phong Tuyệt Thổ Thủ
string.format("%s,%s,%s,%s",2,2,2510,10),-- Thương Phong Cuồng Lan
string.format("%s,%s,%s,%s",2,2,2511,10),-- Thương Phong Khổng Tước Vũ
string.format("%s,%s,%s,%s",2,2,2512,10),-- Thương Phong Tuyệt Kim Phi Đao
string.format("%s,%s,%s,%s",2,2,2513,10),-- Thương Phong Tuyệt Thủy Phi Đao
string.format("%s,%s,%s,%s",2,2,2514,10),-- Thương Phong Tuyệt Hỏa Phi Đao
string.format("%s,%s,%s,%s",2,2,2515,10),-- Thương Phong Tuyệt Thổ Phi Đao
string.format("%s,%s,%s,%s",2,2,2516,10),-- Thương Phong Tuyệt Kim Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2517,10),-- Thương Phong Tuyệt Thủy Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2518,10),-- Thương Phong Tuyệt Hỏa Cung Tiễn
string.format("%s,%s,%s,%s",2,2,2519,10),-- Thương Phong Tuyệt Thổ Cung Tiễn

},1},
{{string.format("%s,%s,%s,%s", 18,1,3965,2),}, 1},--Thương Phong Huyền Dẫn
},

};


function tbTayLuyen_VuKhiThuongPhong:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Dưỡng Thành Vũ khí Thương Phong<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<bclr=0,0,200><color=white>Dưỡng Thành Vũ khí Thương Phong", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbTayLuyen_VuKhiThuongPhong:LuaChon(nValue)	
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Dưỡng Thành Vũ khí Thương Phong<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ Khí Thương Phong bất kỳ<color><color=yellow>\n-Thương Phong Huyền Dẫn: 1<color>";
	end;


Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbTayLuyen_VuKhiThuongPhong:OnOpenGiftOk(nValue, tbItemObj)
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
		local tb_ThuongPhongHuyenDan	= {18,1,3965,2,0,0};		
		Task:DelItem(me, tb_ThuongPhongHuyenDan, 1);

		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thành công <color=green>Vũ Khí Thương Phong<color> với tỷ lệ thành công: 50%, võ công đột phá 1 bậc mới!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thành công <color=green>Vũ Khí Thương Phong<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	
		else
		
		local tb_ThuongPhongHuyenDan	= {18,1,3965,2,0,0};		
		Task:DelItem(me, tb_ThuongPhongHuyenDan, 1);
		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thất bại <color=green>Vũ Khí Thương Phong<color> với tỷ lệ thành công: 50%!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thất bại <color=green>Vũ Khí Thương Phong<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	

		end;
end

end

function tbTayLuyen_VuKhiThuongPhong:ChechItem(pItem, tbItemList, tbCountList)
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