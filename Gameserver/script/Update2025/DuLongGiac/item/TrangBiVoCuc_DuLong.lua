
--Du Long: Trang bị Vô Cực
local tbItem = Item:GetClass("DuLongGiac_Box1_1");

tbItem.Item_Ruong = {18,1,4039,1}; --Du Long: Trang bị Vô Cực
function tbItem:OnUse()

    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(263);

	Task:DelItem(me, self.Item_Ruong, 1);
end


--Rương Du Long: Trang bị Vô Cực-Sơ
local tbItem = Item:GetClass("DuLongGiac_Box1_1_1");

tbItem.Item_Ruong = {18,1,4040,1}; --Du Long: Trang bị Vô Cực
tbItem.Item_Nam = 264; --Rương Du Long: Trang bị Vô Cực-Sơ-Nam
tbItem.Item_Nu = 265; --Rương Du Long: Trang bị Vô Cực-Sơ-Nữ
function tbItem:OnUse()

if (me.nSex == 0) then --Nam
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nam);
end 

if (me.nSex == 1) then --Nữ 
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nu);
end 

Task:DelItem(me, self.Item_Ruong, 1);
end

--Rương Du Long: Trang bị Vô Cực-Trung
local tbItem = Item:GetClass("DuLongGiac_Box1_1_2");

tbItem.Item_Ruong = {18,1,4040,2}; --Du Long: Trang bị Vô Cực
tbItem.Item_Nam = 266; --Rương Du Long: Trang bị Vô Cực-Sơ-Nam
tbItem.Item_Nu = 267; --Rương Du Long: Trang bị Vô Cực-Sơ-Nữ
function tbItem:OnUse()

if (me.nSex == 0) then --Nam
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nam);
end 

if (me.nSex == 1) then --Nữ 
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nu);
end 

Task:DelItem(me, self.Item_Ruong, 1);
end

--Rương Du Long: Trang bị Vô Cực-Đại Viễn
local tbItem = Item:GetClass("DuLongGiac_Box1_1_3");

tbItem.Item_Ruong = {18,1,4040,3}; --Du Long: Trang bị Vô Cực
tbItem.Item_Nam = 268; --Rương Du Long: Trang bị Vô Cực-Sơ-Nam
tbItem.Item_Nu = 269; --Rương Du Long: Trang bị Vô Cực-Sơ-Nữ
function tbItem:OnUse()

if (me.nSex == 0) then --Nam
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nam);
end 

if (me.nSex == 1) then --Nữ 
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(self.Item_Nu);
end 

Task:DelItem(me, self.Item_Ruong, 1);
end

