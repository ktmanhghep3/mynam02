local tbItem = Item:GetClass("Box_KNTP_Kim");	



function tbItem:OnUse()
	local szMsg = "✩ Chọn Môn Phái cần Thao tác:";
	local tbOpt = {
			
			{"<color=yellow>Lưu Trữ Trấn phái Thiếu Lâm<color>",SpecialEvent.Luu_TranPhaiHeKim.OnDialog_TL, SpecialEvent.Luu_TranPhaiHeKim,};
			{"<color=yellow>Lưu Trữ Trấn phái Thiên Vương<color>",SpecialEvent.Luu_TranPhaiHeKim.OnDialog_TV, SpecialEvent.Luu_TranPhaiHeKim,};
			
			{"<color=yellow>Rút Trấn phái Thiếu Lâm<color>",SpecialEvent.Rut_TranPhaiHeKim.OnDialog_TL, SpecialEvent.Rut_TranPhaiHeKim,};
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
