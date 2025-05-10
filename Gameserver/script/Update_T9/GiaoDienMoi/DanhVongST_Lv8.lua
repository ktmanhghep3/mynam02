local tbDoiDiemDanhVong = Npc:GetClass("DanhVongST_Lv8");


tbDoiDiemDanhVong.GioiHanDV = 9;	--Cấp Danh vọng giới hạn
tbDoiDiemDanhVong.nDiem_1 = 30;		--Điểm Danh Vọng ST Nhận được
tbDoiDiemDanhVong.nDiem_2 = 150;	--Điểm Danh Vọng ST Nhận được
tbDoiDiemDanhVong.nDiem_3 = 300;	--Điểm Danh Vọng ST Nhận được
tbDoiDiemDanhVong.nDiem_4 = 600;	--Điểm Danh Vọng ST Nhận được


local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 10},		--Lệnh Bài Sát Thần PK
		{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 10},		--Hiệp Nghĩa Tửu
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 50},		--Lệnh Bài Sát Thần PK
		{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 50},		--Hiệp Nghĩa Tửu
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 100},	--Lệnh Bài Sát Thần PK
		{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 100},	--Hiệp Nghĩa Tửu
	},
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 200},	--Lệnh Bài Sát Thần PK
		{{string.format("%s,%s,%s,%s", 18,1,3006,3),}, 200},	--Hiệp Nghĩa Tửu
	},

};

function tbDoiDiemDanhVong:OnDialog()
	local szMsg = [[
<color=yellow>Bảng Đổi Điểm Danh Vọng Sát Thần PK:
- Áp dụng cho Danh vọng cấp 6 trở lên.
- Tối Đa đổi đến Cấp Danh vọng 8.
<color=blue>*30 Điểm Danh Vọng Sát Thần:
~Lệnh Bài Sát Thần PK - 10 cái
~Hiệp Nghĩa Tửu - 10 cái<color>
<color=green>*100 Điểm Danh Vọng Sát Thần:
~Lệnh Bài Sát Thần PK - 50 cái
~Hiệp Nghĩa Tửu - 50 cái<color>
<color=cyan>*320 Điểm Danh Vọng Sát Thần:
~Lệnh Bài Sát Thần PK - 100 cái
~Hiệp Nghĩa Tửu - 100 cái<color>
<color=gold>*650 Điểm Danh Vọng Sát Thần:
~Lệnh Bài Sát Thần PK - 200 cái
~Hiệp Nghĩa Tửu - 200 cái<color>
]];
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt, 1, {"<color=yellow>Đổi: <color=cyan>30<color> Điểm Danh Vọng<color>", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>Đổi: <color=cyan>100<color> Điểm Danh Vọng<color>", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>Đổi: <color=cyan>320<color> Điểm Danh Vọng<color>", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>Đổi: <color=cyan>650<color> Điểm Danh Vọng<color>", self.LuaChon, self, 4});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbDoiDiemDanhVong:LuaChon(nValue)
	local szMsg = "<color=gold>[Hệ Thống Đổi Điểm Danh Vọng Sát Thần PK]<color>";
	local nLevel = me.GetReputeLevel(14, 1);
	if nLevel >= self.GioiHanDV then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Danh Vọng Sát Thần đã đạt Giới hạn Cấp 8, không thể đổi nữa!<color>"));
	return 0;
	end

	
	if (nValue == 1) then	
	szMsg = "<color=yellow>Đổi 30 Điểm, cần Đặt vào :\n<color=cyan>1)- Hiệp Nghĩa Tửu: 10 Cái\n<color=green>2)- Lệnh Bài Sát Thần PK: 10 Cái<color><color>";
	end;
	
	if (nValue == 2) then
	szMsg = "<color=yellow>Đổi 100 Điểm, cần Đặt vào :\n<color=cyan>1)- Hiệp Nghĩa Tửu: 50 Cái\n<color=green>2)- Lệnh Bài Sát Thần PK: 50 Cái<color><color><color>";
	end;
	
	if (nValue == 3) then
	szMsg = "<color=yellow>Đổi 320 Điểm, cần Đặt vào :\n<color=cyan>1)- Hiệp Nghĩa Tửu: 100 Cái\n<color=green>2)- Lệnh Bài Sát Thần PK: 100 Cái<color><color><color>";
	end;
	
	if (nValue == 4) then
	szMsg = "<color=yellow>Đổi 650 Điểm, cần Đặt vào :\n<color=cyan>1)- Hiệp Nghĩa Tửu: 200 Cái\n<color=green>2)- Lệnh Bài Sát Thần PK: 200 Cái<color><color><color>";
	end;

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiDiemDanhVong:OnOpenGiftOk(nValue, tbItemObj)
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
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
---Phần thưởng---
	if (nValue == 1) then
	me.AddRepute(14,1,self.nDiem_1);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=red>"..self.nDiem_1.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=red>"..self.nDiem_1.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 2) then
	me.AddRepute(14,1,self.nDiem_2);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=red>"..self.nDiem_2.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=red>"..self.nDiem_2.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 3) then
	me.AddRepute(14,1,self.nDiem_3);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=red>"..self.nDiem_3.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=red>"..self.nDiem_3.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 4) then
	me.AddRepute(14,1,self.nDiem_4);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=red>"..self.nDiem_4.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=red>"..self.nDiem_4.."<color> Điểm Danh Vọng Sát Thần PK từ Hệ Thống Đổi Điểm Danh Vọng<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	

	
end;

function tbDoiDiemDanhVong:ChechItem(pItem, tbItemList, tbCountList)
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