--Túi Trung Châu Ngẫu nhiên--
local tbItem = Item:GetClass("Event_TrungThu_Box10");
tbItem.Item_Ruong = {18,1,3927,10};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(198);
end
