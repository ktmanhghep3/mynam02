--Túi Trang Bị Vô Cực - Đại Viễn
local tbItem = Item:GetClass("Box_TrangBiDaiVien");	
tbItem.Item_Ruong = {18,1,3912,1};



function tbItem:OnUse()
	local szMsg = "✩ Chọn Ngũ Hành Trang bị Đại Viễn cần mở\n✩ Giới tính của Trang bị sẽ quy định theo Giới tính hiện tại của Nhân vật:";
	local tbOpt = {
			
			{"<color=yellow>Trang bị hệ Kim<color>", self.He_Kim, self},
			{"<color=green>Trang bị hệ Mộc<color>", self.He_Moc, self},
			{"<color=cyan>Trang bị hệ Thủy<color>", self.He_Thuy, self},
			{"<color=red>Trang bị hệ Hỏa<color>", self.He_Hoa, self},
			{"<color=gray>Trang bị hệ Thổ<color>", self.He_Tho, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end

function tbItem:He_Kim()
if (me.nSex == 0) then --Nam
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(178);
end 

if (me.nSex == 1) then --Nữ 
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(179);
end 
end

function tbItem:He_Moc()
if (me.nSex == 0) then --Nam
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(180);
end 

if (me.nSex == 1) then --Nữ 
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(181);
end 
end

function tbItem:He_Thuy()
if (me.nSex == 0) then --Nam
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(182);
end 

if (me.nSex == 1) then --Nữ 
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(183);
end 
end

function tbItem:He_Hoa()
if (me.nSex == 0) then --Nam
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(184);
end 

if (me.nSex == 1) then --Nữ 
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(185);
end 
end

function tbItem:He_Tho()
if (me.nSex == 0) then --Nam
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(186);
end 

if (me.nSex == 1) then --Nữ 
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(187);
end 
end
