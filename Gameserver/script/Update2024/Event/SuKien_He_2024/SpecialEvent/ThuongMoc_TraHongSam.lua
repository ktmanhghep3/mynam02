local tbThuongMoc_TraHongSam = {};
SpecialEvent.ThuongMoc_TraHongSam = tbThuongMoc_TraHongSam;


tbThuongMoc_TraHongSam.TaskGroup_Moc_TraHongSam = 4203;		--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm
tbThuongMoc_TraHongSam.TaskID_Moc_TraHongSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm


tbThuongMoc_TraHongSam.MocTra_1 = 15;
tbThuongMoc_TraHongSam.MocTra_2 = 20;
tbThuongMoc_TraHongSam.MocTra_3 = 25;
tbThuongMoc_TraHongSam.MocTra_4 = 35;
tbThuongMoc_TraHongSam.MocTra_5 = 40;
tbThuongMoc_TraHongSam.MocTra_6 = 45;
tbThuongMoc_TraHongSam.MocTra_7 = 60;
tbThuongMoc_TraHongSam.MocTra_8 = 70;
tbThuongMoc_TraHongSam.MocTra_9 = 75;
tbThuongMoc_TraHongSam.MocTra_10 = 85;
tbThuongMoc_TraHongSam.MocTra_11 = 90;
tbThuongMoc_TraHongSam.MocTra_12 = 100;
tbThuongMoc_TraHongSam.MocTra_13 = 110;
tbThuongMoc_TraHongSam.MocTra_14 = 120;
tbThuongMoc_TraHongSam.MocTra_15 = 140;
tbThuongMoc_TraHongSam.MocTra_16 = 150;
tbThuongMoc_TraHongSam.MocTra_17 = 200;
tbThuongMoc_TraHongSam.MocTra_18 = 230;
tbThuongMoc_TraHongSam.MocTra_19 = 250;
tbThuongMoc_TraHongSam.MocTra_20 = 280;
tbThuongMoc_TraHongSam.MocTra_21 = 300;
tbThuongMoc_TraHongSam.MocTra_22 = 325;
tbThuongMoc_TraHongSam.MocTra_23 = 350;
tbThuongMoc_TraHongSam.MocTra_24 = 375;
tbThuongMoc_TraHongSam.MocTra_25 = 400;
tbThuongMoc_TraHongSam.MocTra_26 = 425;
tbThuongMoc_TraHongSam.MocTra_27 = 450;
tbThuongMoc_TraHongSam.MocTra_28 = 475;
tbThuongMoc_TraHongSam.MocTra_29 = 500;
tbThuongMoc_TraHongSam.MocTra_30 = 525;

tbThuongMoc_TraHongSam.TaskGroup_MocCheckNhan = 4205;	--Task Check Mốc Nhận thưởng Trà Hồng Sâm
tbThuongMoc_TraHongSam.Task_Moc_1 = 1;
tbThuongMoc_TraHongSam.Task_Moc_2 = 2;
tbThuongMoc_TraHongSam.Task_Moc_3 = 3;
tbThuongMoc_TraHongSam.Task_Moc_4 = 4;
tbThuongMoc_TraHongSam.Task_Moc_5 = 5;
tbThuongMoc_TraHongSam.Task_Moc_6 = 6;
tbThuongMoc_TraHongSam.Task_Moc_7 = 7;
tbThuongMoc_TraHongSam.Task_Moc_8 = 8;
tbThuongMoc_TraHongSam.Task_Moc_9 = 9;
tbThuongMoc_TraHongSam.Task_Moc_10 = 10;
tbThuongMoc_TraHongSam.Task_Moc_11 = 11;
tbThuongMoc_TraHongSam.Task_Moc_12 = 12;
tbThuongMoc_TraHongSam.Task_Moc_13 = 13;
tbThuongMoc_TraHongSam.Task_Moc_14 = 14;
tbThuongMoc_TraHongSam.Task_Moc_15 = 15;
tbThuongMoc_TraHongSam.Task_Moc_16 = 16;
tbThuongMoc_TraHongSam.Task_Moc_17 = 17;
tbThuongMoc_TraHongSam.Task_Moc_18 = 18;
tbThuongMoc_TraHongSam.Task_Moc_19 = 19;
tbThuongMoc_TraHongSam.Task_Moc_20 = 20;
tbThuongMoc_TraHongSam.Task_Moc_21 = 21;
tbThuongMoc_TraHongSam.Task_Moc_22 = 22;
tbThuongMoc_TraHongSam.Task_Moc_23 = 23;
tbThuongMoc_TraHongSam.Task_Moc_24 = 24;
tbThuongMoc_TraHongSam.Task_Moc_25 = 25;
tbThuongMoc_TraHongSam.Task_Moc_26 = 26;
tbThuongMoc_TraHongSam.Task_Moc_27 = 27;
tbThuongMoc_TraHongSam.Task_Moc_28 = 28;
tbThuongMoc_TraHongSam.Task_Moc_29 = 29;
tbThuongMoc_TraHongSam.Task_Moc_30 = 30;



function tbThuongMoc_TraHongSam:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local SoLanNopChu= me.GetTask(self.TaskGroup_Moc_TraHongSam,self.TaskID_Moc_TraHongSam); --Mốc Trà Hồng Sâm
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trà Hồng Sâm hiện tại: <color=cyan>"..SoLanNopChu.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLanNopChu >= self.MocTra_1 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_1.."<color>", self.MocSuDungTra_1, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_1.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_2 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_2.."<color>", self.MocSuDungTra_2, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_2.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_3 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_3.."<color>", self.MocSuDungTra_3, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_3.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_4 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_4.."<color>", self.MocSuDungTra_4, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_4.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_5 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_5.."<color>", self.MocSuDungTra_5, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_5.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_6 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_6.."<color>", self.MocSuDungTra_6, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_6.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_7 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_7.."<color>", self.MocSuDungTra_7, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_7.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_8 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_8.."<color>", self.MocSuDungTra_8, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_8.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_9 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_9.."<color>", self.MocSuDungTra_9, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_9.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_10 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_10.."<color>", self.MocSuDungTra_10, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_10.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_11 then
		table.insert(tbOpt, 11, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_11.."<color>", self.MocSuDungTra_11, self});
	else
		table.insert(tbOpt, 11, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_11.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_12 then
		table.insert(tbOpt, 12, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_12.."<color>", self.MocSuDungTra_12, self});
	else
		table.insert(tbOpt, 12, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_12.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_13 then
		table.insert(tbOpt, 13, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_13.."<color>", self.MocSuDungTra_13, self});
	else
		table.insert(tbOpt, 13, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_13.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_14 then
		table.insert(tbOpt, 14, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_14.."<color>", self.MocSuDungTra_14, self});
	else
		table.insert(tbOpt, 14, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_14.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_15 then
		table.insert(tbOpt, 15, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_15.."<color>", self.MocSuDungTra_15, self});
	else
		table.insert(tbOpt, 15, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_15.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_16 then
		table.insert(tbOpt, 16, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_16.."<color>", self.MocSuDungTra_16, self});
	else
		table.insert(tbOpt, 16, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_16.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_17 then
		table.insert(tbOpt, 17, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_17.."<color>", self.MocSuDungTra_17, self});
	else
		table.insert(tbOpt, 17, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_17.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_18 then
		table.insert(tbOpt, 18, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_18.."<color>", self.MocSuDungTra_18, self});
	else
		table.insert(tbOpt, 18, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_18.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_19 then
		table.insert(tbOpt, 19, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_19.."<color>", self.MocSuDungTra_19, self});
	else
		table.insert(tbOpt, 19, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_19.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_20 then
		table.insert(tbOpt, 20, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_20.."<color>", self.MocSuDungTra_20, self});
	else
		table.insert(tbOpt, 20, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_20.."<color>"});
	end
	
	Dialog:Say(szMsg, tbOpt);
end

function tbThuongMoc_TraHongSam:OnDialog_2()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local SoLanNopChu= me.GetTask(self.TaskGroup_Moc_TraHongSam,self.TaskID_Moc_TraHongSam); --Mốc Trà Hồng Sâm
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trà Hồng Sâm hiện tại: <color=cyan>"..SoLanNopChu.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLanNopChu >= self.MocTra_21 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_21.."<color>", self.MocSuDungTra_21, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_21.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_22 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_22.."<color>", self.MocSuDungTra_22, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_22.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_23 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_23.."<color>", self.MocSuDungTra_23, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_23.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_24 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_24.."<color>", self.MocSuDungTra_24, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_24.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_25 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_25.."<color>", self.MocSuDungTra_25, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_25.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_26 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_26.."<color>", self.MocSuDungTra_26, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_26.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_27 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_27.."<color>", self.MocSuDungTra_27, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_27.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_28 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_28.."<color>", self.MocSuDungTra_28, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_28.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_29 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_29.."<color>", self.MocSuDungTra_29, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_29.."<color>"});
	end
	if SoLanNopChu >= self.MocTra_30 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Trà Hồng Sâm "..self.MocTra_30.."<color>", self.MocSuDungTra_30, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Trà Hồng Sâm "..self.MocTra_30.."<color>"});
	end



	
	Dialog:Say(szMsg, tbOpt);
end



----PHẦN THƯỞNG----

function tbThuongMoc_TraHongSam:MocSuDungTra_1()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_1.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_2()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,112,3,{bForceBind=1,},1);--Tiểu Ưng Ấn-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_2.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_3()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_3.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_4()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,113,3,{bForceBind=1,},1);--Đại Ưng Ấn-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_4.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_5()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_5.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_6()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,114,3,{bForceBind=1,},1);--Phụng Tử Ấn-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_6.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_7()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_7.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_8()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,1,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 6-Vĩnh Viễn-3
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_8.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_9()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_9.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_10()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,12,1063,10,{bForceBind=1,},1);--Hắc Phong Đạp Vân - [Ngựa VIP]-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_10.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_11()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_11.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_12()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,2,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 7-Vĩnh Viễn-3
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_12.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_13()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_13.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_14()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,12,1064,10,{bForceBind=1,},1);--Bạch Vân Truy Phong - [Ngựa VIP]-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_14.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_15()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_15.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_16()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_16) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,3,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 8-Vĩnh Viễn-3
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_16,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_16.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_17()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_17.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_18()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_18) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(1,16,117,3,{bForceBind=1,},1);--Hổ Báo Ấn-1
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_18,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_18.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_19()
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
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_19.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_20()
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
me.AddRepute(14,1,2000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_20,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_20.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_21()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_21) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,6,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 11-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_21,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_21.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_22()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_22) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,7,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 12-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_22,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_22.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_23()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_23) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,8,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 13-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_23,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_23.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_24()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_24) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,9,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 14-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_24,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_24.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_25()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_25) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,10,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 15-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_25,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_25.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_26()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_26) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,11,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 16-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_26,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_26.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_27()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_27) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,12,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 17-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_27,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_27.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_28()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_28) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,13,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_28,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_28.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_29()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_29) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,14,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn-5
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_29,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_29.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHongSam:MocSuDungTra_30()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_30) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3027,15,{bForceBind=1,},5);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn-5
--me.AddItem(1,12,1074,10);
me.AddRepute(14,1,3000); --Điểm Danh Vọng Sát Thần PK
me.AddItem(1,12,1078,10);--Nguyệt Ngân Thần Quỳ-Hè 2024
me.AddItem(1,12,1079,10);--Tuyết Sí Liên Vũ-Hè 2024


me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_30,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hồng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_30.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
