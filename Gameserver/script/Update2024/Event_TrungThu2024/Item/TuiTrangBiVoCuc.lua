--Túi Trang bị Vô Cực Ngẫu nhiên--
local tbItem = Item:GetClass("Event_TrungThu_Box6");
tbItem.Item_Ruong = {18,1,3927,6};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(196);
end
