local tbNangCap_NguLoiThanKiem = {};
SpecialEvent.NangCap_NguLoiThanKiem = tbNangCap_NguLoiThanKiem;

tbNangCap_NguLoiThanKiem.ID_ThanKiem = 1781;
tbNangCap_NguLoiThanKiem.LvYeuCau = 1;
tbNangCap_NguLoiThanKiem.LvMax = 20;
tbNangCap_NguLoiThanKiem.SoLuong_NguLoiDan = 10;

tbNangCap_NguLoiThanKiem.Rate_ThanhCong = 5;
tbNangCap_NguLoiThanKiem.Rate_ThatBai = 100-tbNangCap_NguLoiThanKiem.Rate_ThanhCong;



function tbNangCap_NguLoiThanKiem:OnDialog()
local nLevel = me.GetSkillLevel(self.ID_ThanKiem);
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
	if nLevel < self.LvYeuCau then
	table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>[Kích Hoạt Thần Kiếm Ngự Lôi]",self.KichHoat,self});
	else
	end

	if nLevel >= self.LvYeuCau then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>[Nâng Cấp Thần Kiếm Ngự Lôi]",self.NangCapKyNang,self});
	else
	end


Dialog:Say(szMsg, tbOpt);
end








function tbNangCap_NguLoiThanKiem:KichHoat()
	local Item_Non = me.GetEquip(Item.EQUIPPOS_HEAD); --Nón
	local Item_Ao = me.GetEquip(Item.EQUIPPOS_BODY);	--Áo
	local Item_YeuDai = me.GetEquip(Item.EQUIPPOS_BELT);	--Yêu đái
	local Item_VuKhi = me.GetEquip(Item.EQUIPPOS_WEAPON);	--Vũ khí
	local Item_Giay = me.GetEquip(Item.EQUIPPOS_FOOT);	--Giày
	local Item_Tay = me.GetEquip(Item.EQUIPPOS_CUFF);	--Tay
	local Item_Phu = me.GetEquip(Item.EQUIPPOS_AMULET);	--Phù
	local Item_Nhan = me.GetEquip(Item.EQUIPPOS_RING);	--Nhẫn
	local Item_Lien = me.GetEquip(Item.EQUIPPOS_NECKLACE);	--Liên
	local Item_Boi = me.GetEquip(Item.EQUIPPOS_PENDANT);	--Bội	
	local Item_Ngua = me.GetEquip(Item.EQUIPPOS_HORSE);	--Ngựa
	local Item_MatNa = me.GetEquip(Item.EQUIPPOS_MASK);	--Mặt Nạ
	local Item_BiKiep = me.GetEquip(Item.EQUIPPOS_BOOK);	--Bí kíp
	local Item_Tran = me.GetEquip(Item.EQUIPPOS_ZHEN);	--Trận
	local Item_An = me.GetEquip(Item.EQUIPPOS_SIGNET);	--Ấn
	local Item_FF = me.GetEquip(Item.EQUIPPOS_MANTLE);	--Phi Phong
	local Item_QuanAn = me.GetEquip(Item.EQUIPPOS_CHOP);	--Quan ấn
	if (Item_Non == nil) and (Item_Ao == nil) and (Item_YeuDai == nil) and (Item_VuKhi == nil) and (Item_Giay == nil) and (Item_Tay == nil) and (Item_Phu == nil) and (Item_Nhan == nil) and (Item_Lien == nil) and (Item_Boi == nil) and (Item_Ngua == nil) and (Item_MatNa == nil) and (Item_BiKiep == nil) and (Item_Tran == nil) and (Item_An == nil) and (Item_FF == nil) and (Item_QuanAn == nil) then

	--phần thưởng--
	local nLevel = me.GetSkillLevel(self.ID_ThanKiem);
	local tbItemId1	= {18,1,3965,3,0,0};	--Ngự Lôi Dẫn
	local nCount1 = me.GetItemCountInBags(18,1,3965,3) 
	if nLevel >= self.LvYeuCau then
	Dialog:Say("<bclr=0,0,200><color=white>Ngươi đã học qua Thần Kiếm Ngự Lôi Chân Quyết, không cần Kích hoạt!");
	return 0;
	end

	if nLevel == self.LvMax then
	Dialog:Say("<bclr=0,0,200><color=white>Thần Kiếm Ngự Lôi Chân Quyết đã đạt cấp độ giới hạn cao nhất, không thể Kích hoạt!");
	return 0;
	end

	if nCount1 < self.SoLuong_NguLoiDan then
	Dialog:Say("<bclr=0,0,200><color=white>Ngươi cần Chuẩn bị nguyên liệu sau để Kích hoạt:\nNgự Lôi Dẫn: ["..self.SoLuong_NguLoiDan.."]<color>");
	return
	end

	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {self.Rate_ThanhCong,self.Rate_ThatBai};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(self.ID_ThanKiem,1);
	local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Kích hoạt Thành công Thần Kiếm Ngự Lôi Chân Quyết (+1) với "..(self.Rate_ThanhCong+10).."%, Thật là may mắn !!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Kích hoạt Thất bại Thần Kiếm Ngự Lôi Chân Quyết (+1) với "..(self.Rate_ThanhCong+10).."% may mắn !!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end
	
	Task:DelItem(me, tbItemId1, self.SoLuong_NguLoiDan);
	else
		Dialog:Say("<bclr=0,0,200><color=white>Các loại Trang bị sau phải lấy ra khỏi người mới dùng được Kích hoạt Kỹ Năng Thần Kiếm Ngự Lôi Chân Quyết: \n-Nón.\n-Áo.\n-Lưng.\n-Vũ khí.\n-Giày.\n-Tay.\n-Phù.\n-Nhẫn.\n-Liên.\n-Bội.\n-Ngựa.\n-Mặt Nạ.\n-Bí Kiếp.\n-Trận (Tuyệt Kỹ).\n-Ấn.\n-Phi Phong.\n-Quan Ấn.<color>")
		return 0;
	end

end


function tbNangCap_NguLoiThanKiem:NangCapKyNang()
	local Item_Non = me.GetEquip(Item.EQUIPPOS_HEAD); --Nón
	local Item_Ao = me.GetEquip(Item.EQUIPPOS_BODY);	--Áo
	local Item_YeuDai = me.GetEquip(Item.EQUIPPOS_BELT);	--Yêu đái
	local Item_VuKhi = me.GetEquip(Item.EQUIPPOS_WEAPON);	--Vũ khí
	local Item_Giay = me.GetEquip(Item.EQUIPPOS_FOOT);	--Giày
	local Item_Tay = me.GetEquip(Item.EQUIPPOS_CUFF);	--Tay
	local Item_Phu = me.GetEquip(Item.EQUIPPOS_AMULET);	--Phù
	local Item_Nhan = me.GetEquip(Item.EQUIPPOS_RING);	--Nhẫn
	local Item_Lien = me.GetEquip(Item.EQUIPPOS_NECKLACE);	--Liên
	local Item_Boi = me.GetEquip(Item.EQUIPPOS_PENDANT);	--Bội	
	local Item_Ngua = me.GetEquip(Item.EQUIPPOS_HORSE);	--Ngựa
	local Item_MatNa = me.GetEquip(Item.EQUIPPOS_MASK);	--Mặt Nạ
	local Item_BiKiep = me.GetEquip(Item.EQUIPPOS_BOOK);	--Bí kíp
	local Item_Tran = me.GetEquip(Item.EQUIPPOS_ZHEN);	--Trận
	local Item_An = me.GetEquip(Item.EQUIPPOS_SIGNET);	--Ấn
	local Item_FF = me.GetEquip(Item.EQUIPPOS_MANTLE);	--Phi Phong
	local Item_QuanAn = me.GetEquip(Item.EQUIPPOS_CHOP);	--Quan ấn
	if (Item_Non == nil) and (Item_Ao == nil) and (Item_YeuDai == nil) and (Item_VuKhi == nil) and (Item_Giay == nil) and (Item_Tay == nil) and (Item_Phu == nil) and (Item_Nhan == nil) and (Item_Lien == nil) and (Item_Boi == nil) and (Item_Ngua == nil) and (Item_MatNa == nil) and (Item_BiKiep == nil) and (Item_Tran == nil) and (Item_An == nil) and (Item_FF == nil) and (Item_QuanAn == nil) then

	--phần thưởng--
	local nLevel = me.GetSkillLevel(self.ID_ThanKiem);
	local tbItemId1	= {18,1,3965,3,0,0};	--Ngự Lôi Dẫn
	local nCount1 = me.GetItemCountInBags(18,1,3965,3) 
	if nLevel < self.LvYeuCau then
	Dialog:Say("<bclr=0,0,200><color=white>Ngươi chưa học qua Thần Kiếm Ngự Lôi Chân Quyết, không thể tiến hành Nâng cấp!");
	return 0;
	end

	if nLevel == self.LvMax then
	Dialog:Say("<bclr=0,0,200><color=white>Thần Kiếm Ngự Lôi Chân Quyết đã đạt cấp độ giới hạn cao nhất, không thể nâng cấp!");
	return 0;
	end

	if nCount1 < self.SoLuong_NguLoiDan then
	Dialog:Say("<bclr=0,0,200><color=white>Ngươi cần Chuẩn bị nguyên liệu sau để Nâng cấp:\nNgự Lôi Dẫn: ["..self.SoLuong_NguLoiDan.."]<color>");
	return
	end

	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {self.Rate_ThanhCong,self.Rate_ThatBai};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(self.ID_ThanKiem,nLevel + 1);
	local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã nâng cấp Thành công Thần Kiếm Ngự Lôi Chân Quyết (+" ..(nLevel + 1)..") với "..(self.Rate_ThanhCong+10).."%, Thật là may mắn !!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã nâng cấp Thất bại Thần Kiếm Ngự Lôi Chân Quyết (+" ..(nLevel + 1)..") với "..(self.Rate_ThanhCong+10).."% may mắn !!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end
	
	Task:DelItem(me, tbItemId1, self.SoLuong_NguLoiDan);
	else
		Dialog:Say("<bclr=0,0,200><color=white>Các loại Trang bị sau phải lấy ra khỏi người mới dùng được Nâng Cấp Kỹ Năng Thần Kiếm Ngự Lôi Chân Quyết: \n-Nón.\n-Áo.\n-Lưng.\n-Vũ khí.\n-Giày.\n-Tay.\n-Phù.\n-Nhẫn.\n-Liên.\n-Bội.\n-Ngựa.\n-Mặt Nạ.\n-Bí Kiếp.\n-Trận (Tuyệt Kỹ).\n-Ấn.\n-Phi Phong.\n-Quan Ấn.<color>")
		return 0;
	end

end
