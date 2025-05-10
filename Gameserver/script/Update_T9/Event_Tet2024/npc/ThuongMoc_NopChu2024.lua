local tbThuongMoc_NopChu2024 = {};
SpecialEvent.ThuongMoc_NopChu2024 = tbThuongMoc_NopChu2024;

tbThuongMoc_NopChu2024.TaskGroup_MocNopChu = 4099;	--Task Mốc Nộp Chữ Năm Mới Giáp Thìn 2024
tbThuongMoc_NopChu2024.TaskID_MocNopChu = 1;

tbThuongMoc_NopChu2024.MocChu_1 = 3;
tbThuongMoc_NopChu2024.MocChu_2 = 5;
tbThuongMoc_NopChu2024.MocChu_3 = 10;
tbThuongMoc_NopChu2024.MocChu_4 = 15;
tbThuongMoc_NopChu2024.MocChu_5 = 20;
tbThuongMoc_NopChu2024.MocChu_6 = 25;
tbThuongMoc_NopChu2024.MocChu_7 = 30;
tbThuongMoc_NopChu2024.MocChu_8 = 35;
tbThuongMoc_NopChu2024.MocChu_9 = 40;
tbThuongMoc_NopChu2024.MocChu_10 = 45;
tbThuongMoc_NopChu2024.MocChu_11 = 50;
tbThuongMoc_NopChu2024.MocChu_12 = 55;
tbThuongMoc_NopChu2024.MocChu_13 = 60;
tbThuongMoc_NopChu2024.MocChu_14 = 65;
tbThuongMoc_NopChu2024.MocChu_15 = 70;
tbThuongMoc_NopChu2024.MocChu_16 = 75;
tbThuongMoc_NopChu2024.MocChu_17 = 80;
tbThuongMoc_NopChu2024.MocChu_18 = 85;
tbThuongMoc_NopChu2024.MocChu_19 = 90;
tbThuongMoc_NopChu2024.MocChu_20 = 100;
tbThuongMoc_NopChu2024.MocChu_21 = 110;
tbThuongMoc_NopChu2024.MocChu_22 = 120;
tbThuongMoc_NopChu2024.MocChu_23 = 130;
tbThuongMoc_NopChu2024.MocChu_24 = 140;
tbThuongMoc_NopChu2024.MocChu_25 = 150;
tbThuongMoc_NopChu2024.MocChu_26 = 160;
tbThuongMoc_NopChu2024.MocChu_27 = 170;
tbThuongMoc_NopChu2024.MocChu_28 = 180;
tbThuongMoc_NopChu2024.MocChu_29 = 190;
tbThuongMoc_NopChu2024.MocChu_30 = 200;

tbThuongMoc_NopChu2024.TaskGroup_MocCheckNhan = 4100;	--Task Check Mốc Nhận thưởng Nộp chữ Chữ Năm Mới Giáp Thìn 2024
tbThuongMoc_NopChu2024.Task_Moc_1 = 1;
tbThuongMoc_NopChu2024.Task_Moc_2 = 2;
tbThuongMoc_NopChu2024.Task_Moc_3 = 3;
tbThuongMoc_NopChu2024.Task_Moc_4 = 4;
tbThuongMoc_NopChu2024.Task_Moc_5 = 5;
tbThuongMoc_NopChu2024.Task_Moc_6 = 6;
tbThuongMoc_NopChu2024.Task_Moc_7 = 7;
tbThuongMoc_NopChu2024.Task_Moc_8 = 8;
tbThuongMoc_NopChu2024.Task_Moc_9 = 9;
tbThuongMoc_NopChu2024.Task_Moc_10 = 10;
tbThuongMoc_NopChu2024.Task_Moc_11 = 11;
tbThuongMoc_NopChu2024.Task_Moc_12 = 12;
tbThuongMoc_NopChu2024.Task_Moc_13 = 13;
tbThuongMoc_NopChu2024.Task_Moc_14 = 14;
tbThuongMoc_NopChu2024.Task_Moc_15 = 15;
tbThuongMoc_NopChu2024.Task_Moc_16 = 16;
tbThuongMoc_NopChu2024.Task_Moc_17 = 17;
tbThuongMoc_NopChu2024.Task_Moc_18 = 18;
tbThuongMoc_NopChu2024.Task_Moc_19 = 19;
tbThuongMoc_NopChu2024.Task_Moc_20 = 20;
tbThuongMoc_NopChu2024.Task_Moc_21 = 21;
tbThuongMoc_NopChu2024.Task_Moc_22 = 22;
tbThuongMoc_NopChu2024.Task_Moc_23 = 23;
tbThuongMoc_NopChu2024.Task_Moc_24 = 24;
tbThuongMoc_NopChu2024.Task_Moc_25 = 25;
tbThuongMoc_NopChu2024.Task_Moc_26 = 26;
tbThuongMoc_NopChu2024.Task_Moc_27 = 27;
tbThuongMoc_NopChu2024.Task_Moc_28 = 28;
tbThuongMoc_NopChu2024.Task_Moc_29 = 29;
tbThuongMoc_NopChu2024.Task_Moc_30 = 30;



function tbThuongMoc_NopChu2024:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu); --Mốc Nộp chữ
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Nộp Chữ hiện tại: <color=cyan>"..SoLanNopChu.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLanNopChu >= self.MocChu_1 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_1.."<color>", self.MocNapChu_1, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_1.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_2 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_2.."<color>", self.MocNapChu_2, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_2.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_3 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_3.."<color>", self.MocNapChu_3, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_3.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_4 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_4.."<color>", self.MocNapChu_4, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_4.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_5 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_5.."<color>", self.MocNapChu_5, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_5.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_6 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_6.."<color>", self.MocNapChu_6, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_6.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_7 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_7.."<color>", self.MocNapChu_7, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_7.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_8 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_8.."<color>", self.MocNapChu_8, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_8.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_9 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_9.."<color>", self.MocNapChu_9, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_9.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_10 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_10.."<color>", self.MocNapChu_10, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_10.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_11 then
		table.insert(tbOpt, 11, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_11.."<color>", self.MocNapChu_11, self});
	else
		table.insert(tbOpt, 11, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_11.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_12 then
		table.insert(tbOpt, 12, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_12.."<color>", self.MocNapChu_12, self});
	else
		table.insert(tbOpt, 12, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_12.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_13 then
		table.insert(tbOpt, 13, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_13.."<color>", self.MocNapChu_13, self});
	else
		table.insert(tbOpt, 13, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_13.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_14 then
		table.insert(tbOpt, 14, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_14.."<color>", self.MocNapChu_14, self});
	else
		table.insert(tbOpt, 14, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_14.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_15 then
		table.insert(tbOpt, 15, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_15.."<color>", self.MocNapChu_15, self});
	else
		table.insert(tbOpt, 15, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_15.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_16 then
		table.insert(tbOpt, 16, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_16.."<color>", self.MocNapChu_16, self});
	else
		table.insert(tbOpt, 16, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_16.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_17 then
		table.insert(tbOpt, 17, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_17.."<color>", self.MocNapChu_17, self});
	else
		table.insert(tbOpt, 17, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_17.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_18 then
		table.insert(tbOpt, 18, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_18.."<color>", self.MocNapChu_18, self});
	else
		table.insert(tbOpt, 18, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_18.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_19 then
		table.insert(tbOpt, 19, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_19.."<color>", self.MocNapChu_19, self});
	else
		table.insert(tbOpt, 19, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_19.."<color>"});
	end

	if SoLanNopChu >= self.MocChu_20 then
		table.insert(tbOpt, 20, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_20.."<color>", self.MocNapChu_20, self});
	else
		table.insert(tbOpt, 20, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_20.."<color>"});
	end
	
	Dialog:Say(szMsg, tbOpt);
end

function tbThuongMoc_NopChu2024:OnDialog_2()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu); --Mốc Nộp chữ
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Nộp Chữ hiện tại: <color=cyan>"..SoLanNopChu.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLanNopChu >= self.MocChu_21 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_21.."<color>", self.MocNapChu_21, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_21.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_22 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_22.."<color>", self.MocNapChu_22, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_22.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_23 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_23.."<color>", self.MocNapChu_23, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_23.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_24 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_24.."<color>", self.MocNapChu_24, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_24.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_25 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_25.."<color>", self.MocNapChu_25, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_25.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_26 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_26.."<color>", self.MocNapChu_26, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_26.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_27 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_27.."<color>", self.MocNapChu_27, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_27.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_28 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_28.."<color>", self.MocNapChu_28, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_28.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_29 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_29.."<color>", self.MocNapChu_29, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_29.."<color>"});
	end
	if SoLanNopChu >= self.MocChu_30 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Nộp Chữ "..self.MocChu_30.."<color>", self.MocNapChu_30, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Nộp Chữ "..self.MocChu_30.."<color>"});
	end



	
	Dialog:Say(szMsg, tbOpt);
end



----PHẦN THƯỞNG----

function tbThuongMoc_NopChu2024:MocNapChu_1()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3019,1,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 3-Vĩnh Viễn-2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_1,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_1.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_2()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,112,3,{bForceBind=1,},1);--Tiểu Ưng Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_2.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_3()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_3) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3020,1,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 4-Vĩnh Viễn-3

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_3,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_3.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_4()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,113,3,{bForceBind=1,},1);--Đại Ưng Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_4.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_5()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_5) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3021,1,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 5-Vĩnh Viễn-3

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_5,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_5.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_6()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,114,3,{bForceBind=1,},1);--Phụng Tử Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_6.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_7()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_7) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,26,146,2,{bForceBind=1,},1);--Chung Linh Ngọc Thanh Kế - [Ngoại trang VIP-Nón]-1
me.AddStackItem(1,26,147,2,{bForceBind=1,},1);--Chung Linh Ngọc Thanh Trâm - [Ngoại trang VIP-Nón]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_7,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_7.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_8()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,1,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 6-Vĩnh Viễn-3

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_8.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_9()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_9) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,115,3,{bForceBind=1,},1);--Phụng Hoàng Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_9,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_9.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_10()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,12,1063,10,{bForceBind=1,},1);--Hắc Phong Đạp Vân - [Ngựa VIP]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_10.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_11()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_11) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,25,160,2,{bForceBind=1,},1);--Chung Linh Ngọc Thanh Bào - [Ngoại trang VIP-Áo]-1
me.AddStackItem(1,25,161,2,{bForceBind=1,},1);--Chung Linh Ngọc Thanh Thường - [Ngoại trang VIP-Áo]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_11,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_11.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_12()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,2,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 7-Vĩnh Viễn-3

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_12.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_13()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_13) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,116,3,{bForceBind=1,},1);--Tiểu Hổ Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_13,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_13.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_14()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,12,1064,10,{bForceBind=1,},1);--Bạch Vân Truy Phong - [Ngựa VIP]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_14.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_15()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_15) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,26,148,2,{bForceBind=1,},1);--Hoàng Sương Nhật Hi Kế - [Ngoại trang VIP-Nón]-1
me.AddStackItem(1,26,149,2,{bForceBind=1,},1);--Hoàng Sương Nhật Hi Trâm - [Ngoại trang VIP-Nón]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_15,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_15.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_16()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_16) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,3,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 8-Vĩnh Viễn-3

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_16,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_16.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_17()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_17) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,25,162,2,{bForceBind=1,},1);--Hoàng Sương Nhật Hi Bào - [Ngoại trang VIP-Áo]-1
me.AddStackItem(1,25,163,2,{bForceBind=1,},1);--Hoàng Sương Nhật Hi Thường - [Ngoại trang VIP-Áo]-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_17,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_17.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_18()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_18) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,117,3,{bForceBind=1,},1);--Hổ Báo Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_18,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_18.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_19()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_19) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,4,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 9-Vĩnh Viễn-3
me.AddStackItem(1,16,118,3,{bForceBind=1,},1);--Thần Long Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_19,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_19.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_20()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_20) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,5,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn-3
me.AddStackItem(1,16,119,3,{bForceBind=1,},1);--Bất Bại Ấn-1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_20,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_20.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_21()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_21) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,6,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 11-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_21,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_21.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_22()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_22) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,7,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 12-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_22,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_22.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_23()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_23) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,8,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 13-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_23,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_23.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_24()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_24) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,9,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 14-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_24,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_24.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_25()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_25) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,10,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 15-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_25,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_25.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_26()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_26) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,11,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 16-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_26,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_26.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_27()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_27) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,12,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 17-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_27,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_27.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_28()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_28) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,13,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_28,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_28.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_29()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_29) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,14,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn-5

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_29,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_29.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_NopChu2024:MocNapChu_30()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_30) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,15,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn-5
me.AddItem(1,12,1074,10);

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_30,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Nộp Chữ Năm Mới Giáp Thìn 2024<color> - Đạt Mốc Nộp chữ thứ: <color=pink>"..self.MocChu_30.."<color>\nChúc Anh em nhân sĩ và gia đình Năm mới Phát tài, Vạn Sự An Niên!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
