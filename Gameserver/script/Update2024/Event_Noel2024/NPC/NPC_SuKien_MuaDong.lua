local tbNpc = Npc:GetClass("NPC_SuKien_MuaDong");

tbNpc.TaskGroup_DiemBachKim = 4510;
tbNpc.TaskID_DiemBachKim = 1;
tbNpc.Moc1 = 30;
tbNpc.Moc2 = 60;
tbNpc.Moc3 = 90;
tbNpc.Moc4 = 120;
tbNpc.Moc5 = 150;
tbNpc.Moc6 = 210;
tbNpc.Moc7 = 270;
tbNpc.Moc8 = 330;
tbNpc.Moc9 = 390;
tbNpc.Moc10 = 450;
tbNpc.Moc11 = 540;
tbNpc.Moc12 = 630;
tbNpc.Moc13 = 720;
tbNpc.Moc14 = 810;
tbNpc.Moc15 = 900;
tbNpc.Moc16 = 1050;
tbNpc.Moc17 = 1200;
tbNpc.Moc18 = 1500;
tbNpc.Moc19 = 2500;
tbNpc.Moc20 = 3000;

function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\Event_Noel2024\\NPC\\NPC_SuKien_MuaDong.lua");
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Nhan_PhaLe.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<color=cyan>Thông tin Sự kiện:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"
local tbOpt = {};

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Quà Tăng Cường Mốc Event Bạch Kim<color>", self.NhanThuong_TC_BachKim, self});

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Góp Quỹ Duy Trì Nhận Pha Lê<color>",	SpecialEvent.Nhan_PhaLe.OnDialog, SpecialEvent.Nhan_PhaLe});
table.insert(tbOpt,{"<color=yellow>Shop Nguyên Liệu Event", Dialog.OpenShop, Dialog, 322, 3});
table.insert(tbOpt,{"<color=yellow>Shop Điểm Giáng Sinh Sự Kiện Noel", Dialog.OpenShop, Dialog, 323, 10});
table.insert(tbOpt,{"<color=blue>Shop Đặc Quyền Mốc Bạch Kim: \n30-60-90-120-150", self.NhanThuong_Moc_BachKim1, self});
table.insert(tbOpt,{"<color=green>Shop Đặc Quyền Mốc Bạch Kim: \n210-270-330-390-450", self.NhanThuong_Moc_BachKim2, self});
table.insert(tbOpt,{"<color=gold>Shop Đặc Quyền Mốc Bạch Kim: \n540-630-720-810-900", self.NhanThuong_Moc_BachKim3, self});
table.insert(tbOpt,{"<color=yellow>Shop Đặc Quyền Mốc Bạch Kim: \n1050-1200-1500-2500-3000", self.NhanThuong_Moc_BachKim4, self});


Dialog:Say(szMsg, tbOpt);
end

function tbNpc:NhanThuong_Moc_BachKim1()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
	if Diem_BachKim >= self.Moc1 then
	table.insert(tbOpt,{"<color=blue>Shop Mốc Bạch Kim: 30", Dialog.OpenShop, Dialog, 324, 3});
	else
	end

	if Diem_BachKim >= self.Moc2 then
	table.insert(tbOpt,{"<color=blue>Shop Mốc Bạch Kim: 60", Dialog.OpenShop, Dialog, 325, 3});
	else
	end

	if Diem_BachKim >= self.Moc3 then
	table.insert(tbOpt,{"<color=blue>Shop Mốc Bạch Kim: 90", Dialog.OpenShop, Dialog, 326, 3});
	else
	end

	if Diem_BachKim >= self.Moc4 then
	table.insert(tbOpt,{"<color=blue>Shop Mốc Bạch Kim: 120", Dialog.OpenShop, Dialog, 327, 3});
	else
	end

	if Diem_BachKim >= self.Moc5 then
	table.insert(tbOpt,{"<color=blue>Shop Mốc Bạch Kim: 150", Dialog.OpenShop, Dialog, 328, 3});
	else
	end


Dialog:Say(szMsg, tbOpt);
end

function tbNpc:NhanThuong_Moc_BachKim2()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

	if Diem_BachKim >= self.Moc6 then
	table.insert(tbOpt,{"<color=green>Shop Mốc Bạch Kim: 210", Dialog.OpenShop, Dialog, 329, 3});
	else
	end

	if Diem_BachKim >= self.Moc7 then
	table.insert(tbOpt,{"<color=green>Shop Mốc Bạch Kim: 270", Dialog.OpenShop, Dialog, 330, 3});
	else
	end

	if Diem_BachKim >= self.Moc8 then
	table.insert(tbOpt,{"<color=green>Shop Mốc Bạch Kim: 330", Dialog.OpenShop, Dialog, 331, 3});
	else
	end

	if Diem_BachKim >= self.Moc9 then
	table.insert(tbOpt,{"<color=green>Shop Mốc Bạch Kim: 390", Dialog.OpenShop, Dialog, 332, 3});
	else
	end

	if Diem_BachKim >= self.Moc10 then
	table.insert(tbOpt,{"<color=green>Shop Mốc Bạch Kim: 450", Dialog.OpenShop, Dialog, 333, 3});
	else
	end


Dialog:Say(szMsg, tbOpt);
end


function tbNpc:NhanThuong_Moc_BachKim3()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

	if Diem_BachKim >= self.Moc11 then
	table.insert(tbOpt,{"<color=gold>Shop Mốc Bạch Kim: 540", Dialog.OpenShop, Dialog, 334, 3});
	else
	end

	if Diem_BachKim >= self.Moc12 then
	table.insert(tbOpt,{"<color=gold>Shop Mốc Bạch Kim: 630", Dialog.OpenShop, Dialog, 335, 3});
	else
	end

	if Diem_BachKim >= self.Moc13 then
	table.insert(tbOpt,{"<color=gold>Shop Mốc Bạch Kim: 720", Dialog.OpenShop, Dialog, 336, 3});
	else
	end

	if Diem_BachKim >= self.Moc14 then
	table.insert(tbOpt,{"<color=gold>Shop Mốc Bạch Kim: 810", Dialog.OpenShop, Dialog, 337, 3});
	else
	end

	if Diem_BachKim >= self.Moc15 then
	table.insert(tbOpt,{"<color=gold>Shop Mốc Bạch Kim: 900", Dialog.OpenShop, Dialog, 338, 3});
	else
	end


Dialog:Say(szMsg, tbOpt);
end


function tbNpc:NhanThuong_Moc_BachKim4()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

	if Diem_BachKim >= self.Moc16 then
	table.insert(tbOpt,{"<color=yellow>Shop Mốc Bạch Kim: 1050", Dialog.OpenShop, Dialog, 339, 3});
	else
	end

	if Diem_BachKim >= self.Moc17 then
	table.insert(tbOpt,{"<color=yellow>Shop Mốc Bạch Kim: 1200", Dialog.OpenShop, Dialog, 340, 3});
	else
	end

	if Diem_BachKim >= self.Moc18 then
	table.insert(tbOpt,{"<color=yellow>Shop Mốc Bạch Kim: 1500", Dialog.OpenShop, Dialog, 341, 3});
	else
	end

	if Diem_BachKim >= self.Moc19 then
	table.insert(tbOpt,{"<color=yellow>Shop Mốc Bạch Kim: 2500", Dialog.OpenShop, Dialog, 342, 3});
	else
	end

	if Diem_BachKim >= self.Moc20 then
	table.insert(tbOpt,{"<color=yellow>Shop Mốc Bạch Kim: 3000", Dialog.OpenShop, Dialog, 343, 3});
	else
	end

Dialog:Say(szMsg, tbOpt);
end

function tbNpc:NhanThuong_TC_BachKim()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = "<bclr=0,0,200><color=white>★ Điểm Bạch Kim: <color=pink>"..Diem_BachKim.."<color><color>\n"..
"<bclr=0,0,200><color=white>❂ Danh Sách Phần Thưởng:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	if Diem_BachKim >= self.Moc19 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc19.."<color>", self.NhanThuong_Moc2500, self});
	else
	end

	if Diem_BachKim >= self.Moc20 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc20.."<color>", self.NhanThuong_Moc3000, self});
	else
	end

	if Diem_BachKim >= self.Moc21 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc21.."<color>", self.NhanThuong_Moc3500, self});
	else
	end

	if Diem_BachKim >= self.Moc22 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc22.."<color>", self.NhanThuong_Moc4000, self});
	else
	end

	if Diem_BachKim >= self.Moc23 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc23.."<color>", self.NhanThuong_Moc4500, self});
	else
	end

	if Diem_BachKim >= self.Moc24 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Bạch Kim Mốc: "..self.Moc24.."<color>", self.NhanThuong_Moc5000, self});
	else
	end
Dialog:Say(szMsg, tbOpt);
end

tbNpc.Moc19 = 2500;
tbNpc.Moc20 = 3000;
tbNpc.Moc21 = 3500;
tbNpc.Moc22 = 4000;
tbNpc.Moc23 = 4500;
tbNpc.Moc24 = 5000;

tbNpc.Moc_Event_TaskGroup = 4514;
tbNpc.Moc_Event_2500 = 1;
tbNpc.Moc_Event_3000 = 2;
tbNpc.Moc_Event_3500 = 3;
tbNpc.Moc_Event_4000 = 4;
tbNpc.Moc_Event_4500 = 5;
tbNpc.Moc_Event_5000 = 6;

function tbNpc:NhanThuong_Moc2500()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_2500);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38


me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_2500,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc19.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Moc3000()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_3000);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38
me.AddItem(1,25,614,2); --Sí Nhiễm Hoa Y
me.AddItem(1,25,615,2); --Long Dĩnh Sam
me.AddItem(1,26,560,2); --Long Minh Quan 
me.AddItem(1,26,561,2); --Long Dĩnh Thoa
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp

me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_3000,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc20.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Moc3500()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_3500);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp


me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_3500,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc21.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Moc4000()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_4000);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp

me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_4000,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc22.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Moc4500()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_4500);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp

me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_4500,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc23.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Moc5000()
local CheckNhan = me.GetTask(self.Moc_Event_TaskGroup,self.Moc_Event_5000);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Phần Thưởng--
me.AddStackItem(18,1,3404,38,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 38
me.AddItem(1,13,35,10); --✭Tàn Đông Chi Long✭
me.AddItem(1,16,49,10); --✭Tàn Đông Chi Ấn✭
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp

me.SetTask(self.Moc_Event_TaskGroup,self.Moc_Event_5000,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> [Mốc Event Bạch Kim: "..self.Moc24.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

