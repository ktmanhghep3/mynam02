--Rương TĐLT--
local tbItem = Item:GetClass("Box_TDLT");

function tbItem:OnUse()

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(129);
return 1;				
end
