--Túi Huy Chương Ngẫu nhiên Lv5-Lv60--
local tbItem = Item:GetClass("Event_TrungThu_Box7");
tbItem.Item_Ruong = {18,1,3927,7};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(191);
end


--Túi Thiên Gia Ngẫu nhiên Lv7-Lv30--
local tbItem = Item:GetClass("Event_TrungThu_Box8");
tbItem.Item_Ruong = {18,1,3927,8};

function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(192);
end
