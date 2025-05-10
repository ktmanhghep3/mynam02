--Túi Danh vọng Sát Thần-1000 điểm
local tbItem = Item:GetClass("ComBack_Free_01");
tbItem.Item_Ruong = {18,1,3608,1};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_2 = 2;						--Túi Danh vọng Sát Thần-1000 điểm--Tối đa dùng 10 túi
tbItem.TaskID_GioiHan = 10;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiDanhVongSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_2);--Túi Danh vọng Sát Thần-1000 điểm--Tối đa dùng 10 túi
	if TuiDanhVongSatThan1000_10 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiDanhVongSatThan1000_10.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end

	local Diem_DanhVong = 1000;
	me.AddRepute(14,1,Diem_DanhVong)
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_2, TuiDanhVongSatThan1000_10 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..Diem_DanhVong.."<color>] Điểm Danh Vọng Sát Thần PK thành công!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end

--Túi Lệnh Bài Sát Thần-100 cái
local tbItem = Item:GetClass("ComBack_Free_02");
tbItem.Item_Ruong = {18,1,3608,2};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_3 = 3;						--Túi Lệnh Bài Sát Thần-100 cái--Tối đa dùng 25 túi
tbItem.TaskID_GioiHan = 25;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiLenhBaiSatThan100_25 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_3);--Túi Lệnh Bài Sát Thần-100 cái--Tối đa dùng 25 túi
	if TuiLenhBaiSatThan100_25 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiLenhBaiSatThan100_25.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!!!<color>"});
		return;
	end


	me.AddStackItem(18,1,3001,1,{bForceBind=1,},100);--Lệnh Bài Sát Thần PK
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_3, TuiLenhBaiSatThan100_25 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>100<color>] Lệnh Bài Sát Thần PK!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Lệnh Bài Sát Thần-100 cái
local tbItem = Item:GetClass("ComBack_Free_03");
tbItem.Item_Ruong = {18,1,3608,3};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_4 = 4;						--Túi Bí Ẩn Sát Thần-500 Cái--Tối đa dùng 10 túi
tbItem.TaskID_GioiHan = 10;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiAnSatThan500_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_4);--Túi Bí Ẩn Sát Thần-500 Cái--Tối đa dùng 10 túi
	if TuiBiAnSatThan500_10 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiAnSatThan500_10.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3006,1,{bForceBind=1,},500);--Bí Ẩn Sát Thần
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_4, TuiBiAnSatThan500_10 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Tuyệt Kỹ Trấn Phái Cấp 15
local tbItem = Item:GetClass("ComBack_Free_04");
tbItem.Item_Ruong = {18,1,3608,4};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_5 = 5;						--Túi Tuyệt Kỹ Trấn Phái Cấp 15--Tối đa dùng 2 túi
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiTuyetKyTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_5);--Túi Tuyệt Kỹ Trấn Phái Cấp 15--Tối đa dùng 2 túi
	if TuiTuyetKyTranPhai_lv15_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiTuyetKyTranPhai_lv15_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(123);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_5, TuiTuyetKyTranPhai_lv15_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Bí Kiếp Môn Phái Lv15
local tbItem = Item:GetClass("ComBack_Free_05");
tbItem.Item_Ruong = {18,1,3608,5};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_6 = 6;						--Túi Bí Kiếp Môn Phái Lv15--Tối đa dùng 2 túi
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiKiepTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_6);--Túi Bí Kiếp Môn Phái Lv15--Tối đa dùng 2 túi
	if TuiBiKiepTranPhai_lv15_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiKiepTranPhai_lv15_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(143);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_6, TuiBiKiepTranPhai_lv15_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end

--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng
local tbItem = Item:GetClass("ComBack_Free_06");
tbItem.Item_Ruong = {18,1,3608,6};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_7 = 7;						--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng--Tối đa dùng 1 túi
tbItem.TaskID_GioiHan = 1;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiPet8free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_7);--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng--Tối đa dùng 1 túi
	if TuiPet8free_1 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiPet8free_1.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3036,2,{bForceBind=1,},1);--Bí Ẩn Sát Thần
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_7, TuiPet8free_1 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>1<color>] Tử Sắc Kiếm - Đồng hành 8 Kỹ năng!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng
local tbItem = Item:GetClass("ComBack_Free_07");
tbItem.Item_Ruong = {18,1,3608,7};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_8 = 8;						--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
tbItem.TaskID_GioiHan = 1;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiPet9free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_8);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi
	if TuiPet9free_1 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiPet9free_1.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3036,3,{bForceBind=1,},1);--Bí Ẩn Sát Thần
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_8, TuiPet9free_1 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>1<color>] Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end
