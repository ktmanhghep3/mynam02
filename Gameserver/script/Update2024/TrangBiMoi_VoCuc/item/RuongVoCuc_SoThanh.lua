local tbItem = Item:GetClass("RuongVoCuc_SoThanh");
tbItem.Item_Ruong = {18,1,3100,1};

tbItem.Khoa_VoCuc = {18,1,3100,2};
tbItem.TyLe_Tru_Khoa_VoCuc = 1;

tbItem.HiepNghiaTuu = {18,1,3006,3};
tbItem.TyLe_Tru_HiepNghiaTuu = 50;


tbItem.TaskGroup_MoRuong_VoCuc = 4120;	--Task Điếm số lần mở Rương Vô Cực
tbItem.TaskID_MoRuong_VoCuc = 1;

function tbItem:OnUse()
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.Khoa_VoCuc))
local nHiepNghiaTuu = me.GetItemCountInBags(unpack(self.HiepNghiaTuu))

if nSo_NgoiSao < self.TyLe_Tru_Khoa_VoCuc then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Khoá Vô Cực<color> trong túi không đủ <color=cyan>"..self.TyLe_Tru_Khoa_VoCuc.." Cái.<color> không thể mở Rương!<color>"});
return
end

if nHiepNghiaTuu < self.TyLe_Tru_HiepNghiaTuu then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Hiệp Nghĩa Tửu<color> trong túi không đủ <color=cyan>"..self.TyLe_Tru_HiepNghiaTuu.." Bình.<color> không thể mở Rương!<color>"});
return
end



local SoLan_MoRuong_VoCuc = me.GetTask(self.TaskGroup_MoRuong_VoCuc,self.TaskID_MoRuong_VoCuc);
me.SetTask(self.TaskGroup_MoRuong_VoCuc, self.TaskID_MoRuong_VoCuc, SoLan_MoRuong_VoCuc + 1);

if (me.nSex == 0) then --Nam
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(154);
end 

if (me.nSex == 1) then --Nữ 
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(155);
end
 
Task:DelItem(me, self.Item_Ruong, 1);
Task:DelItem(me, self.Khoa_VoCuc, self.TyLe_Tru_Khoa_VoCuc);
Task:DelItem(me, self.HiepNghiaTuu, self.TyLe_Tru_HiepNghiaTuu);
end
