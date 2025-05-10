--1-Túi Ấn Ngẫu nhiên--
local tbItem = Item:GetClass("Box_Event_1");
tbItem.Item_Ruong = {18,1,3969,1};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(193);
end


--2-Túi Trang bị Đồng Hành Ngẫu nhiên Lv1-Lv15--
local tbItem = Item:GetClass("Box_Event_2");
tbItem.Item_Ruong = {18,1,3969,2};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(197);
end


--3-Túi Bí Kiếp Môn Phái Ngẫu nhiên Lv1-Lv20--
local tbItem = Item:GetClass("Box_Event_3");
tbItem.Item_Ruong = {18,1,3969,3};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(189);
end



--4-Túi Tuyệt Kỹ Trấn Phái Ngẫu nhiên Lv2-Lv30--
local tbItem = Item:GetClass("Box_Event_4");
tbItem.Item_Ruong = {18,1,3969,4};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(190);
end


--5-Túi Trang bị Vô Cực Ngẫu nhiên--
local tbItem = Item:GetClass("Box_Event_5");
tbItem.Item_Ruong = {18,1,3969,5};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(196);
end


--6-Túi Phi Phong mới Ngẫu nhiên--
local tbItem = Item:GetClass("Box_Event_6");
tbItem.Item_Ruong = {18,1,3969,6};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(195);
end


--7-Túi Huy Chương Ngẫu nhiên Lv5-Lv60--
local tbItem = Item:GetClass("Box_Event_7");
tbItem.Item_Ruong = {18,1,3969,7};


function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(191);
end


--8-Túi Thiên Gia Ngẫu nhiên Lv7-Lv30--
local tbItem = Item:GetClass("Box_Event_8");
tbItem.Item_Ruong = {18,1,3969,8};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(192);
end


--9-Túi Ấn Ngẫu nhiên--
local tbItem = Item:GetClass("Box_Event_9");
tbItem.Item_Ruong = {18,1,3969,9};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(194);
end


--10-Túi Trung Châu Ngẫu nhiên--
local tbItem = Item:GetClass("Box_Event_10");
tbItem.Item_Ruong = {18,1,3969,10};

function tbItem:OnUse()
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(198);
end
