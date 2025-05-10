--Mảnh Bí Bảo (Chưa Giám Định)
local tbItem = Item:GetClass("GHChuaGiamDinh_1");
tbItem.Item_Ruong = {18,1,3941,1};
tbItem.Diem_Tinh_Hoat_YC = 1000;

function tbItem:OnUse()
	if me.dwCurGTP < self.Diem_Tinh_Hoat_YC or me.dwCurMKP < self.Diem_Tinh_Hoat_YC then
		Dialog:Say(string.format("<color=yellow>Tinh hoạt lực của bạn không đủ <color=green>%s<color> điểm, không thể giám định<color>.", self.Diem_Tinh_Hoat_YC), {"Ta biết rồi!"});
		return;
	end

me.ChangeCurMakePoint(-1*self.Diem_Tinh_Hoat_YC);--Tinh Lực
me.ChangeCurGatherPoint(-1*self.Diem_Tinh_Hoat_YC);--Hoạt Lực

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(205);
end


--Mảnh Cường Nhân (Chưa Giám Định)
local tbItem = Item:GetClass("GHChuaGiamDinh_2");
tbItem.Item_Ruong = {18,1,3941,2};
tbItem.Diem_Tinh_Hoat_YC = 1000;

function tbItem:OnUse()
	if me.dwCurGTP < self.Diem_Tinh_Hoat_YC or me.dwCurMKP < self.Diem_Tinh_Hoat_YC then
		Dialog:Say(string.format("<color=yellow>Tinh hoạt lực của bạn không đủ <color=green>%s<color> điểm, không thể giám định<color>.", self.Diem_Tinh_Hoat_YC), {"Ta biết rồi!"});
		return;
	end

me.ChangeCurMakePoint(-1*self.Diem_Tinh_Hoat_YC);--Tinh Lực
me.ChangeCurGatherPoint(-1*self.Diem_Tinh_Hoat_YC);--Hoạt Lực

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(206);
end


--Mảnh Hiệp Khách (Chưa Giám Định)
local tbItem = Item:GetClass("GHChuaGiamDinh_3");
tbItem.Item_Ruong = {18,1,3941,3};
tbItem.Diem_Tinh_Hoat_YC = 1000;

function tbItem:OnUse()
	if me.dwCurGTP < self.Diem_Tinh_Hoat_YC or me.dwCurMKP < self.Diem_Tinh_Hoat_YC then
		Dialog:Say(string.format("<color=yellow>Tinh hoạt lực của bạn không đủ <color=green>%s<color> điểm, không thể giám định<color>.", self.Diem_Tinh_Hoat_YC), {"Ta biết rồi!"});
		return;
	end

me.ChangeCurMakePoint(-1*self.Diem_Tinh_Hoat_YC);--Tinh Lực
me.ChangeCurGatherPoint(-1*self.Diem_Tinh_Hoat_YC);--Hoạt Lực

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(207);
end
