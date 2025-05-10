local tbItem = Item:GetClass("DiemThanhTuu_Item");

tbItem.TK_DiemThanhTuuPK = 4500;
tbItem.ID_DiemThanhTuuPK = 1;

function tbItem:OnUse()	
	local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);
	me.SetTask(self.TK_DiemThanhTuuPK, self.ID_DiemThanhTuuPK, DiemThanhTuuPK + 1);
	me.Msg("<color=yellow>Nhận được [<color=green>1 Điểm Thành Tựu PK<color>] thành công!<color>");
	return 1;
end
