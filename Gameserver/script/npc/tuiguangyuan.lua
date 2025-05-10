local tbTuiGuangYuan = Npc:GetClass("tuiguangyuan");

tbTuiGuangYuan.TaskGroup_QuaCoPhongHa = 4201;		--Task QUÀ HỖ TRỢ CỔ PHONG HÀ
tbTuiGuangYuan.TaskID_QuaCoPhongHa = 12;				--THAY ĐỔI TRỊ SỐ

tbTuiGuangYuan.TaskGroup_QuyDoiTG = 4522;		--Check quy đổi 6 skill thiên gia sang 1 skill
tbTuiGuangYuan.TaskID_QuyDoiTG = 1;			--Check quy đổi 6 skill thiên gia sang 1 skill
tbTuiGuangYuan.TaskID_QuyDoiTK = 2;			--Check quy đổi 7 skill thất kiếm sang 1 skill

tbTuiGuangYuan.SkillTG_Kiem	=	1441;
tbTuiGuangYuan.SkillTG_Thuong	=	1442;
tbTuiGuangYuan.SkillTG_Chuy	=	1443;
tbTuiGuangYuan.SkillTG_Dao	=	1444;
tbTuiGuangYuan.SkillTG_Bong	=	1445;
tbTuiGuangYuan.SkillTG_Tien	=	1446;

tbTuiGuangYuan.DuLongKiem = 1771;
tbTuiGuangYuan.ThanhCanKiem = 1772;
tbTuiGuangYuan.MacVanKiem = 1773;
tbTuiGuangYuan.NhatNguyetKiem = 1774
tbTuiGuangYuan.CanhTinhKiem = 1775;
tbTuiGuangYuan.ThienBocKiem = 1776;
tbTuiGuangYuan.XaThanKiem = 1777;

function tbTuiGuangYuan:OnDialog()
DoScript("\\script\\npc\\tuiguangyuan.lua");
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanTrangBi.lua");
DoScript("\\script\\Update2024\\TrangBiMoi_VoCuc\\speccode\\Donate_NhanDiemThuong.lua");
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\SuKien_GiaTangSucManh.lua");
local szMsg = "Trông ngươi rất quen.\nTa có thể hỗ trợ gì cho ngươi?";
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Quy Đổi Thiên Gia<color>", self.QuyDoi_ThienGia, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Quy Đổi Thất Kiếm<color>", self.QuyDoi_ThatKiem, self});


table.insert(tbOpt,{"<bclr=0,0,200><color=white>Góp Quỹ Duy Trì Nhận Sự Kiện Gia Tăng Sức Mạnh<color>",	SpecialEvent.SuKien_GiaTangSucManh.OnDialog, SpecialEvent.SuKien_GiaTangSucManh});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Đổi Trang Bị Vô Cực - Sơ Thành<color>", self.DoiTrangBiVoCuc, self});
--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Đóng Góp Nhận Điểm Thưởng đổi Quà",	SpecialEvent.Donate_NhanDiemThuong.OnDialog,SpecialEvent.Donate_NhanDiemThuong});

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Đổi Trang bị Nhận: Rương Sự Kiện",SpecialEvent.DoiTrangBi_RuongSuKien.OnDialog, SpecialEvent.DoiTrangBi_RuongSuKien});
--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Đóng Góp Nhận Ngẫu Nhiên Trang bị Vô Cực Sơ Thành",	SpecialEvent.Donate_NhanTrangBi.OnDialog,SpecialEvent.Donate_NhanTrangBi});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Thưởng Giải PK Tuần<color>", SpecialEvent.NhanThuong_PKTuan.NhanThuong,SpecialEvent.NhanThuong_PKTuan});
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

function tbTuiGuangYuan:DoiTrangBiVoCuc()


local tbNpc = Npc:GetClass("DoiTrangBiVoCuc");
tbNpc:OnDialog_1()

end

function tbTuiGuangYuan:QuyDoi_ThienGia()
local CheckNhan = me.GetTask(self.TaskGroup_QuyDoiTG,self.TaskID_QuyDoiTG);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chỉ quy đổi 1 lần duy nhất!<color>"));
return 0;		
end
--Phần Thưởng--
	local Skill_Thuong = me.GetSkillLevel(self.SkillTG_Thuong);
	local Skill_Chuy = me.GetSkillLevel(self.SkillTG_Chuy);
	local Skill_Dao = me.GetSkillLevel(self.SkillTG_Dao);
	local Skill_Bong = me.GetSkillLevel(self.SkillTG_Bong);
	local Skill_Tien = me.GetSkillLevel(self.SkillTG_Tien);
	local Skill_Kiem = me.GetSkillLevel(self.SkillTG_Kiem);

	local Total_ThienGia = (Skill_Thuong+Skill_Chuy+Skill_Dao+Skill_Bong+Skill_Tien+Skill_Kiem)/6

	me.AddFightSkill(1748,Total_ThienGia)--Thiên Gia

	for value = 1441,1446 do
	me.DelFightSkill(value);--All 6
	end
me.SetTask(self.TaskGroup_QuyDoiTG,self.TaskID_QuyDoiTG,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Quy đổi thành công Thiên Gia Đẳng cấp: "..Total_ThienGia.." !<color>"));
end

function tbTuiGuangYuan:QuyDoi_ThatKiem()
local CheckNhan = me.GetTask(self.TaskGroup_QuyDoiTG,self.TaskID_QuyDoiTK);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chỉ quy đổi 1 lần duy nhất!<color>"));
return 0;		
end
--Phần Thưởng--
local nDuLongKiem = me.GetSkillLevel(self.DuLongKiem);
local nThanhCanKiem = me.GetSkillLevel(self.ThanhCanKiem);
local nMacVanKiem = me.GetSkillLevel(self.MacVanKiem);
local nNhatNguyetKiem = me.GetSkillLevel(self.NhatNguyetKiem);
local nCanhTinhKiem = me.GetSkillLevel(self.CanhTinhKiem);
local nThienBocKiem = me.GetSkillLevel(self.ThienBocKiem);
local nXaThanKiem = me.GetSkillLevel(self.XaThanKiem);

	local Total_ThatKiem = (nDuLongKiem+nThanhCanKiem+nMacVanKiem+nNhatNguyetKiem+nCanhTinhKiem+nThienBocKiem+nXaThanKiem)/7

	me.AddFightSkill(1756,Total_ThatKiem)--Thất Kiếm

	for value = 1771,1777 do
	me.DelFightSkill(value);--All 7
	end
me.SetTask(self.TaskGroup_QuyDoiTG,self.TaskID_QuyDoiTK,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Quy đổi thành công Thất Kiếm Đẳng cấp: "..Total_ThatKiem.." !<color>"));
end
