----------------------------------
--Túi Tân Niên: Tuyệt Kỹ Trấn Phái 
local tbItem = Item:GetClass("BoxSK_Thuong_01");
tbItem.IDBox_Delete = {18,1,4015,1};
tbItem.Times_Delay = 3;
tbItem.Id_Random = 231;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random);
end

----------------------------------
--Túi Tân Niên: Bí Kiếp Môn Phái
local tbItem = Item:GetClass("BoxSK_Thuong_02");
tbItem.IDBox_Delete = {18,1,4015,2};
tbItem.Times_Delay = 2;
tbItem.Id_Random = 232;


function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random);
end

----------------------------------
--Túi Tân Niên: Mặt Nạ 
local tbItem = Item:GetClass("BoxSK_Thuong_03");
tbItem.IDBox_Delete = {18,1,4015,3};
tbItem.Times_Delay = 2;
tbItem.Id_Random = 233;


function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random);
end

----------------------------------
--Túi Tân Niên: Ấn 
local tbItem = Item:GetClass("BoxSK_Thuong_04");
tbItem.IDBox_Delete = {18,1,4015,4};
tbItem.Times_Delay = 2;
tbItem.Id_Random = 234;


function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random);
end

----------------------------------
--Túi Tân Niên: Phi Phong 
local tbItem = Item:GetClass("BoxSK_Thuong_05");
tbItem.IDBox_Delete = {18,1,4015,5};
tbItem.Times_Delay = 2;
tbItem.Id_Random = 235;


function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random);
end

----------------------------------
--Túi Tân Niên: Ngoại Trang  
local tbItem = Item:GetClass("BoxSK_Thuong_06");
tbItem.IDBox_Delete = {18,1,4015,6};
tbItem.Times_Delay = 2;
tbItem.Id_Random1 = 236;
tbItem.Id_Random2 = 237;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random2);
end

----------------------------------
--Túi Tân Niên: Ngựa  
local tbItem = Item:GetClass("BoxSK_Thuong_07");
tbItem.IDBox_Delete = {18,1,4015,7};
tbItem.Times_Delay = 2;
tbItem.Id_Random1 = 238;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Tân Niên: Trang Bị 
local tbItem = Item:GetClass("BoxSK_Thuong_08");
tbItem.IDBox_Delete = {18,1,4015,8};
tbItem.Times_Delay = 2;
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
--Túi Tân Niên: Vũ Khí Thương Phong  
local tbItem = Item:GetClass("BoxSK_Thuong_09");
tbItem.IDBox_Delete = {18,1,4015,9};
tbItem.Times_Delay = 2;
tbItem.Id_Random1 = 239;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Tân Niên: Trang Bị Đồng Hành  
local tbItem = Item:GetClass("BoxSK_Thuong_10");
tbItem.IDBox_Delete = {18,1,4015,10};
tbItem.Times_Delay = 2;
tbItem.Id_Random1 = 197;
function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Quà: Lì Xì Thần Tài 
local tbItem = Item:GetClass("BoxMenu_01");
tbItem.IDBox_Delete = {18,1,4018,1};
tbItem.Id_Random1 = 252;

function tbItem:OnUse()
--Cố định
me.AddStackItem(18,1,4018,5,{bForceBind=1,},1);		--Cá Chép Tân Niên
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Quà: Bánh Chưng Tất Niên
local tbItem = Item:GetClass("BoxMenu_02");
tbItem.IDBox_Delete = {18,1,4018,2};
tbItem.Id_Random1 = 253;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Quà: Tân Niên Lộc Phát
local tbItem = Item:GetClass("BoxMenu_04");
tbItem.IDBox_Delete = {18,1,4018,4};
tbItem.Id_Random1 = 254;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

----------------------------------
--Túi Quà: Lì Xì Táo Quân
local tbItem = Item:GetClass("BoxMenu_03");
tbItem.IDBox_Delete = {18,1,4018,3};
tbItem.Id_Random1 = 255;

function tbItem:OnUse()
Task:DelItem(me, self.IDBox_Delete, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(self.Id_Random1);
end

