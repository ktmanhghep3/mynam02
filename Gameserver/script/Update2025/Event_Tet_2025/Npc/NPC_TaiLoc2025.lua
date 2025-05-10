local tbNpc = Npc:GetClass("NPC_TaiLoc2025");

tbNpc.TG_DiemHiepNghiaTanNien = 4520; --Điểm Hiệp Nghĩa Tân Niên
tbNpc.ID_DiemHiepNghiaTanNien = 1;

tbNpc.TaskGroup_PhatTaiPhatLoc = 4518;	--Điểm Mốc: Phát Tài Phát Lộc
tbNpc.TaskID_PhatTaiPhatLoc = 1;
tbNpc.TaskID_PhatTaiPhatLoc_CheckNhanMoc7999 = 10; --Check Nhận Mốc Quà 7999
tbNpc.Moc1 = 799;
tbNpc.Moc2 = 899;
tbNpc.Moc3 = 999;
tbNpc.Moc4 = 2999;
tbNpc.Moc5 = 3999;
tbNpc.Moc6 = 5999;
tbNpc.Moc7 = 6999;
tbNpc.Moc8 = 7999;
tbNpc.Moc9 = 8999;
tbNpc.SoLuong_OHanhTrang = 10;

function tbNpc:OnDialog()
DoScript("\\script\\Update2025\\Event_Tet_2025\\Npc\\NPC_TaiLoc2025.lua");
DoScript("\\script\\Update2025\\Event_Tet_2025\\spacialcode\\Donate_NhanQua.lua");
DoScript("\\script\\Update2025\\Event_Tet_2025\\spacialcode\\MocEvent_TangCuong.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local Diem_HiepNghiaTanNien = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);
local szMsg = "<bclr=0,0,200><color=white>Sự kiện VIP: Tài Vận Hanh Thông:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Phát Tài Phát Lộc: <color=red>"..Diem_PhatTaiPhatLoc.."<color><color>\n"..
"<color=yellow>★ Điểm Hiệp Nghĩa Tân Niên: <color=red>"..Diem_HiepNghiaTanNien.."<color><color>\n"
local tbOpt = {};

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Tài Lộc đầu năm (Đóng góp)<color>",	SpecialEvent.Donate_NhanQuaSKTet2025.OnDialog, SpecialEvent.Donate_NhanQuaSKTet2025});
table.insert(tbOpt,{"<bclr=100,0,100><color=yellow>Chúc Phúc Tài Lộc",SpecialEvent.ChucPhuc_NhanTuiQuaPhatTaiPhatLoc.OnDialog, SpecialEvent.ChucPhuc_NhanTuiQuaPhatTaiPhatLoc});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nộp chữ: Phát Tài Phát Lộc",SpecialEvent.NopDiem_PhatTaiPhatLoc.OnDialog, SpecialEvent.NopDiem_PhatTaiPhatLoc});
table.insert(tbOpt,{"<bclr=200,100,200><color=white>Cửa hàng Đặc Quyền Phát Tài Phát Lộc", self.Menu_Cuahang, self});
table.insert(tbOpt,{"<bclr=100,0,100><color=yellow>Kích hoạt Kỹ năng: Diệt Thế Diễm Thiên Trảm", self.KichHoat_DiemThienTram, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Mốc Quà Event Thưởng Tăng Cường<color>",	SpecialEvent.MocEvent_TangCuong.OnDialog, SpecialEvent.MocEvent_TangCuong});
--table.insert(tbOpt,{"<color=yellow>Cửa hàng Event", Dialog.OpenShop, Dialog, 353, 3});
Dialog:Say(szMsg, tbOpt);
end

function tbNpc:Menu_Cuahang()
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local szMsg = "<color=yellow>★ Điểm Phát Tài Phát Lộc: <color=red>"..Diem_PhatTaiPhatLoc.."<color><color>\n"..
"<color=yellow>❂ Danh Sách Shop Được Khai Mở:<color>"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
	if Diem_PhatTaiPhatLoc >= self.Moc1 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc1.."", Dialog.OpenShop, Dialog, 344, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc2 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc2.."", Dialog.OpenShop, Dialog, 345, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc3 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc3.."", Dialog.OpenShop, Dialog, 346, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc4 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc4.."", Dialog.OpenShop, Dialog, 347, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc5 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc5.."", Dialog.OpenShop, Dialog, 348, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc6 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc6.."", Dialog.OpenShop, Dialog, 349, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc7 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc7.."", Dialog.OpenShop, Dialog, 350, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc8 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc8.."", Dialog.OpenShop, Dialog, 351, 3});
	else
	end

	if Diem_PhatTaiPhatLoc >= self.Moc9 then
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Mốc Phát Tài Phát Lộc: "..self.Moc9.."", Dialog.OpenShop, Dialog, 352, 3});
	else
	end



Dialog:Say(szMsg, tbOpt);
end


function tbNpc:KichHoat_DiemThienTram()
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local CheckNhan = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc_CheckNhanMoc7999);
	if me.CountFreeBagCell() < self.SoLuong_OHanhTrang then
	Dialog:Say(string.format("<color=yellow>Cần: <color=cyan>%s<color> ô trống trong hành trang<color>", self.SoLuong_OHanhTrang));
	return 0;
	end

	if Diem_PhatTaiPhatLoc < self.Moc8 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Ngươi chưa đạt Mốc Điểm Phát Tài Phát Lộc: 7999!<color>"));
		return; 
	end

	if CheckNhan ~= 0 then
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
	return 0;		
	end
--Phần Thưởng--
me.AddStackItem(18,1,4019,2,{bForceBind=1,},1);--Kích Hoạt: Diệt Thế Diễm Thiên Trảm Lv1

me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc_CheckNhanMoc7999,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red> Kích Hoạt: Diệt Thế Diễm Thiên Trảm Lv1<color> từ mốc Mốc Điểm Phát Tài Phát Lộc: 7999 !!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
