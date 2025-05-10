--Rương Vũ Khí Thương Phong--
local tbItem = Item:GetClass("Event_TrungThu_Box11");
tbItem.Item_Ruong = {18,1,3932,1};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(201);
end



--Rương Phi Phong Thương Phong--
local tbItem = Item:GetClass("Event_TrungThu_Box12");
tbItem.Item_Ruong = {18,1,3932,2};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(202);
end


--Rương Đồng Hành Thương Phong--
local tbItem = Item:GetClass("Event_TrungThu_Box14");
tbItem.Item_Ruong = {18,1,3932,3};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(203);
end




--Rương Trang Bị Vô Cực - Đại Viễn--
local tbItem = Item:GetClass("Event_TrungThu_Box17");
tbItem.Item_Ruong = {18,1,3935,1};


function tbItem:OnUse()

Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(204);
end
