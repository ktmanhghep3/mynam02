local tbItem = Item:GetClass("LeBao_MuaHe2024");
tbItem.Item_Ruong = {18,1,3402,1};

function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(158);
end
