--Túi Trang bị Đồng Hành Ngẫu nhiên Lv1-Lv15--
local tbItem = Item:GetClass("Event_TrungThu_Box9");
tbItem.Item_Ruong = {18,1,3927,9};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(197);
end
