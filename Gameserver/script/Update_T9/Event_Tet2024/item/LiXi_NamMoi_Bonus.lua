local tbItem = Item:GetClass("LiXi_NamMoi_Bonus");
tbItem.Item_Ruong = {18,1,3040,1};
tbItem.PhanThuong1_DanhVongSTPK = 240;

function tbItem:OnUse()
me.AddRepute(14,1,self.PhanThuong1_DanhVongSTPK); --Điểm Danh Vọng Sát Thần PK

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(150);
end
