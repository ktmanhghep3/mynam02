local tbItem = Item:GetClass("LeBaoDongHanh_2024");
tbItem.Item_Ruong = {18,1,3043,1};
tbItem.TaskGroup_LeBaoDH = 4117;	--Task Điếm số lần mở Lễ Bao ĐH
tbItem.TaskID_LeBaoDH = 1;

function tbItem:OnUse()
local SoLan_LeBaoDH = me.GetTask(self.TaskGroup_LeBaoDH,self.TaskID_LeBaoDH);
me.SetTask(self.TaskGroup_LeBaoDH, self.TaskID_LeBaoDH, SoLan_LeBaoDH + 1);

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(152);
end
