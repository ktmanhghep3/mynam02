local tbItem = Item:GetClass("LiXi_NamMoi");
tbItem.Item_Ruong = {18,1,3039,1};
tbItem.PhanThuong1_DanhVongSTPK = 2;

function tbItem:OnUse()
me.AddRepute(14,1,self.PhanThuong1_DanhVongSTPK); --Điểm Danh Vọng Sát Thần PK

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(149);
end
