local tbMocEvent_TangCuong ={};
SpecialEvent.MocEvent_TangCuong= tbMocEvent_TangCuong;

tbMocEvent_TangCuong.TaskGroup_PhatTaiPhatLoc = 4518;	--Điểm Mốc: Phát Tài Phát Lộc
tbMocEvent_TangCuong.TaskID_PhatTaiPhatLoc = 1;

tbMocEvent_TangCuong.CheckNhan_Event = 4521;	--Check Nhận
tbMocEvent_TangCuong.Check_3999 = 1;
tbMocEvent_TangCuong.Check_5999 = 2;
tbMocEvent_TangCuong.Check_6999 = 3;
tbMocEvent_TangCuong.Check_7999 = 4;
tbMocEvent_TangCuong.Check_8999 = 5;

tbMocEvent_TangCuong.Check_9999 = 36;
tbMocEvent_TangCuong.Check_30K = 46;
tbMocEvent_TangCuong.Check_TriAn = 56;

tbMocEvent_TangCuong.Check_TriAnDongGop = 100;

tbMocEvent_TangCuong.Moc5 = 3999;
tbMocEvent_TangCuong.Moc6 = 5999;
tbMocEvent_TangCuong.Moc7 = 6999;
tbMocEvent_TangCuong.Moc8 = 7999;
tbMocEvent_TangCuong.Moc9 = 8999;
tbMocEvent_TangCuong.Moc10 = 9999;
tbMocEvent_TangCuong.Moc11 = 30000;

function tbMocEvent_TangCuong:OnDialog()
DoScript("\\script\\Update2025\\Event_Tet_2025\\spacialcode\\MocEvent_TangCuong.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local szMsg = "<bclr=0,0,200><color=white>Sự kiện VIP: Phần thưởng Tăng Cường:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Phát Tài Phát Lộc: <color=red>"..Diem_PhatTaiPhatLoc.."<color><color>\n"
local tbOpt = {};

table.insert(tbOpt,{"<bclr=100,100,100><color=white>Nhận Quà đạt Mốc: 3999", self.Qua_3999, self});
table.insert(tbOpt,{"<bclr=100,100,100><color=white>Nhận Quà đạt Mốc: 5999", self.Qua_5999, self});
table.insert(tbOpt,{"<bclr=100,100,100><color=white>Nhận Quà đạt Mốc: 6999", self.Qua_6999, self});
table.insert(tbOpt,{"<bclr=100,100,100><color=white>Nhận Quà đạt Mốc: 7999", self.Qua_7999, self});
table.insert(tbOpt,{"<bclr=100,100,100><color=white>Nhận Quà đạt Mốc: 8999", self.Qua_8999, self});

if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Quà đạt Mốc: 9999", self.Qua_9999, self});
end

if (me.szAccount == "dieptumi13") or (me.szAccount == "dieptumi") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Quà đạt Mốc: 30000", self.Qua_30K, self});
end

if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Quà Tri Ân Big Event Tân Niên 2025", self.Qua_TriAn, self});
end

if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Quà Tri Ân Đóng Góp Huy Động Quỹ", self.Qua_TriAn_DongGop, self});
end

Dialog:Say(szMsg, tbOpt);
end


function tbMocEvent_TangCuong:Qua_3999()
local Moc_Event = self.Moc5;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_3999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
me.AddStackItem(18,1,4020,1,{bForceBind=1,},3999);--Khí Linh
--me.AddStackItem(18,1,4010,1,{bForceBind=1,},199);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,3038,30,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,40,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 40
me.AddStackItem(1,13,51,10,{bForceBind=1,},1);--Thiên Hạ Tân Niên +50✭✭✭✭
me.AddStackItem(1,16,65,10,{bForceBind=1,},1);--Tân Niên Thiên Hạ Ấn 40✭✭✭✭



me.SetTask(self.CheckNhan_Event,self.Check_3999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbMocEvent_TangCuong:Qua_5999()
local Moc_Event = self.Moc6;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_5999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
me.AddStackItem(18,1,4019,1,{bForceBind=1,},1);--Diệt Thế Diễm Thiên Trảm Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4020,1,{bForceBind=1,},5999);--Khí Linh
--me.AddStackItem(18,1,4010,1,{bForceBind=1,},299);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,3038,30,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,40,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 40
me.AddStackItem(1,13,52,10,{bForceBind=1,},1);--Thiên Hạ Tân Niên +51✭✭✭✭
me.AddStackItem(1,16,66,10,{bForceBind=1,},1);--Tân Niên Thiên Hạ Ấn 41✭✭✭✭



me.SetTask(self.CheckNhan_Event,self.Check_5999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbMocEvent_TangCuong:Qua_6999()
local Moc_Event = self.Moc7;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_6999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
me.AddStackItem(18,1,4019,1,{bForceBind=1,},1);--Diệt Thế Diễm Thiên Trảm Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4020,1,{bForceBind=1,},6999);--Khí Linh
--me.AddStackItem(18,1,4010,1,{bForceBind=1,},399);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,3038,30,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,40,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 40
me.AddStackItem(1,13,53,10,{bForceBind=1,},1);--Thiên Hạ Tân Niên +52✭✭✭✭
me.AddStackItem(1,16,67,10,{bForceBind=1,},1);--Tân Niên Thiên Hạ Ấn 42✭✭✭✭



me.SetTask(self.CheckNhan_Event,self.Check_6999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbMocEvent_TangCuong:Qua_7999()
local Moc_Event = self.Moc8;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_7999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
me.AddStackItem(18,1,4019,1,{bForceBind=1,},1);--Diệt Thế Diễm Thiên Trảm Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4020,1,{bForceBind=1,},7999);--Khí Linh
--me.AddStackItem(18,1,4010,1,{bForceBind=1,},499);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,3038,30,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,40,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 40
me.AddStackItem(1,13,54,10,{bForceBind=1,},1);--Thiên Hạ Tân Niên +53✭✭✭✭
me.AddStackItem(1,16,68,10,{bForceBind=1,},1);--Tân Niên Thiên Hạ Ấn 43✭✭✭✭
me.AddStackItem(1,18,1,4,{bForceBind=1,},1);--Quan Ấn Thiếu Khanh (Vĩnh Viễn)



me.SetTask(self.CheckNhan_Event,self.Check_7999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbMocEvent_TangCuong:Qua_8999()
local Moc_Event = self.Moc9;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_8999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
me.AddStackItem(18,1,4019,1,{bForceBind=1,},1);--Diệt Thế Diễm Thiên Trảm Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4020,1,{bForceBind=1,},8999);--Khí Linh
--me.AddStackItem(18,1,4010,1,{bForceBind=1,},599);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,3038,30,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv30
me.AddStackItem(18,1,3404,40,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 40
me.AddStackItem(1,13,55,10,{bForceBind=1,},1);--Thiên Hạ Tân Niên +54✭✭✭✭
me.AddStackItem(1,16,69,10,{bForceBind=1,},1);--Tân Niên Thiên Hạ Ấn 44✭✭✭✭
me.AddStackItem(1,18,1,5,{bForceBind=1,},1);--Quan Ấn Thượng Khanh (Vĩnh Viễn)



me.SetTask(self.CheckNhan_Event,self.Check_8999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end



function tbMocEvent_TangCuong:Qua_9999()
local Moc_Event = self.Moc10;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_9999);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
if (me.szAccount == "") then

me.AddStackItem(1,12,1992,10,{bForceBind=1,},1);
me.AddStackItem(2,1,4189,10,{bForceBind=1,},1);
me.AddStackItem(18,1,4010,1,{bForceBind=1,},7655);--Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.CheckNhan_Event,self.Check_9999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end



end


-- Môc quà 30K
function tbMocEvent_TangCuong:Qua_30K()
local Moc_Event = self.Moc11;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_30K);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.szAccount == "dieptumi") then
--Phần Thưởng--

--2/ Quà Cố định:
me.AddStackItem(18,1,4010,1,{bForceBind=1,},6235);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,4010,1,{bForceBind=1,},3999);--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,4010,1,{bForceBind=1,},999);--Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.CheckNhan_Event,self.Check_30K,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Phần Thưởng--
if (me.szAccount == "dieptumi13") then
--Phần Thưởng--
--1/ Quà tùy chọn:
me.AddItem(4,9,3073,10,2,16);--Đại Viễn Event_Mộc
me.AddItem(4,3,3073,10,3,16);--Đại Viễn Event_Mộc
me.AddItem(4,8,3073,10,1,16);--Đại Viễn Event_Mộc
me.AddItem(4,10,3073,10,5,16);--Đại Viễn Event_Mộc
me.AddItem(4,7,3073,10,4,16);--Đại Viễn Event_Mộc
me.AddItem(4,5,3073,10,3,16);--Đại Viễn Event_Mộc
me.AddItem(4,4,3073,10,1,16);--Đại Viễn Event_Mộc
me.AddItem(4,11,3073,10,5,16);--Đại Viễn Event_Mộc
me.AddItem(4,6,3073,10,4,16);--Đại Viễn Event_Mộc

me.AddItem(4,9,3010,10,1,16);--Nón Cấp 2- Nam - Kim
me.AddItem(4,3,3010,10,5,16);--Áo Cấp 2- Nam - Kim
me.AddItem(4,8,3010,10,4,16);--Lưng Cấp 2- Nam - Kim
me.AddItem(4,10,3010,10,2,16);--Tay Cấp 2- Nam - Kim
me.AddItem(4,7,3010,10,3,16);--Giày Cấp 2- Nam - Kim
me.AddItem(4,5,3010,10,5,16);--Liên Cấp 2- Nam - Kim
me.AddItem(4,4,3010,10,4,16);--Nhẫn Cấp 2- Nam - Kim
me.AddItem(4,11,3010,10,2,16);--Bội Cấp 2- Nam - Kim
me.AddItem(4,6,3010,10,3,16);--Phù Cấp 2- Nam - Kim

me.AddItem(4,9,3014,10,3,16);--Nón Cấp 2- Nam - Thủy
me.AddItem(4,3,3014,10,1,16);--Áo Cấp 2- Nam - Thủy
me.AddItem(4,8,3014,10,5,16);--Lưng Cấp 2- Nam - Thủy
me.AddItem(4,10,3014,10,4,16);--Tay Cấp 2- Nam - Thủy
me.AddItem(4,7,3014,10,2,16);--Giày Cấp 2- Nam - Thủy
me.AddItem(4,5,3014,10,1,16);--Liên Cấp 2- Nam - Thủy
me.AddItem(4,4,3014,10,5,16);--Nhẫn Cấp 2- Nam - Thủy
me.AddItem(4,11,3014,10,4,16);--Bội Cấp 2- Nam - Thủy
me.AddItem(4,6,3014,10,2,16);--Phù Cấp 2- Nam - Thủy

me.AddItem(2,1,4079,10,2,16);--Lv.8-Hiệu ứng Mộc Chùy Ngoại 10

--2/ Quà Cố định:
me.AddStackItem(5,23,37,5,{bForceBind=1,},1);--Phù Đồng Hành Lv.28
me.AddStackItem(5,20,37,5,{bForceBind=1,},1);--Áo Đồng Hành Lv.28
me.AddStackItem(5,22,37,5,{bForceBind=1,},1);--Tay Đồng Hành Lv.28
me.AddStackItem(5,21,37,5,{bForceBind=1,},1);--Nhẫn Đồng Hành Lv.28
me.AddStackItem(5,19,37,5,{bForceBind=1,},1);--Vũ Khí Đồng Hành Lv.28

--3/ Kỹ năng Giang hồ:
--me.AddFightSkill(1781,1); --Ngự Lôi Thần Kiếm Quyết
--me.AddStackItem(18,1,4011,1,{bForceBind=1,},8);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4019,1,{bForceBind=1,},1);--Diệt Thế Diễm Thiên Trảm Tăng +1 Đẳng cấp
--4/ Quà cho Acc phụ:
--me.AddStackItem(18,1,4036,1,nil,1); --Túi Quà Event Acc Phụ
me.SetTask(self.CheckNhan_Event,self.Check_30K,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tăng cường Mốc Event Phát Tài Phát Lộc <color=red> ["..Moc_Event.."]<color> !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end







end

function tbMocEvent_TangCuong:Qua_TriAn()
local Moc_Event = self.Moc11;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_TriAn);

if Diem_PhatTaiPhatLoc < Moc_Event then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Mốc Event Phát Tài Phát Lộc chưa đạt: "..Moc_Event.." không thể nhận quà!<color>"));
return 0;		
end
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


if (me.szAccount == "") then
--Phần Thưởng--

me.SetTask(self.CheckNhan_Event,self.Check_TriAn,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tri Ân Event Tân Niên 2025  !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end




end


function tbMocEvent_TangCuong:Qua_TriAn_DongGop()
local Moc_Event = self.Moc11;
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc); 
local CheckNhan = me.GetTask(self.CheckNhan_Event,self.Check_TriAnDongGop);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


if (me.szAccount == "") then
--Phần Thưởng--
--Tùy Chọn
--me.AddStackItem(1,12,1996,10,{bForceBind=1,},1);--Ngựa Hắc Long

me.SetTask(self.CheckNhan_Event,self.Check_TriAnDongGop,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tri Ân Huy Động Quỹ  !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end




end
