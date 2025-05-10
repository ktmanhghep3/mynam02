local tbItem = Item:GetClass("Event_Noel_1");

tbItem.Item_Ruong = {18,1,3962,1};
tbItem.TaskGroup_DiemBachKim = 4510;
tbItem.TaskID_DiemBachKim = 1;


function tbItem:OnUse()
local DiemGiangSinh = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
--Phần thưởng cố định--
me.AddItem(18,1,3968,1); --Linh Thạch
me.AddRepute(14,1,5); --Điểm Danh Vọng Sát Thần PK
--me.SetTask(self.TaskGroup_DiemBachKim, self.TaskID_DiemBachKim, DiemGiangSinh + 1);
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(208);
end
