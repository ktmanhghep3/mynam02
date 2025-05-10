local tbItem = Item:GetClass("LongDen_HoangKim");

tbItem.Item_Ruong = {18,1,3926,2};

tbItem.TaskGroup_Moc_LongDenHoangKim = 4232;		--Mốc Lồng Đèn Hoàng Kim
tbItem.TaskID_Moc_LongDenHoangKim = 1;				--Mốc Lồng Đèn Hoàng Kim
tbItem.PhanThuong1_DanhVongSTPK = 5;

function tbItem:OnUse()
local Moc_LongDenHoangKim = me.GetTask(self.TaskGroup_Moc_LongDenHoangKim,self.TaskID_Moc_LongDenHoangKim);

--Phần thưởng cố định--
me.AddItem(18,1,3929,1); --Tiền Sự Kiện
me.SetTask(self.TaskGroup_Moc_LongDenHoangKim, self.TaskID_Moc_LongDenHoangKim, Moc_LongDenHoangKim + 1);
me.AddRepute(14,1,self.PhanThuong1_DanhVongSTPK); --Điểm Danh Vọng Sát Thần PK
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(200);
end
