local tbThuongMoc_TraHoangSam = {};
SpecialEvent.ThuongMoc_TraHoangSam = tbThuongMoc_TraHoangSam;


tbThuongMoc_TraHoangSam.TaskGroup_Moc_TraHoangSam = 4204;		--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm
tbThuongMoc_TraHoangSam.TaskID_Moc_TraHoangSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm


tbThuongMoc_TraHoangSam.MocTra_1 = 35;
tbThuongMoc_TraHoangSam.MocTra_2 = 45;
tbThuongMoc_TraHoangSam.MocTra_3 = 55;
tbThuongMoc_TraHoangSam.MocTra_4 = 75;
tbThuongMoc_TraHoangSam.MocTra_5 = 85;
tbThuongMoc_TraHoangSam.MocTra_6 = 95;
tbThuongMoc_TraHoangSam.MocTra_7 = 105;
tbThuongMoc_TraHoangSam.MocTra_8 = 155;
tbThuongMoc_TraHoangSam.MocTra_9 = 165;
tbThuongMoc_TraHoangSam.MocTra_10 = 175;
tbThuongMoc_TraHoangSam.MocTra_11 = 185;
tbThuongMoc_TraHoangSam.MocTra_12 = 255;
tbThuongMoc_TraHoangSam.MocTra_13 = 275;
tbThuongMoc_TraHoangSam.MocTra_14 = 300;

tbThuongMoc_TraHoangSam.TaskGroup_MocCheckNhan = 4206;	--Task Check Mốc Nhận thưởng Trà Hoàng Sâm
tbThuongMoc_TraHoangSam.Task_Moc_1 = 1;
tbThuongMoc_TraHoangSam.Task_Moc_2 = 2;
tbThuongMoc_TraHoangSam.Task_Moc_3 = 3;
tbThuongMoc_TraHoangSam.Task_Moc_4 = 4;
tbThuongMoc_TraHoangSam.Task_Moc_5 = 5;
tbThuongMoc_TraHoangSam.Task_Moc_6 = 6;
tbThuongMoc_TraHoangSam.Task_Moc_7 = 7;
tbThuongMoc_TraHoangSam.Task_Moc_8 = 8;
tbThuongMoc_TraHoangSam.Task_Moc_9 = 9;
tbThuongMoc_TraHoangSam.Task_Moc_10 = 10;
tbThuongMoc_TraHoangSam.Task_Moc_11 = 11;
tbThuongMoc_TraHoangSam.Task_Moc_12 = 12;
tbThuongMoc_TraHoangSam.Task_Moc_13 = 13;
tbThuongMoc_TraHoangSam.Task_Moc_14 = 14;



function tbThuongMoc_TraHoangSam:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local SoLanNopChu= me.GetTask(self.TaskGroup_Moc_TraHoangSam,self.TaskID_Moc_TraHoangSam); --Mốc Trà Hoàng Sâm
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trà Hoàng Sâm hiện tại: <color=cyan>"..SoLanNopChu.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLanNopChu >= self.MocTra_1 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_1.."<color>", self.MocSuDungTra_1, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_1.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_2 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_2.."<color>", self.MocSuDungTra_2, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_2.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_3 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_3.."<color>", self.MocSuDungTra_3, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_3.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_4 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_4.."<color>", self.MocSuDungTra_4, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_4.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_5 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_5.."<color>", self.MocSuDungTra_5, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_5.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_6 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_6.."<color>", self.MocSuDungTra_6, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_6.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_7 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_7.."<color>", self.MocSuDungTra_7, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_7.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_8 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_8.."<color>", self.MocSuDungTra_8, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_8.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_9 then
		table.insert(tbOpt, 9, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_9.."<color>", self.MocSuDungTra_9, self});
	else
		table.insert(tbOpt, 9, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_9.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_10 then
		table.insert(tbOpt, 10, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_10.."<color>", self.MocSuDungTra_10, self});
	else
		table.insert(tbOpt, 10, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_10.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_11 then
		table.insert(tbOpt, 11, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_11.."<color>", self.MocSuDungTra_11, self});
	else
		table.insert(tbOpt, 11, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_11.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_12 then
		table.insert(tbOpt, 12, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_12.."<color>", self.MocSuDungTra_12, self});
	else
		table.insert(tbOpt, 12, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_12.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_13 then
		table.insert(tbOpt, 13, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_13.."<color>", self.MocSuDungTra_13, self});
	else
		table.insert(tbOpt, 13, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_13.."<color>"});
	end

	if SoLanNopChu >= self.MocTra_14 then
		table.insert(tbOpt, 14, {"<color=yellow>Mốc Trà Hoàng Sâm "..self.MocTra_14.."<color>", self.MocSuDungTra_14, self});
	else
		table.insert(tbOpt, 14, {"<color=gray>Mốc Trà Hoàng Sâm "..self.MocTra_14.."<color>"});
	end

	
	Dialog:Say(szMsg, tbOpt);
end




----PHẦN THƯỞNG----

function tbThuongMoc_TraHoangSam:MocSuDungTra_1()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,1,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 21- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_1,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_1.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_2()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,2,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 22- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_2,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_2.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_3()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_3) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,3,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 23- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_3,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_3.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_4()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(5,22,12,5,{bForceBind=1,},1);--T.Bị Đồng Hành Cấp 12: Thanh Hạ Hộ Uyển- SL: 1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_4,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_4.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_5()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_5) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,4,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 24- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_5,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_5.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_6()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,5,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 25- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_6,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_6.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_7()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_7) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,6,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 26- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_7,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_7.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_8()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(5,21,12,5,{bForceBind=1,},1);--T.Bị Đồng Hành Cấp 12: Thanh Hạ Nhẫn- SL: 1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_8,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_8.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_9()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_9) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,7,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 27- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_9,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_9.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_10()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,8,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 28- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_10,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_10.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_11()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_11) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,9,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 29- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_11,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_11.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_12()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(5,19,12,5,{bForceBind=1,},1);--T.Bị Đồng Hành Cấp 12: Thanh Hạ Vũ Khí- SL: 1

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_12,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_12.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_13()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_13) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3404,10,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 30- SL: 2

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_13,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_13.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbThuongMoc_TraHoangSam:MocSuDungTra_14()
if me.GetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3500,1,{bForceBind=1,},50);--Xu Sự Kiện Hè- SL: 50

me.SetTask(self.TaskGroup_MocCheckNhan,self.Task_Moc_14,1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công <color=cyan>Mốc Trà Hoàng Sâm<color> - Đạt Mốc sử dụng: <color=pink>"..self.MocTra_14.."<color>\nChúc mừng đại hiệp!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
