local tbNpc = Npc:GetClass("NPC_SuKien");

tbNpc.TaskGroup_Moc_LongDenThanhDong = 4231;		--Mốc Lồng Đèn Thanh Đồng
tbNpc.TaskID_Moc_LongDenThanhDong = 1;				--Mốc Lồng Đèn Thanh Đồng

tbNpc.TaskGroup_Moc_LongDenHoangKim = 4232;			--Mốc Lồng Đèn Hoàng Kim
tbNpc.TaskID_Moc_LongDenHoangKim = 1;				--Mốc Lồng Đèn Hoàng Kim


function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\Event_TrungThu2024\\NPC\\NPC_SuKien.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Moc_LongDenThanhDong = me.GetTask(self.TaskGroup_Moc_LongDenThanhDong,self.TaskID_Moc_LongDenThanhDong);
local Moc_LongDenHoangKim = me.GetTask(self.TaskGroup_Moc_LongDenHoangKim,self.TaskID_Moc_LongDenHoangKim);
local szMsg = "<color=cyan>Thông tin Sự kiện:\n"..
"<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>❂ Lồng Đèn Thanh Đồng: <color=pink>"..Moc_LongDenThanhDong.."<color>/200\n"..
"<color=yellow>❂ Mốc Lồng Đèn Hoàng Kim: <color=pink>"..Moc_LongDenHoangKim.."<color>\n"
local tbOpt = {};

table.insert(tbOpt,{"<color=green>Hướng Dẫn Event", self.Event_He_Support, self});
table.insert(tbOpt,{"<color=green>Shop Nguyên Liệu Event", Dialog.OpenShop, Dialog, 319, 3});

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Ghép Lồng Đèn",SpecialEvent.EventTrungThu2024_GhepLongDen.OnDialog, SpecialEvent.EventTrungThu2024_GhepLongDen});

table.insert(tbOpt,{"<color=yellow>Mở Shop Đặc Quyền Mốc Hoàng Kim", self.MenuShop, self});
table.insert(tbOpt,{"<color=yellow>N.thưởng Lồng Đèn Hoàng Kim 5000", self.MocHK_5000, self});
table.insert(tbOpt,{"<color=cyan>N.thưởng Lồng Đèn Thanh Đồng",SpecialEvent.NhanThuong_MocLongDenThanhDong.OnDialog, SpecialEvent.NhanThuong_MocLongDenThanhDong});
table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>Đổi Tiền Sự Kiện",SpecialEvent.DoiTienSuKien.OnDialog, SpecialEvent.DoiTienSuKien});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>T.Bị Đại Viễn Đổi Rương",SpecialEvent.DoiTrangBi_VoCucDaiVien.OnDialog, SpecialEvent.DoiTrangBi_VoCucDaiVien});

Dialog:Say(szMsg, tbOpt);
end

function tbNpc:MocHK_5000()
DoScript("\\script\\Update2024\\Event_TrungThu2024\\NPC\\NPC_SuKien.lua");

local szMsg = 
"Mốc này cho phép nhận thêm quà cho 1 Acc phụ khi Acc chính đủ 5000 điểm yêu cầu.\n"..
"<color=yellow>❂ Acc chính: Tùy chọn 2 món Trang bị Đại Viễn.\n"..
"<color=yellow>❂ Acc phụ:\n"..
"- Nhận 4000 điểm Mốc tích lũy Hoàng Kim.\n"..
"- 2000 Tiền Xu Sự Kiện.\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

--Nhận Thưởng Acc chính Mốc 5000
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Acc chính Mốc 5000<color>", self.NhanThuong_AccChinh, self});
end

--Nhận Thưởng Acc Phụ
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Acc Phụ<color>", self.NhanThuong_Phu, self});
end


table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

function tbNpc:MenuShop()
local Moc_LongDenHoangKim = me.GetTask(self.TaskGroup_Moc_LongDenHoangKim,self.TaskID_Moc_LongDenHoangKim);
local szMsg = "<color=yellow>❂ Mốc Lồng Đèn Hoàng Kim: <color=pink>"..Moc_LongDenHoangKim.."<color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
	if Moc_LongDenHoangKim >= 150 then
	table.insert(tbOpt,{"<color=blue>Mở Shop Ngoại Trang Nón VIP 1", Dialog.OpenShop, Dialog, 304, 3});
	else
	end

	if Moc_LongDenHoangKim >= 300 then
	table.insert(tbOpt,{"<color=blue>Mở Shop Ngoại Trang Áo VIP 1", Dialog.OpenShop, Dialog, 305, 3});
	else
	end

	if Moc_LongDenHoangKim >= 400 then
	table.insert(tbOpt,{"<color=blue>Mở Shop Thần Mã VIP 1", Dialog.OpenShop, Dialog, 306, 3});
	else
	end

	if Moc_LongDenHoangKim >= 600 then
	table.insert(tbOpt,{"<color=green>Mở Shop Ngoại Trang Nón VIP 2", Dialog.OpenShop, Dialog, 307, 3});
	else
	end

	if Moc_LongDenHoangKim >= 700 then
	table.insert(tbOpt,{"<color=green>Mở Shop Ngoại Trang Áo VIP 2", Dialog.OpenShop, Dialog, 308, 3});
	else
	end

	if Moc_LongDenHoangKim >= 1000 then
	table.insert(tbOpt,{"<color=green>Mở Shop Thần Mã VIP 2", Dialog.OpenShop, Dialog, 309, 3});
	else
	end

	if Moc_LongDenHoangKim >= 1200 then
	table.insert(tbOpt,{"<color=cyan>Mở Shop Ngoại Trang Nón VIP 3", Dialog.OpenShop, Dialog, 310, 3});
	else
	end

	if Moc_LongDenHoangKim >= 1500 then
	table.insert(tbOpt,{"<color=cyan>Mở Shop Ngoại Trang Áo VIP 3", Dialog.OpenShop, Dialog, 311, 3});
	else
	end

	if Moc_LongDenHoangKim >= 1800 then
	table.insert(tbOpt,{"<color=cyan>Mở Shop Thần Mã VIP 3", Dialog.OpenShop, Dialog, 312, 3});
	else
	end

	if Moc_LongDenHoangKim >= 2400 then
	table.insert(tbOpt,{"<color=pink>Mở Shop Ngoại Trang Nón VIP 4", Dialog.OpenShop, Dialog, 313, 3});
	else
	end

	if Moc_LongDenHoangKim >= 2700 then
	table.insert(tbOpt,{"<color=pink>Mở Shop Ngoại Trang Áo VIP 4", Dialog.OpenShop, Dialog, 314, 3});
	else
	end

	if Moc_LongDenHoangKim >= 3000 then
	table.insert(tbOpt,{"<color=pink>Mở Shop Thần Mã VIP 4", Dialog.OpenShop, Dialog, 315, 3});
	else
	end

	if Moc_LongDenHoangKim >= 3600 then
	table.insert(tbOpt,{"<color=yellow>Mở Shop Ngoại Trang Nón VIP 5", Dialog.OpenShop, Dialog, 316, 3});
	else
	end

	if Moc_LongDenHoangKim >= 3900 then
	table.insert(tbOpt,{"<color=yellow>Mở Shop Ngoại Trang Áo VIP 5", Dialog.OpenShop, Dialog, 317, 3});
	else
	end

	if Moc_LongDenHoangKim >= 4200 then
	table.insert(tbOpt,{"<color=yellow>Mở Shop Thần Mã VIP 5", Dialog.OpenShop, Dialog, 318, 3});
	else
	end

	if Moc_LongDenHoangKim >= 4500 then
	table.insert(tbOpt,{"<color=yellow>Mở Shop VIP Thương Phong", Dialog.OpenShop, Dialog, 320, 3});
	else
	end

Dialog:Say(szMsg, tbOpt);
end




function tbNpc:Event_He_Support()
local szMsg = [[
<color=green>
	❂ Event Hè  - Miễn phí - Lồng Đèn Thanh Đồng:
	Nguyên Liệu/Tỷ lệ ghép 1:
	Khung Lồng Đèn - Giấy Kiếng Thanh Đồng/50 - 1
<color=yellow>
	❂ Event - Có phí - Lồng Đèn Hoàng Kim:
	Nguyên Liệu/Tỷ lệ ghép 1:
	Khung Lồng Đèn - Giấy Kiếng Hoàng Kim/10 - 1
<color=cyan>
	❂ Nguồn gốc Nguyên liệu:
	1/Khung Lồng Đèn:
	Train map 115:
	-Nguyệt Nha Tuyền
	-Lương Sơn Bạc
	-Tàn Tích Dạ Lang
	-Đào Hoa Nguyên
	2/Giấy Kiếng Thanh Đồng:
	Mua = Thẻ Tân/Cao Thủ trong Shop Sự Kiện
	3/Giấy Kiếng Hoàng Kim:
	Mua = Lục Bảo trong Shop Sự Kiện
	]]
Dialog:Say(szMsg);
end

tbNpc.TaskGroup_NhanQua5000 = 4235;		--Task nhận
tbNpc.TaskID_NhanQua5000 = 1;			--Task nhận

function tbNpc:NhanThuong_AccChinh()
local CheckNhan = me.GetTask(self.TaskGroup_NhanQua5000,self.TaskID_NhanQua5000);
local nSoVP = self.SuKien_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(4,11,3029,10,{bForceBind=1,},1);--Bội Cấp 3- Nam - Thổ
me.AddStackItem(4,6,3029,10,{bForceBind=1,},1);--Phù Cấp 3- Nữ - Thổ



me.SetTask(self.TaskGroup_NhanQua5000,self.TaskID_NhanQua5000,1);--Task Tính lần đã nhận

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> Mốc Trung Thu 5000<color> Tùy chọn 3 Trang bị Vô Cực - Đại Viễn.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNpc:NhanThuong_Phu()
local CheckNhan = me.GetTask(self.TaskGroup_NhanQua5000,self.TaskID_NhanQua5000);
local nSoVP = self.SuKien_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
local SoCanAdd = 3500;
local Moc_LongDenHoangKim = me.GetTask(self.TaskGroup_Moc_LongDenHoangKim,self.TaskID_Moc_LongDenHoangKim);
me.SetTask(self.TaskGroup_Moc_LongDenHoangKim, self.TaskID_Moc_LongDenHoangKim, Moc_LongDenHoangKim + SoCanAdd);
me.AddStackItem(18,1,3929,1,{bForceBind=1,},2000);--Tiền Sự Kiện

me.SetTask(self.TaskGroup_NhanQua5000,self.TaskID_NhanQua5000,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> Mốc Trung Thu 5000<color> Dành cho Acc phụ.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
