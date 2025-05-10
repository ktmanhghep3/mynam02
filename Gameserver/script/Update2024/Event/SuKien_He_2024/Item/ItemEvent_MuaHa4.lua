--Hộp Quà Mùa Hạ
local tbItem = Item:GetClass("Box_MuaHa");	
tbItem.Item_Ruong = {18,1,3600,1};

tbItem.TaskGroup_Moc_HopQuaMuaHa = 4210;		--Task Check Mốc Hộp Quà Mùa Hạ
tbItem.TaskID_Moc_HopQuaMuaHa = 1;				--Task Check Mốc Hộp Quà Mùa Hạ


function tbItem:OnUse()
local Moc_HopQuaMuaHa = me.GetTask(self.TaskGroup_Moc_HopQuaMuaHa,self.TaskID_Moc_HopQuaMuaHa);


me.AddStackItem(18,1,3600,2,{bForceBind=1,},1);--Hộp Quà Phi Phong
me.AddStackItem(18,1,3600,3,{bForceBind=1,},1);--Hộp Quà Môn Phái
me.AddStackItem(18,1,3600,4,{bForceBind=1,},1);--Hộp Quà Bất Ngờ
me.AddStackItem(18,1,3910,3,{bForceBind=1,},1);--Túi Quà Cuối Hạ

me.SetTask(self.TaskGroup_Moc_HopQuaMuaHa, self.TaskID_Moc_HopQuaMuaHa, Moc_HopQuaMuaHa + 1);
Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(171);
end


--Hộp Quà Phi Phong
local tbItem = Item:GetClass("Box_PhiPhong");	
tbItem.Item_Ruong = {18,1,3600,2};


function tbItem:OnUse()



Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(172);
end


--Hộp Quà Môn Phái
local tbItem = Item:GetClass("Box_MonPhai");	
tbItem.Item_Ruong = {18,1,3600,3};


function tbItem:OnUse()



Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(173);
end


--Hộp Quà Bất Ngờ
local tbItem = Item:GetClass("Box_BatNgo");	
tbItem.Item_Ruong = {18,1,3600,4};


function tbItem:OnUse()



Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(174);
end
