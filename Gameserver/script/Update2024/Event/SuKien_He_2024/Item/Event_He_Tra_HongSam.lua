local tbItem = Item:GetClass("Event_He_Tra_HongSam");

tbItem.Item_Ruong = {18,1,3401,3};
tbItem.PhanThuong1_DanhVongSTPK = 10;

tbItem.TaskGroup_Moc_TraHongSam = 4203;		--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm
tbItem.TaskID_Moc_TraHongSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm


function tbItem:OnUse()
local Moc_TraHongSam = me.GetTask(self.TaskGroup_Moc_TraHongSam,self.TaskID_Moc_TraHongSam);



me.SetTask(self.TaskGroup_Moc_TraHongSam, self.TaskID_Moc_TraHongSam, Moc_TraHongSam + 1);
me.AddRepute(14,1,self.PhanThuong1_DanhVongSTPK); --Điểm Danh Vọng Sát Thần PK

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(159);
end
