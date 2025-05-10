local tbNpc = Npc:GetClass("Npc_DuLongGiac");

--Thu thập Bảo vật Hoàn thành trong ngày
tbNpc.NhiemVuNgay = 4526;
tbNpc.ID_DiemSoNhiemVuHoanThanh = 4;

--Mật Lệnh Hoàn thành trong ngày
tbNpc.TaskGroup_DanhBoss = 4527;
tbNpc.CompletedTaskCountID_DanhBoss = 37;

--Điểm Du Long Giác:
tbNpc.TaskGroup_DuLong = 4528;
tbNpc.TaskID_DuLong = 1;

function tbNpc:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
  local nSoHoanThanh = me.GetTask(self.NhiemVuNgay, self.ID_DiemSoNhiemVuHoanThanh);
  local nSoNhiemVuHoanThanhDanhBoss = me.GetTask(self.TaskGroup_DanhBoss, self.CompletedTaskCountID_DanhBoss);
  local nDiemDuLong = me.GetTask(self.TaskGroup_DuLong, self.TaskID_DuLong);


local szMsg = "<bclr=0,0,200><color=white>Hoạt động Du Long Giác\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Du Long Giác: <color=red>"..nDiemDuLong.."<color><color>\n"..
"<color=yellow>★ Thu thập Bảo vật trong ngày: <color=red>"..nSoHoanThanh.."<color><color>\n"..
"<color=yellow>★ Mật Lệnh Hoàn thành trong ngày: <color=red>"..nSoNhiemVuHoanThanhDanhBoss.."<color><color>\n"
local tbOpt = {};

	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Mật Lệnh Giang Hồ", SpecialEvent.NVNgay_DanhBoss.OnDialog,SpecialEvent.NVNgay_DanhBoss});
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Thu Thập Bảo Vật", SpecialEvent.NVNgay_ThuThapVatPham.OnDialog,SpecialEvent.NVNgay_ThuThapVatPham});
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Đổi Ngoại Trang Mới", SpecialEvent.DoiNgoaiTrang_Ao.OnDialog, SpecialEvent.DoiNgoaiTrang_Ao});
	table.insert(tbOpt, {"<bclr=0,0,200><color=white>Đổi Vũ khí Võ lâm Cao thủ", SpecialEvent.ChangeVuKhiBoss.OnDialog, SpecialEvent.ChangeVuKhiBoss})
Dialog:Say(szMsg, tbOpt);
end




