--Túi Phi Phong mới Ngẫu nhiên--
local tbItem = Item:GetClass("Event_TrungThu_Box5");
tbItem.Item_Ruong = {18,1,3927,5};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(195);
end
