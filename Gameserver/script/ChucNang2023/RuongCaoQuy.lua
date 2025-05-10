--Rương Cao Quý--
local tbItem = Item:GetClass("RuongCaoQuy");

tbItem.TaskGroup = 4005;
tbItem.TaskID = 1;

function tbItem:OnUse()
local SoRuong = me.GetTask(self.TaskGroup, self.TaskID);
me.SetTask(self.TaskGroup, self.TaskID,SoRuong + 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(128);
return 1;				
end
