local tbTuiQuaComBack = Item:GetClass("TuiQua_ComBack");

tbTuiQuaComBack.TaskGroup_DongGop = 4208;		--Tích Lũy Donate nhận Điểm Đóng Góp
tbTuiQuaComBack.TaskID_DongGop = 1;				--Tích Lũy Donate nhận Điểm Đóng Góp
tbTuiQuaComBack.CheckNhan_DiemDongGop = 2;				--Check nhận điểm đóng gop (THAY ĐỔI TRỊ SỐ)
tbTuiQuaComBack.Add_SoDiem = 0000;							--ADD ĐIỂM (THAY ĐỔI TRỊ SỐ)

tbTuiQuaComBack.TaskGroup_SuDungQuaComBack = 4209;		--Task tính số lần nhận-sử dụng quà comeback
tbTuiQuaComBack.TaskID_Use_1 = 1;						--Nhận 1 lần Miễn phí

tbTuiQuaComBack.TaskID_Use_2 = 2;						--Túi Danh vọng Sát Thần-1000 điểm--Tối đa dùng 10 túi
tbTuiQuaComBack.TaskID_Use_3 = 3;						--Túi Lệnh Bài Sát Thần-100 cái--Tối đa dùng 25 túi
tbTuiQuaComBack.TaskID_Use_4 = 4;						--Túi Bí Ẩn Sát Thần-500 Cái--Tối đa dùng 10 túi
tbTuiQuaComBack.TaskID_Use_5 = 5;						--Túi Tuyệt Kỹ Trấn Phái Cấp 15--Tối đa dùng 2 túi
tbTuiQuaComBack.TaskID_Use_6 = 6;						--Túi Bí Kiếp Môn Phái Lv15--Tối đa dùng 2 túi
tbTuiQuaComBack.TaskID_Use_7 = 7;						--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng--Tối đa dùng 1 túi
tbTuiQuaComBack.TaskID_Use_8 = 8;						--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi

tbTuiQuaComBack.TaskID_Use_9 = 9;						--Túi Danh vọng Sát Thần-2000 điểm--Tối đa dùng 20 túi
tbTuiQuaComBack.TaskID_Use_10 = 10;						--Túi Lệnh Bài Sát Thần-200 cái--Tối đa dùng 50 túi
tbTuiQuaComBack.TaskID_Use_11 = 11;						--Túi Bí Ẩn Sát Thần-1000 Cái--Tối đa dùng 10 túi
tbTuiQuaComBack.TaskID_Use_12 = 12;						--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn--Tối đa 2
tbTuiQuaComBack.TaskID_Use_13 = 13;						--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn--Tối đa 2
tbTuiQuaComBack.TaskID_Use_14 = 14;						--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn--Tối đa 2
tbTuiQuaComBack.TaskID_Use_15 = 15;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
tbTuiQuaComBack.TaskID_Use_16 = 16;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
tbTuiQuaComBack.TaskID_Use_17 = 17;						--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
tbTuiQuaComBack.TaskID_Use_18 = 18;						--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa 1
tbTuiQuaComBack.TaskID_Use_19 = 19;						--Tiểu Sư Muội - Đồng hành 10 Kỹ năng--Tối đa 1


function tbTuiQuaComBack:OnUse()
DoScript("\\script\\Update2024\\ComeBack\\Item\\TuiQua_ComBack.lua");
local DiemTichLuyDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop);--Tích Lũy Donate nhận Điểm Đóng Góp

local TuiDanhVongSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_2);--Túi Danh vọng Sát Thần-1000 điểm--Tối đa dùng 10 túi
local TuiLenhBaiSatThan100_25 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_3);--Túi Lệnh Bài Sát Thần-100 cái--Tối đa dùng 25 túi
local TuiBiAnSatThan500_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_4);--Túi Bí Ẩn Sát Thần-500 Cái--Tối đa dùng 10 túi
local TuiTuyetKyTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_5);--Túi Tuyệt Kỹ Trấn Phái Cấp 15--Tối đa dùng 2 túi
local TuiBiKiepTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_6);--Túi Bí Kiếp Môn Phái Lv15--Tối đa dùng 2 túi
local TuiPet8free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_7);--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng--Tối đa dùng 1 túi
local TuiPet9free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_8);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi

local TuiDanhVongSatThan2000_20 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_9);--Túi Danh vọng Sát Thần-2000 điểm--Tối đa dùng 20 túi
local TuiLenhBaiSatThan200_50 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_10);--Túi Lệnh Bài Sát Thần-200 cái--Tối đa dùng 50 túi
local TuiBiAnSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_11);--Túi Bí Ẩn Sát Thần-1000 Cái--Tối đa dùng 10 túi
local TuiTuyetKyTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_12);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn--Tối đa 2
local TuiTuyetKyTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_13);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn--Tối đa 2
local TuiTuyetKyTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_14);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn--Tối đa 2
local TuiBiKiepTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_15);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
local TuiBiKiepTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_16);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
local TuiBiKiepTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_17);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
local TuiPet9_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_18);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa 1
local TuiPet10_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_19);--Thanh Sắc Kiếm - Đồng hành 10 Kỹ năng--Tối đa 1

local szMsg = "<color=red>Điểm Tích Lũy Đóng góp: "..DiemTichLuyDongGop.."\n<color>"..
"<color=cyan>Thông tin Sự kiện ComeBack Đã dùng:\n"..
"<color=green>1/Túi D.Vọng Sát Thần-1000 điểm: "..TuiDanhVongSatThan1000_10.."/10\n"..
"2/Túi Lệnh Bài Sát Thần-100 cái: "..TuiLenhBaiSatThan100_25.."/25\n"..
"3/Túi Bí Ẩn Sát Thần-500 Cái: "..TuiBiAnSatThan500_10.."/10\n"..
"4/Túi Tuyệt Kỹ Trấn Phái Lv 15: "..TuiTuyetKyTranPhai_lv15_2.."/2\n"..
"5/Túi Bí Kiếp Môn Phái Lv15: "..TuiBiKiepTranPhai_lv15_2.."/2\n"..
"6/Túi Đồng hành 8 Kỹ năng: "..TuiPet8free_1.."/1\n"..
"7/Túi Đồng hành 9 Kỹ năng: "..TuiPet9free_1.."/1\n<color>"..
"<color=yellow>8/Túi D.Vọng Sát Thần-2000 điểm: "..TuiDanhVongSatThan2000_20.."/20\n"..
"9/Túi Lệnh Bài Sát Thần-200 cái: "..TuiLenhBaiSatThan200_50.."/50\n"..
"10/Túi Bí Ẩn Sát Thần-1000 Cái: "..TuiBiAnSatThan1000_10.."/10\n"..
"11/Tuyệt Kỹ Trấn Phái Lv 18: "..TuiTuyetKyTranPhai_lv18_2.."/2\n"..
"12/Tuyệt Kỹ Trấn Phái Lv 19: "..TuiTuyetKyTranPhai_lv19_2.."/2\n"..
"13/Tuyệt Kỹ Trấn Phái Lv 20: "..TuiTuyetKyTranPhai_lv20_2.."/2\n"..
"14/Bí Kiếp Môn Phái Lv18: "..TuiBiKiepTranPhai_lv18_2.."/2\n"..
"15/Bí Kiếp Môn Phái Lv19: "..TuiBiKiepTranPhai_lv19_2.."/2\n"..
"16/Bí Kiếp Môn Phái Lv20: "..TuiBiKiepTranPhai_lv20_2.."/2\n"..
"17/Đồng hành 9 Kỹ năng: "..TuiPet9_1.."/1\n"..
"18/Đồng hành 10 Kỹ năng: "..TuiPet10_1.."/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			--Nhận Điểm Đóng Góp--
			if (me.szAccount == "kiemthest2") or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "")  or (me.szAccount == "") then
			table.insert(tbOpt,{"<color=yellow>Nhận Điểm Đóng Góp<color>", self.Nhan_DiemDongGop, self});
			end

			--Khu Vực tài khoản chỉ định ComeBack--
			if (me.szAccount == "kiemthest2") or (me.szAccount == "satthanpk7") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
			table.insert(tbOpt,{"<color=yellow>Hỗ trợ ComeBack<color>", self.Wellcome_ComeBack, self});
			end

			--table.insert(tbOpt,{"Nhận Gói Quà Hỗ Trợ Miễn Phí", self.PThuong_1, self});
			--table.insert(tbOpt,{"<color=cyan>Đổi Xu Thời Gian",SpecialEvent.DoiXuThoiGian.OnDialog, SpecialEvent.DoiXuThoiGian});
			--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Xu Thời Gian", Dialog.OpenShop, Dialog, 302, 3});
			table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Điểm Tích Lũy", Dialog.OpenShop, Dialog, 303, 10});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end

function tbTuiQuaComBack:Nhan_DiemDongGop()
local DiemTichLuyDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop);--Tích Lũy Donate nhận Điểm Đóng Góp
local CheckNhan = me.GetTask(self.TaskGroup_DongGop,self.CheckNhan_DiemDongGop);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end





--Phần Thưởng--
--local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_DongGop,self.TaskID_DongGop,DiemTichLuyDongGop + self.Add_SoDiem);





me.SetTask(self.TaskGroup_DongGop,self.CheckNhan_DiemDongGop,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();

local szHistory = "\\script\\FILE_LOG\\Log_NhanDiemDongGop.txt";


KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..self.Add_SoDiem.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận <color=cyan>"..self.Add_SoDiem.."<color> Điểm Đóng Góp Quỹ thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


function tbTuiQuaComBack:PThuong_1()
local CheckNhan = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_1);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddRepute(14,1,2000);	--Danh vọng Sát Thần

me.AddStackItem(18,1,3001,1,{bForceBind=1,},1000);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3338,1,{bForceBind=1,},5);--Trăng Tròn
me.AddStackItem(18,1,3004,2,{bForceBind=1,},300);--Ngôi Sao May Mắn
me.AddStackItem(18,1,3006,1,{bForceBind=1,},5000);--Bí Ẩn Sát Thần
for value_1 = 2,4 do
me.AddStackItem(18,1,3006,value_1,{bForceBind=1,},4500);--Chiến Tích Phù Văn-Hiệp Nghĩa Tửu-Thần Binh Phổ
end
me.AddStackItem(18,1,3027,5,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn
me.AddStackItem(18,1,3038,10,{bForceBind=1,},3);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv10
me.AddStackItem(18,1,3036,1,{bForceBind=1,},1);--Thanh Uyển - Đồng hành 7 Kỹ năng

--End--

me.SetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_1,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Quà Hỗ Trợ ComeBack, gồm:\n<color=cyan>1-Danh vọng Sát Thần\n2-Lệnh Bài Sát Thần PK\n3-Trăng Tròn\n4-Ngôi Sao May Mắn\n5-Bí Ẩn Sát Thần\n6-Chiến Tích Phù Văn\n7-Hiệp Nghĩa Tửu\n8-Thần Binh Phổ\n9-Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn\n10-Bí Kiếp Môn Phái Ngẫu Nhiên Lv10\n11-Thanh Uyển - Đồng hành 7 Kỹ năng<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQuaComBack:Wellcome_ComeBack()
DoScript("\\script\\Update2024\\ComeBack\\Item\\TuiQua_ComBack.lua");
local DiemTichLuyDongGop = me.GetTask(self.TaskGroup_DongGop,self.TaskID_DongGop);--Tích Lũy Donate nhận Điểm Đóng Góp

local TuiDanhVongSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_2);--Túi Danh vọng Sát Thần-1000 điểm--Tối đa dùng 10 túi
local TuiLenhBaiSatThan100_25 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_3);--Túi Lệnh Bài Sát Thần-100 cái--Tối đa dùng 25 túi
local TuiBiAnSatThan500_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_4);--Túi Bí Ẩn Sát Thần-500 Cái--Tối đa dùng 10 túi
local TuiTuyetKyTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_5);--Túi Tuyệt Kỹ Trấn Phái Cấp 15--Tối đa dùng 2 túi
local TuiBiKiepTranPhai_lv15_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_6);--Túi Bí Kiếp Môn Phái Lv15--Tối đa dùng 2 túi
local TuiPet8free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_7);--Túi Tử Sắc Kiếm - Đồng hành 8 Kỹ năng--Tối đa dùng 1 túi
local TuiPet9free_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_8);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa dùng 1 túi

local TuiDanhVongSatThan2000_20 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_9);--Túi Danh vọng Sát Thần-2000 điểm--Tối đa dùng 20 túi
local TuiLenhBaiSatThan200_50 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_10);--Túi Lệnh Bài Sát Thần-200 cái--Tối đa dùng 50 túi
local TuiBiAnSatThan1000_10 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_11);--Túi Bí Ẩn Sát Thần-1000 Cái--Tối đa dùng 10 túi
local TuiTuyetKyTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_12);--Tuyệt Kỹ Trấn Phái Cấp 18-Vĩnh Viễn--Tối đa 2
local TuiTuyetKyTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_13);--Tuyệt Kỹ Trấn Phái Cấp 19-Vĩnh Viễn--Tối đa 2
local TuiTuyetKyTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_14);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn--Tối đa 2
local TuiBiKiepTranPhai_lv18_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_15);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18--Tối đa 2
local TuiBiKiepTranPhai_lv19_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_16);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv19--Tối đa 2
local TuiBiKiepTranPhai_lv20_2 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_17);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20--Tối đa 2
local TuiPet9_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_18);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng--Tối đa 1
local TuiPet10_1 = me.GetTask(self.TaskGroup_SuDungQuaComBack,self.TaskID_Use_19);--Thanh Sắc Kiếm - Đồng hành 10 Kỹ năng--Tối đa 1

local szMsg = "<color=red>Điểm Tích Lũy Đóng góp: "..DiemTichLuyDongGop.."\n<color>"..
"<color=cyan>Thông tin Sự kiện ComeBack Đã dùng:\n"..
"<color=green>1/Túi D.Vọng Sát Thần-1000 điểm: "..TuiDanhVongSatThan1000_10.."/10\n"..
"2/Túi Lệnh Bài Sát Thần-100 cái: "..TuiLenhBaiSatThan100_25.."/25\n"..
"3/Túi Bí Ẩn Sát Thần-500 Cái: "..TuiBiAnSatThan500_10.."/10\n"..
"4/Túi Tuyệt Kỹ Trấn Phái Lv 15: "..TuiTuyetKyTranPhai_lv15_2.."/2\n"..
"5/Túi Bí Kiếp Môn Phái Lv15: "..TuiBiKiepTranPhai_lv15_2.."/2\n"..
"6/Túi Đồng hành 8 Kỹ năng: "..TuiPet8free_1.."/1\n"..
"7/Túi Đồng hành 9 Kỹ năng: "..TuiPet9free_1.."/1\n<color>"..
"<color=yellow>8/Túi D.Vọng Sát Thần-2000 điểm: "..TuiDanhVongSatThan2000_20.."/20\n"..
"9/Túi Lệnh Bài Sát Thần-200 cái: "..TuiLenhBaiSatThan200_50.."/50\n"..
"10/Túi Bí Ẩn Sát Thần-1000 Cái: "..TuiBiAnSatThan1000_10.."/10\n"..
"11/Tuyệt Kỹ Trấn Phái Lv 18: "..TuiTuyetKyTranPhai_lv18_2.."/2\n"..
"12/Tuyệt Kỹ Trấn Phái Lv 19: "..TuiTuyetKyTranPhai_lv19_2.."/2\n"..
"13/Tuyệt Kỹ Trấn Phái Lv 20: "..TuiTuyetKyTranPhai_lv20_2.."/2\n"..
"14/Bí Kiếp Môn Phái Lv18: "..TuiBiKiepTranPhai_lv18_2.."/2\n"..
"15/Bí Kiếp Môn Phái Lv19: "..TuiBiKiepTranPhai_lv19_2.."/2\n"..
"16/Bí Kiếp Môn Phái Lv20: "..TuiBiKiepTranPhai_lv20_2.."/2\n"..
"17/Đồng hành 9 Kỹ năng: "..TuiPet9_1.."/1\n"..
"18/Đồng hành 10 Kỹ năng: "..TuiPet10_1.."/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

			table.insert(tbOpt,{"Nhận Gói Quà Hỗ Trợ Miễn Phí", self.PThuong_1, self});
			table.insert(tbOpt,{"<color=cyan>Đổi Xu Thời Gian",SpecialEvent.DoiXuThoiGian.OnDialog, SpecialEvent.DoiXuThoiGian});
			table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Xu Thời Gian", Dialog.OpenShop, Dialog, 302, 3});
			Dialog:Say(szMsg, tbOpt);
end
