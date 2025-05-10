local tbNhiemVuNgay_ThuThapVatPham ={};
SpecialEvent.NVNgay_ThuThapVatPham = tbNhiemVuNgay_ThuThapVatPham;


tbNhiemVuNgay_ThuThapVatPham.TongSo_NhiemVuTrongNgay = 50;
tbNhiemVuNgay_ThuThapVatPham.So_Huyen_Tinh = 1;
tbNhiemVuNgay_ThuThapVatPham.Cap_Yeu_Cau = 50;
--Task
tbNhiemVuNgay_ThuThapVatPham.NhiemVuNgay = 4526;
tbNhiemVuNgay_ThuThapVatPham.ReSet_DiemSoNhiemVuDaNhan = 1;
tbNhiemVuNgay_ThuThapVatPham.ID_DiemSoNhiemVuDaNhan = 2;
tbNhiemVuNgay_ThuThapVatPham.ReSet_DiemSoNhiemVuHoanThanh = 3;
tbNhiemVuNgay_ThuThapVatPham.ID_DiemSoNhiemVuHoanThanh = 4;
tbNhiemVuNgay_ThuThapVatPham.ReSet_QuaMoc10 = 5;
tbNhiemVuNgay_ThuThapVatPham.ID_QuaMoc10 = 6;
tbNhiemVuNgay_ThuThapVatPham.ReSet_QuaMoc20 = 7;
tbNhiemVuNgay_ThuThapVatPham.ID_QuaMoc20 = 8;
tbNhiemVuNgay_ThuThapVatPham.ReSet_QuaMoc30 = 9;
tbNhiemVuNgay_ThuThapVatPham.ID_QuaMoc30 = 10;
tbNhiemVuNgay_ThuThapVatPham.ID_ActiveNhiemVu = 11;
tbNhiemVuNgay_ThuThapVatPham.ID_ChonNhiemVu = 12
tbNhiemVuNgay_ThuThapVatPham.ID_DiemSoNPC = 14;

tbNhiemVuNgay_ThuThapVatPham.ReSet_QuaMoc40 = 15;
tbNhiemVuNgay_ThuThapVatPham.ID_QuaMoc40 = 16;

tbNhiemVuNgay_ThuThapVatPham.ReSet_QuaMoc50 = 17;
tbNhiemVuNgay_ThuThapVatPham.ID_QuaMoc50 = 18;

function tbNhiemVuNgay_ThuThapVatPham:OnDialog()
	--Reset Ngày--
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if me.GetTask(self.NhiemVuNgay,self.ReSet_DiemSoNhiemVuDaNhan) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_DiemSoNhiemVuDaNhan, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuDaNhan, 0);
	end 	
	if me.GetTask(self.NhiemVuNgay,self.ReSet_DiemSoNhiemVuHoanThanh) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_DiemSoNhiemVuHoanThanh, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh, 0);
	end 

	local nNeedBag = 6;
	if me.CountFreeBagCell() < nNeedBag then
    	local szAnnouce = "Hành trang yêu cầu "..nNeedBag.." ô trống";
    	Dialog:Say(szAnnouce);
    	return 0;    
	end

	local nSoNhiemVu = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuDaNhan)
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	
	local szMsg = "<bclr=0,0,200><color=white>Hoạt động Du Ký Giang Hồ:\n"..
	"<bclr=0,0,200><color=white>✪ Thu Thập Bảo Vật hằng ngày:<color>\n"..
	"<color=yellow>★ Nhiệm vụ thu thập Bảo vật ngẫu nhiên mọi nơi trong cõi Kiếm Thế<color>\n"..
	"<color=yellow>★ Nhiệm vụ đã nhận : <color=green>"..nSoNhiemVu.."<color>/"..self.TongSo_NhiemVuTrongNgay.."<color>\n"..
	"<color=yellow>★ Nhiệm vụ đã Hoàn thành: <color=green>"..nSoHoanThanh.."<color>/"..self.TongSo_NhiemVuTrongNgay.."<color>\n"..
	"<color=yellow>★ Thưởng các mốc hoàn thành: 10-20-30-40-50<color>\n"
	
    local tbOpt =     {}
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_ActiveNhiemVu)
	if nCheck >= 1 then
		table.insert(tbOpt, {"<color=yellow>Nộp vật phẩm nhiệm vụ<color>",self.Open_NopVatPham,self});
		table.insert(tbOpt, {"<color=cyan>Chi tiết nhiệm vụ<color>",self.RandomNhiemVu,self});
	else
		table.insert(tbOpt, {"<color=yellow>Nhận nhiệm vụ thứ: "..(nSoHoanThanh+1).."",self.GetNhiemVu,self});
    end
	table.insert(tbOpt, {"<color=yellow>Nhận thưởng Mốc hoàn thành nhiệm vụ<color>",self.NhanThuong,self});
    table.insert(tbOpt, {"Hiện tại ta chưa muốn"});
    Dialog:Say(szMsg, tbOpt)
end


function tbNhiemVuNgay_ThuThapVatPham:RandomNhiemVu()
	local nRandomNhiemVu = me.GetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu);
	local szMsg = ""; 
	if nRandomNhiemVu == 2 then
		szMsg = "Nhanh chóng đến <color=green>Tửu Lầu<color> thu thập về đây 1 <color=yellow>Ngọc Trúc Mai Hoa<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 3 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa<color> thu thập về đây 1 <color=yellow>La bàn<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 4 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Binh Khí<color> thu thập về đây 1 <color=yellow>Đồng khoáng thạch thô<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 5 then
		szMsg = "Nhanh chóng đến <color=green>Bán Ngựa<color> thu thập về đây 1 <color=yellow>Mã bài (Đại Uyển Mã)<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 6 then
		szMsg = "Nhanh chóng đến <color=green>Bán Ngựa<color> thu thập về đây 1 <color=yellow>Mã bài (Ô Truy)<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 7 then
		szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Bản đồ bí cảnh<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 8 then
		szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Bạch Câu Hoàn<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 9 then
		szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Cửu Chuyển Tục Mệnh Hoàn<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 10 then
		szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các, Tiền Trang<color> thu thập về đây 1 <color=yellow>Tu Luyện Đơn<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 11 then
		szMsg = "Nhanh chóng đến <color=green>Tiền Trang<color> thu thập về đây 1 <color=yellow>Lục Thao Tập Chú<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 12 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Phòng Cụ<color> thu thập về đây 1 <color=yellow>Á ma thô<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 13 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Trang Sức, Binh Khí<color> thu thập về đây 1 <color=yellow>Gỗ thông thô<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 14 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Phòng Cụ, Binh Khí<color> thu thập về đây 1 <color=yellow>Da dê nát<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 15 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Thuốc<color> thu thập về đây 1 <color=yellow>Tàng hồng hoa (tiểu)<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 16 then
		szMsg = "Nhanh chóng đến <color=green>Tạp Hóa<color> thu thập về đây 1 <color=yellow>Chiêu Thư Tống Kim<color>";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 17 then
		szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Tử Sa Khoáng<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 211/187";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 18 then
		szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Thanh Sa Khoáng<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 197/190";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 19 then
		szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mật Thư Tình Báo<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 216/200";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 20 then
		szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mảnh Giáp Lan Sơn<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 230/190";
		Dialog:Say(szMsg);
	elseif nRandomNhiemVu == 21 then
		szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Anh Hùng Tửu<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 215/190";
		Dialog:Say(szMsg);		
	else
	Dialog:Say("Không xác định được loại vật phẩm cần tìm!");
	end
end

function tbNhiemVuNgay_ThuThapVatPham:Open_NopVatPham()
    Dialog:OpenGift("<bclr=0,0,200><color=white>Đặt vật phẩm Nhiệm vụ yêu cầu vào.\nLưu ý: Số lượng 1 cái.", nil ,{self.GetFinish, self});
end

function tbNhiemVuNgay_ThuThapVatPham:GetFinish(tbItemObj)
	local nCheckHoan = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nCheckHoan >= self.TongSo_NhiemVuTrongNgay then
    	Dialog:Say("Hôm nay đã hoàn thành "..nCheckHoan.." nhiệm vụ, không thể nhận thêm");
    	return 0;    
	end
	local nLoaiNv = me.GetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu);
	local IdVatPham = ""; 
	if nLoaiNv == 2 then
		IdVatPham = "19,3,1,5"; 
	elseif nLoaiNv == 3 then
		IdVatPham = "18,1,75,1"; 
	elseif nLoaiNv == 4 then
		IdVatPham = "22,1,21,1"; 
	elseif nLoaiNv == 5 then
		IdVatPham = "1,12,3,2"; 
	elseif nLoaiNv == 6 then
		IdVatPham = "1,12,4,2"; 
	elseif nLoaiNv == 7 then
		IdVatPham = "18,1,251,1"; 
	elseif nLoaiNv == 8 then
		IdVatPham = "18,1,71,1"; 
	elseif nLoaiNv == 9 then
		IdVatPham = "18,1,24,1"; 
	elseif nLoaiNv == 10 then
		IdVatPham = "18,1,258,1"; 
	elseif nLoaiNv == 11 then
		IdVatPham = "18,1,320,1"; 
	elseif nLoaiNv == 12 then
		IdVatPham = "22,1,23,1"; 
	elseif nLoaiNv == 13 then
		IdVatPham = "22,1,27,1"; 
	elseif nLoaiNv == 14 then
		IdVatPham = "22,1,29,1"; 
	elseif nLoaiNv == 15 then
		IdVatPham = "22,1,25,1"; 
	elseif nLoaiNv == 16 then
		IdVatPham = "18,1,27,1"; 
	elseif nLoaiNv == 17 then
		IdVatPham = "18,1,4041,1"; 
	elseif nLoaiNv == 18 then
		IdVatPham = "18,1,4041,2"; 
	elseif nLoaiNv == 19 then
		IdVatPham = "18,1,4041,3"; 
	elseif nLoaiNv == 20 then
		IdVatPham = "18,1,4041,4"; 
	elseif nLoaiNv == 21 then
		IdVatPham = "18,1,4041,5"; 		
	else
	Dialog:Say("Không xác định được loại vật phẩm cần tìm, liên hệ GM");
	end
--check vật phẩm
    for i = 1, #tbItemObj do 
    local pItem = tbItemObj[i][1]; 
    local szKey = string.format("%s,%s,%s,%s",pItem.nGenre,pItem.nDetail,pItem.nParticular,pItem.nLevel); 
    if szKey ~= IdVatPham then 
    Dialog:Say("Vật phẩm không đúng yêu cầu, hãy kiểm tra lại vật phẩm nhiệm vụ", {"Kết thúc đối thoại !"}); 
	return 0;
    end 
    end 
---check số lượng
    local nCount = 0;
    for i = 1, #tbItemObj do 
    nCount = nCount + tbItemObj[i][1].nCount; 
    end 

    if nCount ~= 1 then 
    Dialog:Say("Ta chỉ cần 1 vật phẩm", {"Kết thúc đối thoại !"}); 
    return 0; 
    end 
    for _, pItem in pairs(tbItemObj) do
        if me.DelItem(pItem[1]) ~= 1 then
            return 0;
        end
    end
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh,nSoHoanThanh + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_ActiveNhiemVu,0);
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,0);
	Dialog:Say("<bclr=0,0,200><color=white>Chúc mừng bạn đã hoàn thành nhiệm vụ trong ngày lần thứ: "..(nSoHoanThanh+1).."/"..self.TongSo_NhiemVuTrongNgay.."");
        return 1;
end

function tbNhiemVuNgay_ThuThapVatPham:GetNhiemVu()
	local nSoNhiemVu = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuDaNhan)
	if nSoNhiemVu >= self.TongSo_NhiemVuTrongNgay then
    	Dialog:Say("Hôm nay bạn đã làm "..self.TongSo_NhiemVuTrongNgay.." nhiệm vụ, không thể nhận thêm");
		return 0;
	end

	local nCheckHoan = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nCheckHoan >= self.TongSo_NhiemVuTrongNgay then
    	Dialog:Say("Hôm nay đã hoàn thành "..nCheckHoan.." nhiệm vụ, không thể nhận thêm");
    	return 0;    
	end

-------
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	nRand = MathRandom(1, 100);
	local tbRate = {5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5}; -- Rate
	local tbAward = {1 ,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}; -- Rate
	for i = 1, 20 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end
	
	if (tbAward[nIndex]==1) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,2);
	local szMsg = "Nhanh chóng đến <color=green>Tửu Lầu<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Ngọc Trúc Mai Hoa<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==2) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,3);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>La bàn<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==3) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,4);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Binh Khí<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Đồng khoáng thạch thô<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==4) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,5);
	local szMsg = "Nhanh chóng đến <color=green>Bán Ngựa<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Mã bài (Đại Uyển Mã)<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==5) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,6);
	local szMsg = "Nhanh chóng đến <color=green>Bán Ngựa<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Mã bài (Ô Truy)<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==6) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,7);
	local szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> tại <color=blue>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Bản đồ bí cảnh<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==7) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,8);
	local szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> tại <color=blue>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Bạch Câu Hoàn<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==8) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,9);
	local szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các<color> tại <color=blue>Kỳ Trân Các<color> thu thập về đây 1 <color=yellow>Cửu Chuyển Tục Mệnh Hoàn<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==9) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,10);
	local szMsg = "Nhanh chóng đến <color=green>Kỳ Trân Các, Tiền Trang<color> tại <color=blue>Kỳ Trân Các,Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Tu Luyện Đơn<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==10) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,11);
	local szMsg = "Nhanh chóng đến <color=green>Tiền Trang<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Lục Thao Tập Chú<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==11) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,12);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Phòng Cụ<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Á ma thô<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==12) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,13);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Trang Sức, Binh Khí<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Gỗ thông thô<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==13) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,14);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Phòng Cụ, Binh Khí<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Da dê nát<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==14) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,15);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa, Thuốc<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Tàng hồng hoa (tiểu)<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==15) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,16);
	local szMsg = "Nhanh chóng đến <color=green>Tạp Hóa<color> tại <color=blue>Tân Thủ Thôn, Thành Thị<color> thu thập về đây 1 <color=yellow>Chiêu Thư Tống Kim<color>";
	Dialog:Say(szMsg);
	me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==16) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,17);
	local szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Tử Sa Khoáng<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 211/187";
	me.Msg(string.format("Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Tử Sa Khoáng<color>\nVị Trí Tọa Độ:<pos=2105,1692,3000>"));
	Dialog:Say(szMsg);
	--me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==17) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,18);
	local szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Thanh Sa Khoáng<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 197/190";
	me.Msg(string.format("Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Thanh Sa Khoáng<color>\nVị Trí Tọa Độ:<pos=2105,1578,3038>"));
	Dialog:Say(szMsg);
	--me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==18) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,19);
	local szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mật Thư Tình Báo<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 216/200";
	me.Msg(string.format("Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mật Thư Tình Báo<color>\nVị Trí Tọa Độ:<pos=2105,1732,3201>"));
	Dialog:Say(szMsg);
	--me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==19) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,20);
	local szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mảnh Giáp Lan Sơn<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 230/190";
	me.Msg(string.format("Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Mảnh Giáp Lan Sơn<color>\nVị Trí Tọa Độ:<pos=2105,1847,3046>"));
	Dialog:Say(szMsg);
	--me.Msg(szMsg);
	end
	
	if (tbAward[nIndex]==20) then
	me.SetTask(self.NhiemVuNgay,self.ID_ChonNhiemVu,21);
	local szMsg = "Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Anh Hùng Tửu<color>\nVị Trí Tọa Độ:\nĐông Hạ Lan Sơn: 215/190";
	me.Msg(string.format("Nhanh chóng đến <color=green>Khắc Di Môn<color> tại <color=blue>[Khắc Di Môn]-Đông Hạ Lan Sơn<color> thu thập về đây 1 <color=yellow>Anh Hùng Tửu<color>\nVị Trí Tọa Độ:<pos=2105,1727,3041>"));
	Dialog:Say(szMsg);
	--me.Msg(szMsg);
	end
	
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuDaNhan,nSoNhiemVu + 1);
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_ActiveNhiemVu)
	me.SetTask(self.NhiemVuNgay,self.ID_ActiveNhiemVu,nCheck + 1);
-------
end

function tbNhiemVuNgay_ThuThapVatPham:NhanThuong()
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if me.GetTask(self.NhiemVuNgay,self.ReSet_QuaMoc10) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_QuaMoc10, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc10, 0);
	end 
	if me.GetTask(self.NhiemVuNgay,self.ReSet_QuaMoc20) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_QuaMoc20, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc20, 0);
	end 
	if me.GetTask(self.NhiemVuNgay,self.ReSet_QuaMoc30) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_QuaMoc30, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc30, 0);
	end 
	if me.GetTask(self.NhiemVuNgay,self.ReSet_QuaMoc40) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_QuaMoc40, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc40, 0);
	end 
	if me.GetTask(self.NhiemVuNgay,self.ReSet_QuaMoc50) < nDate then
		me.SetTask(self.NhiemVuNgay,self.ReSet_QuaMoc50, nDate);
		me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc50, 0);
	end 
	
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	local szMsg = "Chọn mốc bạn đã hoàn thành để nhận thưởng nhiệm vụ";
    local tbOpt =     {}
			local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc10);
			if nSoHoanThanh >= 10 and nCheck < 1 then
            table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng mốc 10 nhiệm vụ<color>",self.mocnv10,self});
			else
            table.insert(tbOpt, {"<color=gray>Nhận thưởng mốc 10 nhiệm vụ<color>",self.mocnv10,self});
	        end
			
			local nCheckk = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc20);
			if nSoHoanThanh >= 20 and nCheckk < 1 then
            table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng mốc 20 nhiệm vụ<color>",self.mocnv20,self});
			else
            table.insert(tbOpt, {"<color=gray>Nhận thưởng mốc 20 nhiệm vụ<color>",self.mocnv20,self});
	        end
			
			local nCheckkk = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc30);
			if nSoHoanThanh >= 30 and nCheckkk < 1 then
            table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng mốc 30 nhiệm vụ<color>",self.mocnv30,self});
			else
            table.insert(tbOpt, {"<color=gray>Nhận thưởng mốc 30 nhiệm vụ<color>",self.mocnv30,self});
	        end
			
			local nCheckkk = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc40);
			if nSoHoanThanh >= 40 and nCheckkk < 1 then
            table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng mốc 40 nhiệm vụ<color>",self.mocnv40,self});
			else
            table.insert(tbOpt, {"<color=gray>Nhận thưởng mốc 40 nhiệm vụ<color>",self.mocnv40,self});
	        end

			local nCheckkk = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc50);
			if nSoHoanThanh >= 50 and nCheckkk < 1 then
            table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng mốc 50 nhiệm vụ<color>",self.mocnv50,self});
			else
            table.insert(tbOpt, {"<color=gray>Nhận thưởng mốc 50 nhiệm vụ<color>",self.mocnv50,self});
	        end
			
			
            table.insert(tbOpt, {"Kết thúc đối thoại"});

    Dialog:Say(szMsg, tbOpt)
end


function tbNhiemVuNgay_ThuThapVatPham:mocnv10()
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nSoHoanThanh < 10 then
	Dialog:Say("Bạn chưa hoàn thành đến mốc 10 nhiệm vụ");
	return 0;
	end
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc10);
	if nCheck >= 1 then
	Dialog:Say("Phần thưởng chỉ nhận 1 lần mỗi ngày!");
	return 0;
	end
	local nThong = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNPC);
	me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc10,nCheck + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNPC,nThong + 1);
		
	--Phần thưởng
	me.AddStackItem(18,1,4038,1,{bForceBind=1,},3); --Du Long Giác
	me.AddStackItem(18,1,4041,6,{bForceBind=1,},1); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say("<color=yellow>Chúc mừng bạn đã nhận thưởng mốc 10 nhiệm vụ hàng ngày");
end
function tbNhiemVuNgay_ThuThapVatPham:mocnv20()
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nSoHoanThanh < 20 then
	Dialog:Say("Bạn chưa hoàn thành đến mốc 20 nhiệm vụ");
	return 0;
	end
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc20);
	if nCheck >= 1 then
	Dialog:Say("Phần thưởng chỉ nhận 1 lần mỗi ngày!");
	return 0;
	end
	local nThong = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNPC);
	me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc20,nCheck + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNPC,nThong + 1);

	--Phần thưởng
	me.AddStackItem(18,1,4038,1,{bForceBind=1,},3); --Du Long Giác
	me.AddStackItem(18,1,4041,6,{bForceBind=1,},1); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say("<color=yellow>Chúc mừng bạn đã nhận thưởng mốc 20 nhiệm vụ hàng ngày");
end

function tbNhiemVuNgay_ThuThapVatPham:mocnv30()
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nSoHoanThanh < 30 then
	Dialog:Say("Bạn chưa hoàn thành đến mốc 30 nhiệm vụ");
	return 0;
	end
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc30);
	if nCheck >= 1 then
	Dialog:Say("Phần thưởng chỉ nhận 1 lần mỗi ngày!");
	return 0;
	end
	local nThong = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNPC);
	me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc30,nCheck + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNPC,nThong + 1);

	--Phần thưởng
	me.AddStackItem(18,1,4038,1,{bForceBind=1,},3); --Du Long Giác
	me.AddStackItem(18,1,4041,6,{bForceBind=1,},1); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say("<color=yellow>Chúc mừng bạn đã nhận thưởng mốc 30 nhiệm vụ hàng ngày");
end

function tbNhiemVuNgay_ThuThapVatPham:mocnv40()
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nSoHoanThanh < 40 then
	Dialog:Say("Bạn chưa hoàn thành đến mốc 40 nhiệm vụ");
	return 0;
	end
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc40);
	if nCheck >= 1 then
	Dialog:Say("Phần thưởng chỉ nhận 1 lần mỗi ngày!");
	return 0;
	end
	local nThong = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNPC);
	me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc40,nCheck + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNPC,nThong + 1);

	--Phần thưởng
	me.AddStackItem(18,1,4038,1,{bForceBind=1,},3); --Du Long Giác
	me.AddStackItem(18,1,4041,6,{bForceBind=1,},1); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say("<color=yellow>Chúc mừng bạn đã nhận thưởng mốc 40 nhiệm vụ hàng ngày");
end

function tbNhiemVuNgay_ThuThapVatPham:mocnv50()
	local nSoHoanThanh = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNhiemVuHoanThanh);
	if nSoHoanThanh < 50 then
	Dialog:Say("Bạn chưa hoàn thành đến mốc 50 nhiệm vụ");
	return 0;
	end
	local nCheck = me.GetTask(self.NhiemVuNgay,self.ID_QuaMoc50);
	if nCheck >= 1 then
	Dialog:Say("Phần thưởng chỉ nhận 1 lần mỗi ngày!");
	return 0;
	end
	local nThong = me.GetTask(self.NhiemVuNgay,self.ID_DiemSoNPC);
	me.SetTask(self.NhiemVuNgay,self.ID_QuaMoc50,nCheck + 1);
	me.SetTask(self.NhiemVuNgay,self.ID_DiemSoNPC,nThong + 1);

	--Phần thưởng
	me.AddStackItem(18,1,4038,1,{bForceBind=1,},10); --Du Long Giác
	me.AddStackItem(18,1,4041,6,{bForceBind=1,},2); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say("<color=yellow>Chúc mừng bạn đã nhận thưởng mốc 50 nhiệm vụ hàng ngày");
end

