local tbItem = Item:GetClass("Event_ThanhHuu");

tbItem.nLBST = 1;
function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddExp(500000);
	return 1;
end
--------
local tbItem = Item:GetClass("Event_TraQueHoa");

tbItem.nLBST = 1;
function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddExp(500000);
	return 1;
end
--------
local tbItem = Item:GetClass("Event_RuouThuan");

tbItem.nLBST = 2;
tbItem.nRuong = 1;
function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddStackItem(18,1,3000,1,{bForceBind=1,},self.nRuong);--Rương Tinh Thạch
	me.AddExp(500000);
	return 1;
end
--------
local tbItem = Item:GetClass("Event_HoaCuc");

tbItem.nLBST = 3;
tbItem.nRuong = 2;
function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddStackItem(18,1,3000,1,{bForceBind=1,},self.nRuong);--Rương Tinh Thạch
	me.AddExp(500000);
	return 1;
end
--------
local tbItem = Item:GetClass("Event_HoaDang");

tbItem.nLBST = 4;
tbItem.nRuong = 3;
function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddStackItem(18,1,3000,1,{bForceBind=1,},self.nRuong);--Rương Tinh Thạch
	me.AddExp(500000);
	return 1;
end
--------
local tbItem = Item:GetClass("Event_TrangTron");

tbItem.nLBST = 5;
tbItem.nRuong = 5;
tbItem.Task_EventTT = 4010;	--Task Group Tính số Event Trăng tròn đã dùng(mốc)
tbItem.ID_EventTT   = 1;		--Task Tính số Event Trăng tròn đã dùng(mốc) 

function tbItem:OnUse()	
	me.AddStackItem(18,1,3001,1,{bForceBind=1,},self.nLBST);--Lệnh Bài Sát Thần PK
	me.AddStackItem(18,1,3000,1,{bForceBind=1,},self.nRuong);--Rương Tinh Thạch
	local CheckMocTrang = me.GetTask(self.Task_EventTT,self.ID_EventTT);
	me.SetTask(self.Task_EventTT, self.ID_EventTT, CheckMocTrang + 1);
	me.AddExp(500000);
	return 1;
end
--------
