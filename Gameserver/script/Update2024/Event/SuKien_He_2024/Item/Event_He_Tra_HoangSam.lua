local tbItem = Item:GetClass("Event_He_Tra_HoangSam");

tbItem.Item_Ruong = {18,1,3401,4};

tbItem.TaskGroup_Moc_TraHoangSam = 4204;		--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm
tbItem.TaskID_Moc_TraHoangSam = 1;				--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm


function tbItem:OnUse()
local Moc_TraHoangSam = me.GetTask(self.TaskGroup_Moc_TraHoangSam,self.TaskID_Moc_TraHoangSam);
local GioiHanCaoThu = 10;
local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
	if nLevel_DanhVongST < GioiHanCaoThu then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Cao Thủ Yêu cầu Cấp Danh vọng Sát Thần 9!<color>"));
	return 0;
	end


me.AddStackItem(18,1,3100,1,{bForceBind=1,},1);--Rương Vô Cực-Sơ Thành
me.SetTask(self.TaskGroup_Moc_TraHoangSam, self.TaskID_Moc_TraHoangSam, Moc_TraHoangSam + 1);

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(170);
end
