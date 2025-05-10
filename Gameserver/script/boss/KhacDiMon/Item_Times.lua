local tbItem = Item:GetClass("Item_Times");

--Tăng 30 phút--
function tbItem:OnUse()
local nUseTime = me.GetTask(4090, 1);
me.SetTask(4090, 1, nUseTime-1800);

return 1;	
end
