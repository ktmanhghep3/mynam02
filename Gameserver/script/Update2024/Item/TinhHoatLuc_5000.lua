local tbItem = Item:GetClass("TinhLuc_Box");
tbItem.Point = 15000;

function tbItem:OnUse()	

	me.ChangeCurMakePoint(self.Point);--Tinh Lực
	return 1;
end






local tbItem = Item:GetClass("HoatLuc_Box");
tbItem.Point = 15000;
function tbItem:OnUse()	


	me.ChangeCurGatherPoint(self.Point);--Hoạt Lực
	return 1;
end
