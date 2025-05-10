local tbTayLuyenVuKhi_PhiTuyet = {};
SpecialEvent.TayLuyenVuKhi_PhiTuyet = tbTayLuyenVuKhi_PhiTuyet;



local REQUIRE_ITEM = 
{ 
[1] = {--Trang Bị
{ {
string.format("%s,%s,%s,%s",2,1,3889,10), --Lv.8-Hiệu ứng Kim Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,3909,10), --Lv.8-Hiệu ứng Mộc Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,3929,10), --Lv.8-Hiệu ứng Thủy Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,3949,10), --Lv.8-Hiệu ứng Hỏa Đao Nội 20
string.format("%s,%s,%s,%s",2,1,3969,10), --Lv.8-Hiệu ứng Thổ Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,3989,10), --Lv.8-Hiệu ứng Kim Côn Ngoại 20
string.format("%s,%s,%s,%s",2,1,4009,10), --Lv.8-Hiệu ứng Hỏa Côn Ngoại 20
string.format("%s,%s,%s,%s",2,1,4029,10), --Lv.8-Hiệu ứng Kim Thương Ngoại 20
string.format("%s,%s,%s,%s",2,1,4049,10), --Lv.8-Hiệu ứng Hỏa Thương Ngoại 20
string.format("%s,%s,%s,%s",2,1,4069,10), --Lv.8-Hiệu ứng Kim Chùy Ngoại 20
string.format("%s,%s,%s,%s",2,1,4089,10), --Lv.8-Hiệu ứng Mộc Chùy Ngoại 20
string.format("%s,%s,%s,%s",2,1,4109,10), --Lv.8-Hiệu ứng Mộc Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,4129,10), --Lv.8-Hiệu ứng Thủy Thủ Ngoại 20
string.format("%s,%s,%s,%s",2,1,4149,10), --Lv.8-Hiệu ứng Thủy Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,4169,10), --Lv.8-Hiệu ứng Hỏa Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,4189,10), --Lv.8-Hiệu ứng Mộc Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,4209,10), --Lv.8-Hiệu ứng Thủy Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,4229,10), --Lv.8-Hiệu ứng Thổ Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,4249,10), --Lv.8-Hiệu ứng Thổ Kiếm Ngoại 20
string.format("%s,%s,%s,%s",2,1,2729,10), --Lv.8-Hiệu Ứng-Phi Đao 20
string.format("%s,%s,%s,%s",2,1,2749,10), --Lv.8-Hiệu Ứng-Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,1,4269,10), --Lv.8-Nội công Kim Đao 20
string.format("%s,%s,%s,%s",2,1,4289,10), --Lv.8-Nội công Mộc Đao 20
string.format("%s,%s,%s,%s",2,1,4309,10), --Lv.8-Nội công Thủy Đao 20
string.format("%s,%s,%s,%s",2,1,4329,10), --Lv.8-Ngoại công Hỏa Đao 20
string.format("%s,%s,%s,%s",2,1,4349,10), --Lv.8-Nội công Thổ Đao 20
string.format("%s,%s,%s,%s",2,1,4369,10), --Lv.8-Ngoại công Mộc Côn 20
string.format("%s,%s,%s,%s",2,1,4389,10), --Lv.8-Ngoại công Thủy Côn 20
string.format("%s,%s,%s,%s",2,1,4409,10), --Lv.8-Ngoại công Thổ Côn 20
string.format("%s,%s,%s,%s",2,1,4429,10), --Lv.8-Hệ cách đấu Mộc Thương 20
string.format("%s,%s,%s,%s",2,1,4449,10), --Lv.8-Hệ cách đấu Thủy Thương 20
string.format("%s,%s,%s,%s",2,1,4469,10), --Lv.8-Hệ cách đấu Thổ Thương 20
string.format("%s,%s,%s,%s",2,1,4489,10), --Lv.8-Hệ cách đấu Thủy Chùy 20
string.format("%s,%s,%s,%s",2,1,4509,10), --Lv.8-Hệ cách đấu Hỏa Chùy 20
string.format("%s,%s,%s,%s",2,1,4529,10), --Lv.8-Hệ cách đấu Thổ Chùy 20
string.format("%s,%s,%s,%s",2,1,4549,10), --Lv.8-Ngoại Công Kim Thủ 20
string.format("%s,%s,%s,%s",2,1,4569,10), --Lv.8-Nội công Kim Thủ 20
string.format("%s,%s,%s,%s",2,1,4589,10), --Lv.8-Ngoại Công Mộc Thủ 20
string.format("%s,%s,%s,%s",2,1,4609,10), --Lv.8-Hệ cách đấu Hỏa Thủ 20
string.format("%s,%s,%s,%s",2,1,4629,10), --Lv.8-Ngoại Công Thổ Thủ 20
string.format("%s,%s,%s,%s",2,1,4649,10), --Lv.8-Nội công Thổ Thủ 20
string.format("%s,%s,%s,%s",2,1,4669,10), --Lv.8-Ngoại công Kim Kiếm 20
string.format("%s,%s,%s,%s",2,1,4689,10), --Lv.8-Nội công Kim Kiếm 20
string.format("%s,%s,%s,%s",2,1,4709,10), --Lv.8-Ngoại công Mộc Kiếm 20
string.format("%s,%s,%s,%s",2,1,4729,10), --Lv.8-Nội công Mộc Kiếm 20
string.format("%s,%s,%s,%s",2,1,4749,10), --Lv.8-Ngoại công Thủy Kiếm 20
string.format("%s,%s,%s,%s",2,1,4769,10), --Lv.8-Ngoại công Hỏa Kiếm 20
string.format("%s,%s,%s,%s",2,1,4789,10), --Lv.8-Nội công Hỏa Kiếm 20
string.format("%s,%s,%s,%s",2,1,2769,10), --Lv.8-Song Tu-Kim-Phi Đao 20
string.format("%s,%s,%s,%s",2,1,2789,10), --Lv.8-Song Tu-Mộc-Phi Đao 20
string.format("%s,%s,%s,%s",2,1,2809,10), --Lv.8-Song Tu-Hỏa-Phi Đao 20
string.format("%s,%s,%s,%s",2,1,2829,10), --Lv.8-Song Tu-Thổ-Phi Đao 20
string.format("%s,%s,%s,%s",2,1,2849,10), --Lv.8-Song Tu-Kim-Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,1,2869,10), --Lv.8-Song Tu-Thủy-Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,1,2889,10), --Lv.8-Song Tu-Hỏa-Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,1,2909,10), --Lv.8-Song Tu-Thổ-Tụ Tiễn 20
},1},
{{string.format("%s,%s,%s,%s", 18,1,4010,1),}, 50},--Thương Phong Dẫn Hoàn Chỉnh
{{string.format("%s,%s,%s,%s", 18,1,4020,1),}, 4000},--Khí Linh
},

};


function tbTayLuyenVuKhi_PhiTuyet:OnDialog()
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Vũ Khí Phi Tuyết Lv20<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Tẩy Luyện Vũ Khí Phi Tuyết Lv20<color>", self.LuaChon, self,1});

	Dialog:Say(szMsg, tbOpt);
end


function tbTayLuyenVuKhi_PhiTuyet:LuaChon(nValue)	
	local szMsg = "<color=cyan>Hệ thống Tẩy Luyện Vũ Khí Phi Tuyết Lv20<color>";
	local szMsg;
		
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ Khí Phi Tuyết Lv20 bất kỳ<color><color=yellow>\n-Thương Phong Dẫn Hoàn Chỉnh: 50\n-Khí Linh: 4000\n-Tỷ lệ thành công: 100%<color>";
	end;


Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbTayLuyenVuKhi_PhiTuyet:OnOpenGiftOk(nValue, tbItemObj)
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
		------Cường Hóa +16------On------
		local tbItemInfo = {bForceBind=1,};
		local tbItemList	= {};
		for _, pItem in pairs(tbItemObj) do
		local pItemkhoa = me.AddItem(pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel,nil,16);
		pItemkhoa.Bind(1);
		end
		for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
		end
		------Cường Hóa +16------End------
		local tbThuongPhongDan	= {18,1,4010,1,0,0};
		local tbKhiLinh	= {18,1,4020,1,0,0};
		Task:DelItem(me, tbThuongPhongDan, 1);
		Task:DelItem(me, tbKhiLinh, 1);

		local szMsg = "<color=yellow>Người chơi <color=red>"..me.szName.."<color> Tẩy Luyện thành công <color=green>Vũ Khí Phi Tuyết Lv20<color>  võ công đột phá 1 bậc mới!<color>";
			Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Tẩy Luyện thành công <color=green>Vũ Khí Phi Tuyết Lv20<color>!<color>"));
			KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
			KDialog.MsgToGlobal(szMsg);	
end

end

function tbTayLuyenVuKhi_PhiTuyet:ChechItem(pItem, tbItemList, tbCountList)
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