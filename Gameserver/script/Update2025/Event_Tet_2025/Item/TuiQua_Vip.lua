----------------------------------
--Túi Tân Niên VIP: Tuyệt Kỹ Trấn Phái   
local tbItem = Item:GetClass("BoxSK_Vip_01");
tbItem.IDBox_Delete = {18,1,4016,1};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 240;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Tân Niên VIP: Bí Kiếp Môn Phái  
local tbItem = Item:GetClass("BoxSK_Vip_02");
tbItem.IDBox_Delete = {18,1,4016,2};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 241;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Tân Niên VIP: Mặt Nạ  
local tbItem = Item:GetClass("BoxSK_Vip_03");
tbItem.IDBox_Delete = {18,1,4016,3};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 242;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Tân Niên VIP: Ấn  
local tbItem = Item:GetClass("BoxSK_Vip_04");
tbItem.IDBox_Delete = {18,1,4016,4};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 243;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Tân Niên VIP: Phi Phong 
local tbItem = Item:GetClass("BoxSK_Vip_05");
tbItem.IDBox_Delete = {18,1,4016,5};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 244;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Tân Niên VIP: Ngoại Trang 
local tbItem = Item:GetClass("BoxSK_Vip_06");
tbItem.IDBox_Delete = {18,1,4016,6};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 245;
tbItem.Id_Random2 = 246;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random2);
end
----------------------------------
--Túi Tân Niên VIP: Ngựa
local tbItem = Item:GetClass("BoxSK_Vip_07");
tbItem.IDBox_Delete = {18,1,4016,7};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 247;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Tân Niên: Trang Bị 
local tbItem = Item:GetClass("BoxSK_Vip_08");
tbItem.IDBox_Delete = {18,1,4016,8};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 154;
tbItem.Id_Random2 = 155;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random2);
end

----------------------------------
--Túi Tân Niên VIP: Vũ Khí Thương Phong
local tbItem = Item:GetClass("BoxSK_Vip_09");
tbItem.IDBox_Delete = {18,1,4016,9};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 248;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Tân Niên VIP: Trang Bị Đồng Hành
local tbItem = Item:GetClass("BoxSK_Vip_10");
tbItem.IDBox_Delete = {18,1,4016,10};
tbItem.Times_Delay = 1;
tbItem.Id_Random1 = 249;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end
----------------------------------
--Túi Quà: Phát Tài Phát Lộc
local tbItem = Item:GetClass("BoxMenu_05");
tbItem.IDBox_Delete = {18,1,4018,6};
tbItem.Id_Random1 = 257;
tbItem.Id_Random2 = 251;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random2);
end


----------------------------------
--Thẻ Hiệp Nghĩa
local tbItem = Item:GetClass("Card_HiepNghiaTanNien");
tbItem.IDBox_Delete = {18,1,4030,1};
tbItem.TG_DiemHiepNghiaTanNien = 4520; --Điểm Hiệp Nghĩa Tân Niên
tbItem.ID_DiemHiepNghiaTanNien = 1;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local Diem_HiepNghiaTanNien = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);
me.SetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien,Diem_HiepNghiaTanNien + 1);
Dialog:SendBlackBoardMsg(me, string.format("<bclr=0,0,200><color=white>Điểm Hiệp Nghĩa Tân Niên: "..(Diem_HiepNghiaTanNien+1).."<color>"));
end


----------------------------------
--Rương Thủy Hà
local tbItem = Item:GetClass("Box_ThuyHa");
tbItem.IDBox_Delete = {18,1,4031,1};

tbItem.Id_Random1 = 259;
tbItem.Id_Random2 = 260;
tbItem.Id_Random3 = 261;

function tbItem:OnUse()
--Cố định
me.AddStackItem(18,1,4020,1,{bForceBind=1,},1); --Khí Linh


	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(self.Id_Random1);
	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(self.Id_Random2);
	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(self.Id_Random3);


Task:DelItem(me, self.IDBox_Delete, 1);
end
