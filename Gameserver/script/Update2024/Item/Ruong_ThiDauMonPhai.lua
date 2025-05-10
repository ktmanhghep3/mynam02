local tbItem = Item:GetClass("tpmp");
tbItem.Item_Ruong = {18,1,78,2};

function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(1);
end
