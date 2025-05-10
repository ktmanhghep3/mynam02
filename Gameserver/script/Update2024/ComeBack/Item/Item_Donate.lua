--Túi Danh vọng Sát Thần-2000 điểm
local tbItem = Item:GetClass("ComBack_Donate_01");
tbItem.Item_Ruong = {18,1,3609,1};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_9 = 9;						--Túi Danh vọng Sát Thần-2000 điểm--Tối đa dùng 20 túi
tbItem.TaskID_GioiHan = 20;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiDanhVongSatThan2000_20 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_9);--Túi Danh vọng Sát Thần-2000 điểm--Tối đa dùng 20 túi
	if TuiDanhVongSatThan2000_20 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiDanhVongSatThan2000_20.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end

	local Diem_DanhVong = 2000;
	me.AddRepute(14,1,Diem_DanhVong)
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_9, TuiDanhVongSatThan2000_20 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>"..Diem_DanhVong.."<color>] Điểm Danh Vọng Sát Thần PK thành công!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Lệnh Bài Sát Thần-200 cái
local tbItem = Item:GetClass("ComBack_Donate_02");
tbItem.Item_Ruong = {18,1,3609,2};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_10 = 10;						--Túi Lệnh Bài Sát Thần-200 cái--Tối đa dùng 50 túi
tbItem.TaskID_GioiHan = 50;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiLenhBaiSatThan200_50 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_10);--Túi Lệnh Bài Sát Thần-200 cái--Tối đa dùng 50 túi
	if TuiLenhBaiSatThan200_50 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiLenhBaiSatThan200_50.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!!!<color>"});
		return;
	end


	me.AddStackItem(18,1,3001,1,{bForceBind=1,},200);--Lệnh Bài Sát Thần PK
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_10, TuiLenhBaiSatThan200_50 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>200<color>] Lệnh Bài Sát Thần PK!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end

--Túi Lệnh Bài Sát Thần-1000 cái
local tbItem = Item:GetClass("ComBack_Donate_03");
tbItem.Item_Ruong = {18,1,3609,3};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_11 = 11;						--Túi Bí Ẩn Sát Thần-1000 Cái--Tối đa dùng 10 túi
tbItem.TaskID_GioiHan = 10;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiAnSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_11);--Túi Bí Ẩn Sát Thần-1000 Cái--Tối đa dùng 10 túi
	if TuiBiAnSatThan1000_10 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiAnSatThan1000_10.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3006,1,{bForceBind=1,},1000);--Bí Ẩn Sát Thần
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_11, TuiBiAnSatThan1000_10 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>1000<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end

--Túi Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn
local tbItem = Item:GetClass("ComBack_Donate_04");
tbItem.Item_Ruong = {18,1,3609,4};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_12 = 12;						--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiTuyetKyTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_12);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn--Tối đa 2
	if TuiTuyetKyTranPhai_lv18_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiTuyetKyTranPhai_lv18_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(126);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_12, TuiTuyetKyTranPhai_lv18_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn
local tbItem = Item:GetClass("ComBack_Donate_05");
tbItem.Item_Ruong = {18,1,3609,5};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_13 = 13;						--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiTuyetKyTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_13);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn--Tối đa 2
	if TuiTuyetKyTranPhai_lv19_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiTuyetKyTranPhai_lv19_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(127);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_13, TuiTuyetKyTranPhai_lv19_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn
local tbItem = Item:GetClass("ComBack_Donate_06");
tbItem.Item_Ruong = {18,1,3609,6};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_14 = 14;						--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiTuyetKyTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_14);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn--Tối đa 2
	if TuiTuyetKyTranPhai_lv20_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiTuyetKyTranPhai_lv20_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(128);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_14, TuiTuyetKyTranPhai_lv20_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
local tbItem = Item:GetClass("ComBack_Donate_07");
tbItem.Item_Ruong = {18,1,3609,7};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_15 = 15;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiKiepTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_15);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
	if TuiBiKiepTranPhai_lv18_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiKiepTranPhai_lv18_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(146);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_15, TuiBiKiepTranPhai_lv18_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
local tbItem = Item:GetClass("ComBack_Donate_08");
tbItem.Item_Ruong = {18,1,3609,8};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_16 = 16;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiKiepTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_16);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
	if TuiBiKiepTranPhai_lv19_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiKiepTranPhai_lv19_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(147);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_16, TuiBiKiepTranPhai_lv19_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Túi Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
local tbItem = Item:GetClass("ComBack_Donate_09");
tbItem.Item_Ruong = {18,1,3609,9};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_17 = 17;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
tbItem.TaskID_GioiHan = 2;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiBiKiepTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_17);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
	if TuiBiKiepTranPhai_lv20_2 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiBiKiepTranPhai_lv20_2.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(148);

	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_17, TuiBiKiepTranPhai_lv20_2 + 1);
	--me.Msg("<color=yellow>Bạn nhận được [<color=cyan>500<color>] Bí Ẩn Sát Thần!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end

--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng
local tbItem = Item:GetClass("ComBack_Donate_10");
tbItem.Item_Ruong = {18,1,3609,10};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_18 = 18;						--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa 1
tbItem.TaskID_GioiHan = 1;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiPet9_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_18);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa 1
	if TuiPet9_1 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiPet9_1.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3036,3,{bForceBind=1,},1);--Đồng hành 9 Kỹ năng
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_18, TuiPet9_1 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>1<color>] Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end


--Tiểu Sư Muội - Đồng hành 10 Kỹ năng
local tbItem = Item:GetClass("ComBack_Donate_11");
tbItem.Item_Ruong = {18,1,3609,11};

tbItem.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbItem.TaskID_Use_19 = 19;						--Tiểu Sư Muội - Đồng hành 10 Kỹ năng--Tối đa 1
tbItem.TaskID_GioiHan = 1;						--Giới Hạn cả Sự kiện

function tbItem:OnUse()
local TuiPet10_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_19);--Thanh Sắc Kiếm - Đồng hành 10 Kỹ năng--Tối đa 1
	if TuiPet10_1 >= self.TaskID_GioiHan then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Ngươi đã đạt giới hạn Sự kiện: <color=cyan>"..TuiPet10_1.."<color>/"..self.TaskID_GioiHan.." không thể dùng nữa!<color>"});
		return;
	end


	me.AddStackItem(18,1,3036,4,{bForceBind=1,},1);--Đồng hành 10 Kỹ năng
	me.SetTask(self.TaskGroup_SuDungQuaComBack, self.TaskID_Use_19, TuiPet10_1 + 1);
	me.Msg("<color=yellow>Bạn nhận được [<color=cyan>1<color>] Tiểu Sư Muội - Đồng hành 10 Kỹ năng!<color>");
	Task:DelItem(me, self.Item_Ruong, 1);
end
