---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu1");
tbItem.Item_Ruong = {18,1,3934,1};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 1;			
tbItem.SoLuong_Tien = 100;
			
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu2");
tbItem.Item_Ruong = {18,1,3934,2};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 2;		
tbItem.SoLuong_Tien = 150;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu3");
tbItem.Item_Ruong = {18,1,3934,3};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 3;		
tbItem.SoLuong_Tien = 200;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu4");
tbItem.Item_Ruong = {18,1,3934,4};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 4;		
tbItem.SoLuong_Tien = 250;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu5");
tbItem.Item_Ruong = {18,1,3934,5};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 5;		
tbItem.SoLuong_Tien = 300;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu6");
tbItem.Item_Ruong = {18,1,3934,6};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 6;		
tbItem.SoLuong_Tien = 350;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu7");
tbItem.Item_Ruong = {18,1,3934,7};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 7;		
tbItem.SoLuong_Tien = 400;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu8");
tbItem.Item_Ruong = {18,1,3934,8};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 8;		
tbItem.SoLuong_Tien = 450;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu9");
tbItem.Item_Ruong = {18,1,3934,9};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 9;		
tbItem.SoLuong_Tien = 500;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu10");
tbItem.Item_Ruong = {18,1,3934,10};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 10;		
tbItem.SoLuong_Tien = 550;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu11");
tbItem.Item_Ruong = {18,1,3934,11};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 11;		
tbItem.SoLuong_Tien = 600;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu12");
tbItem.Item_Ruong = {18,1,3934,12};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 12;		
tbItem.SoLuong_Tien = 650;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu13");
tbItem.Item_Ruong = {18,1,3934,13};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 13;		
tbItem.SoLuong_Tien = 700;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu14");
tbItem.Item_Ruong = {18,1,3934,14};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 14;		
tbItem.SoLuong_Tien = 750;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu15");
tbItem.Item_Ruong = {18,1,3934,15};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 15;		
tbItem.SoLuong_Tien = 800;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


---------------------
local tbItem = Item:GetClass("Event_TrungThu_TienXu16");
tbItem.Item_Ruong = {18,1,3934,16};

tbItem.TaskGroup_Item = 4234;		--Task tính số lần nhận
tbItem.TaskID_Item = 16;		
tbItem.SoLuong_Tien = 1000;
				
tbItem.TaskID_GioiHan = 1;			--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local Item_TrungThu = me.GetTask(self.TaskGroup_Item,self.TaskID_Item);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if Item_TrungThu >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..Item_TrungThu.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3929,1,{bForceBind=1,},self.SoLuong_Tien);--Tiền Sự Kiện
	me.SetTask(self.TaskGroup_Item, self.TaskID_Item, Item_TrungThu + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..self.SoLuong_Tien.."<color>] Tiền Sự Kiện!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


