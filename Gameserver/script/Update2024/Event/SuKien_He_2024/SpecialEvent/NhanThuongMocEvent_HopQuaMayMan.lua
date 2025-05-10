local tbNhanThuongMocEvent_HopQuaMayMan = {};
SpecialEvent.NhanThuongMocEvent_HopQuaMayMan = tbNhanThuongMocEvent_HopQuaMayMan;

tbNhanThuongMocEvent_HopQuaMayMan.TaskGroup_Moc_HopQuaMuaHa = 4210;			--Task Check Mốc Hộp Quà Mùa Hạ
tbNhanThuongMocEvent_HopQuaMayMan.TaskID_Moc_HopQuaMuaHa = 1;				--Task Check Mốc Hộp Quà Mùa Hạ


tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_1 = 10;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_2 = 15;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_3 = 35;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_4 = 50;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_5 = 70;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_6 = 100;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_7 = 120;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_8 = 135;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_9 = 165;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_10 = 185;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_11 = 200;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_12 = 235;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_13 = 270;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_14 = 320;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_15 = 350;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_16 = 400;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_17 = 500;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_18 = 600;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_19 = 700;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_20 = 800;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_21 = 900;
tbNhanThuongMocEvent_HopQuaMayMan.Moc_HopQua_22 = 1000;

tbNhanThuongMocEvent_HopQuaMayMan.TaskGroup_MocCheckNhan = 4211;	--Task Check Mốc Nhận thưởng Hộp Quà Mùa Hạ
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_1 = 1;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_2 = 2;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_3 = 3;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_4 = 4;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_5 = 5;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_6 = 6;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_7 = 7;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_8 = 8;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_9 = 9;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_10 = 10;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_11 = 11;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_12 = 12;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_13 = 13;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_14 = 14;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_15 = 15;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_16 = 16;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_17 = 17;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_18 = 18;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_19 = 19;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_20 = 20;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_21 = 21;
tbNhanThuongMocEvent_HopQuaMayMan.Task_Moc_22 = 22;



function tbNhanThuongMocEvent_HopQuaMayMan:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local So_HopQua_HienTai= me.GetTask(self.TaskGroup_Moc_HopQuaMuaHa,self.TaskID_Moc_HopQuaMuaHa); --Mốc Hộp Quà Mùa Hạ
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Hộp Quà Mùa Hạ hiện tại: <color=cyan>"..So_HopQua_HienTai.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if So_HopQua_HienTai >= self.Moc_HopQua_1 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_1.."<color>", self.MocSDHopQua_1, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_1.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_2 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_2.."<color>", self.MocSDHopQua_2, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_2.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_3 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_3.."<color>", self.MocSDHopQua_3, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_3.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_4 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_4.."<color>", self.MocSDHopQua_4, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_4.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_5 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_5.."<color>", self.MocSDHopQua_5, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_5.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_6 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_6.."<color>", self.MocSDHopQua_6, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_6.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_7 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_7.."<color>", self.MocSDHopQua_7, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_7.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_8 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_8.."<color>", self.MocSDHopQua_8, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_8.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_9 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_9.."<color>", self.MocSDHopQua_9, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_9.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_10 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_10.."<color>", self.MocSDHopQua_10, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_10.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_11 then
		table.insert(tbOpt, 11, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_11.."<color>", self.MocSDHopQua_11, self});
	else
		table.insert(tbOpt, 11, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_11.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_12 then
		table.insert(tbOpt, 12, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_12.."<color>", self.MocSDHopQua_12, self});
	else
		table.insert(tbOpt, 12, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_12.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_13 then
		table.insert(tbOpt, 13, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_13.."<color>", self.MocSDHopQua_13, self});
	else
		table.insert(tbOpt, 13, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_13.."<color>"});
	end

	if So_HopQua_HienTai >= self.Moc_HopQua_14 then
		table.insert(tbOpt, 14, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_14.."<color>", self.MocSDHopQua_14, self});
	else
		table.insert(tbOpt, 14, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_14.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_15 then
		table.insert(tbOpt, 15, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_15.."<color>", self.MocSDHopQua_15, self});
	else
		table.insert(tbOpt, 15, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_15.."<color>"});
	end
	
	table.insert(tbOpt, 16, {"<color=cyan>Sang Trang 2<color>", self.Trang_2, self});
	
	Dialog:Say(szMsg, tbOpt);
end

function tbNhanThuongMocEvent_HopQuaMayMan:Trang_2()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local So_HopQua_HienTai= me.GetTask(self.TaskGroup_Moc_HopQuaMuaHa,self.TaskID_Moc_HopQuaMuaHa); --Mốc Hộp Quà Mùa Hạ
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Hộp Quà Mùa Hạ hiện tại: <color=cyan>"..So_HopQua_HienTai.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	
	if So_HopQua_HienTai >= self.Moc_HopQua_16 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_16.."<color>", self.MocSDHopQua_16, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_16.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_17 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_17.."<color>", self.MocSDHopQua_17, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_17.."<color>"});
	end
	if So_HopQua_HienTai >= self.Moc_HopQua_18 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_18.."<color>", self.MocSDHopQua_18, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_18.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_19 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_19.."<color>", self.MocSDHopQua_19, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_19.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_20 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_20.."<color>", self.MocSDHopQua_20, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_20.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_21 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_21.."<color>", self.MocSDHopQua_21, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_21.."<color>"});
	end
	
	if So_HopQua_HienTai >= self.Moc_HopQua_22 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_22.."<color>", self.MocSDHopQua_22, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Hộp Quà Mùa Hạ "..self.Moc_HopQua_22.."<color>"});
	end

	
	Dialog:Say(szMsg, tbOpt);
end



----PHẦN THƯỞNG----

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_1()
local Number_Moc = self.Task_Moc_1;
local Number_ThongBao = self.Moc_HopQua_1;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,5,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn
me.AddStackItem(18,1,3038,1,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv1
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_2()
local Number_Moc = self.Task_Moc_2;
local Number_ThongBao = self.Moc_HopQua_2;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,6,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 11-Vĩnh Viễn
me.AddStackItem(18,1,3038,2,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv2
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_3()
local Number_Moc = self.Task_Moc_3;
local Number_ThongBao = self.Moc_HopQua_3;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,7,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 12-Vĩnh Viễn
me.AddStackItem(18,1,3038,3,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv3
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_4()
local Number_Moc = self.Task_Moc_4;
local Number_ThongBao = self.Moc_HopQua_4;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,8,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 13-Vĩnh Viễn
me.AddStackItem(18,1,3038,4,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv4
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_5()
local Number_Moc = self.Task_Moc_5;
local Number_ThongBao = self.Moc_HopQua_5;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,9,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 14-Vĩnh Viễn
me.AddStackItem(18,1,3038,5,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv5
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,5,{bForceBind=1,},1);--Huy Chương +5


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_6()
local Number_Moc = self.Task_Moc_6;
local Number_ThongBao = self.Moc_HopQua_6;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,10,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 15-Vĩnh Viễn
me.AddStackItem(18,1,3038,6,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv6
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,6,{bForceBind=1,},1);--Huy Chương +6


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_7()
local Number_Moc = self.Task_Moc_7;
local Number_ThongBao = self.Moc_HopQua_7;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,11,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 16-Vĩnh Viễn
me.AddStackItem(18,1,3038,7,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv7
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,7,{bForceBind=1,},1);--Huy Chương +7


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_8()
local Number_Moc = self.Task_Moc_8;
local Number_ThongBao = self.Moc_HopQua_8;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,12,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 17-Vĩnh Viễn
me.AddStackItem(18,1,3038,8,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv8
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,8,{bForceBind=1,},1);--Huy Chương +8


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_9()
local Number_Moc = self.Task_Moc_9;
local Number_ThongBao = self.Moc_HopQua_9;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,13,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn
me.AddStackItem(18,1,3038,9,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv9
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,9,{bForceBind=1,},1);--Huy Chương +9


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_10()
local Number_Moc = self.Task_Moc_10;
local Number_ThongBao = self.Moc_HopQua_10;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,14,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn
me.AddStackItem(18,1,3038,10,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv10
me.AddStackItem(18,1,3500,1,{bForceBind=1,},10);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,10,{bForceBind=1,},1);--Huy Chương +10


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_11()
local Number_Moc = self.Task_Moc_11;
local Number_ThongBao = self.Moc_HopQua_11;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,15,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn
me.AddStackItem(18,1,3038,12,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv12
me.AddStackItem(18,1,3500,1,{bForceBind=1,},15);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,11,{bForceBind=1,},1);--Huy Chương +11
me.AddStackItem(1,13,1,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +1
me.AddStackItem(18,1,3800,7,{bForceBind=1,},1);--Bộ Thiên Gia +7


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_12()
local Number_Moc = self.Task_Moc_12;
local Number_ThongBao = self.Moc_HopQua_12;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,2,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 22
me.AddStackItem(18,1,3038,14,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv14
me.AddStackItem(18,1,3500,1,{bForceBind=1,},15);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,12,{bForceBind=1,},1);--Huy Chương +12
me.AddStackItem(1,13,2,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +2
me.AddStackItem(18,1,3800,8,{bForceBind=1,},1);--Bộ Thiên Gia +8


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_13()
local Number_Moc = self.Task_Moc_13;
local Number_ThongBao = self.Moc_HopQua_13;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,4,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 24
me.AddStackItem(18,1,3038,16,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv16
me.AddStackItem(18,1,3500,1,{bForceBind=1,},15);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,13,{bForceBind=1,},1);--Huy Chương +13
me.AddStackItem(1,13,3,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +3
me.AddStackItem(18,1,3800,9,{bForceBind=1,},1);--Bộ Thiên Gia +9


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_14()
local Number_Moc = self.Task_Moc_14;
local Number_ThongBao = self.Moc_HopQua_14;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,6,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 26
me.AddStackItem(18,1,3038,18,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18
me.AddStackItem(18,1,3500,1,{bForceBind=1,},15);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,14,{bForceBind=1,},1);--Huy Chương +14
me.AddStackItem(1,13,4,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +4
me.AddStackItem(18,1,3800,10,{bForceBind=1,},1);--Bộ Thiên Gia +10


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_15()
local Number_Moc = self.Task_Moc_15;
local Number_ThongBao = self.Moc_HopQua_15;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,8,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 28
me.AddStackItem(18,1,3038,20,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20
me.AddStackItem(18,1,3500,1,{bForceBind=1,},15);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,16,{bForceBind=1,},1);--Huy Chương +16
me.AddStackItem(1,13,5,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +5
me.AddStackItem(18,1,3800,12,{bForceBind=1,},1);--Bộ Thiên Gia +12


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_16()
local Number_Moc = self.Task_Moc_16;
local Number_ThongBao = self.Moc_HopQua_16;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,18,{bForceBind=1,},1);--Huy Chương +18
me.AddStackItem(1,13,6,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +6
me.AddStackItem(18,1,3800,14,{bForceBind=1,},1);--Bộ Thiên Gia +14


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_17()
local Number_Moc = self.Task_Moc_17;
local Number_ThongBao = self.Moc_HopQua_17;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,20,{bForceBind=1,},1);--Huy Chương +20
me.AddStackItem(1,13,8,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +8
me.AddStackItem(18,1,3800,15,{bForceBind=1,},1);--Bộ Thiên Gia +15


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_18()
local Number_Moc = self.Task_Moc_18;
local Number_ThongBao = self.Moc_HopQua_18;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,22,{bForceBind=1,},1);--Huy Chương +22
me.AddStackItem(1,13,10,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +10
me.AddStackItem(18,1,3800,16,{bForceBind=1,},1);--Bộ Thiên Gia +16


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_19()
local Number_Moc = self.Task_Moc_19;
local Number_ThongBao = self.Moc_HopQua_19;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,24,{bForceBind=1,},1);--Huy Chương +24
me.AddStackItem(1,13,14,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +14
me.AddStackItem(18,1,3800,17,{bForceBind=1,},1);--Bộ Thiên Gia +17


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_20()
local Number_Moc = self.Task_Moc_20;
local Number_ThongBao = self.Moc_HopQua_20;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,26,{bForceBind=1,},1);--Huy Chương +26
me.AddStackItem(1,13,16,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +16
me.AddStackItem(18,1,3800,18,{bForceBind=1,},1);--Bộ Thiên Gia +18


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_21()
local Number_Moc = self.Task_Moc_21;
local Number_ThongBao = self.Moc_HopQua_21;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,30,{bForceBind=1,},1);--Huy Chương +30
me.AddStackItem(1,13,18,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +18
me.AddStackItem(18,1,3800,19,{bForceBind=1,},1);--Bộ Thiên Gia +19


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongMocEvent_HopQuaMayMan:MocSDHopQua_22()
local Number_Moc = self.Task_Moc_22;
local Number_ThongBao = self.Moc_HopQua_22;

if me.GetTask(self.TaskGroup_MocCheckNhan,Number_Moc) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3500,1,{bForceBind=1,},25);--Xu Sự Kiện Hè 2024
me.AddStackItem(18,1,3700,34,{bForceBind=1,},1);--Huy Chương +34
me.AddStackItem(1,13,20,10,{bForceBind=1,},1);--Bách Chiến Bá Vương +20
me.AddStackItem(18,1,3800,20,{bForceBind=1,},1);--Bộ Thiên Gia +20


me.SetTask(self.TaskGroup_MocCheckNhan,Number_Moc,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Hộp Quà Mùa Hạ<color> - Đạt Mốc sử dụng: <color=pink>"..Number_ThongBao.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

