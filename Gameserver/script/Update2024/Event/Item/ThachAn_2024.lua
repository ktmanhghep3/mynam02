local tbItem = Item:GetClass("ThachAn_2024");
tbItem.Item_Ruong = {18,1,3042,1};
tbItem.TaskGroup_ThachAnHK = 4112;	--Task Điếm số lần mở Thạch Ấn Hoàng Kim
tbItem.TaskID_ThachAnHK = 1;

function tbItem:OnUse()
local SoLan_ThachAnHK = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_ThachAnHK);
me.SetTask(self.TaskGroup_ThachAnHK, self.TaskID_ThachAnHK, SoLan_ThachAnHK + 1);

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(151);
end
