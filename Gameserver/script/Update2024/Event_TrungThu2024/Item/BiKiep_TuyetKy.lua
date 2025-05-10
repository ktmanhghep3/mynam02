--Túi Bí Kiếp Môn Phái Ngẫu nhiên Lv1-Lv20--
local tbItem = Item:GetClass("Event_TrungThu_Box1");
tbItem.Item_Ruong = {18,1,3927,1};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(189);
end



--Túi Tuyệt Kỹ Trấn Phái Ngẫu nhiên Lv2-Lv30--
local tbItem = Item:GetClass("Event_TrungThu_Box2");
tbItem.Item_Ruong = {18,1,3927,2};

function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(190);
end
