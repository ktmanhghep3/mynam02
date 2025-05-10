local tbNpc = Npc:GetClass("TayLuyenTrangBi_MenuNPC");



function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\TayLuyenTrangBi\\TayLuyenTrangBi_MenuNPC.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<color=cyan>Thông tin:\n"..
"<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"


local tbOpt = 
{

--{"<bclr=0,0,200><color=white>Dưỡng Thành Vũ khí Thương Phong", self.CheckPermission, self, {me.OpenEnhance, Item.ENHANCE_MODE_REFINE, Item.BIND_MONEY}},
{"<bclr=0,0,200><color=white>Tẩy luyện Vũ Khí Phi Tuyết",SpecialEvent.TayLuyenVuKhi_PhiTuyet.OnDialog, SpecialEvent.TayLuyenVuKhi_PhiTuyet,};
{"<bclr=0,0,200><color=cyan>Tẩy luyện Vũ Khí Thanh Hạ",SpecialEvent.TayLuyenVuKhi.OnDialog, SpecialEvent.TayLuyenVuKhi,};
{"<bclr=0,0,200><color=cyan>Tẩy luyện Trang bị Vô Cực-Trung Châu",SpecialEvent.TayLuyenTrungChau.OnDialog, SpecialEvent.TayLuyenTrungChau,};
{"<bclr=0,0,200><color=white>Tẩy Luyện Trang bị Vô Cực-Đại Viễn",SpecialEvent.TayLuyen_DaiVien.OnDialog, SpecialEvent.TayLuyen_DaiVien,};
{"<bclr=0,0,200><color=white>Thần Kiếm Ngự Lôi Chân Quyết",SpecialEvent.NangCap_NguLoiThanKiem.OnDialog, SpecialEvent.NangCap_NguLoiThanKiem,};
--{"<bclr=0,0,200><color=white>Dưỡng Thành Vũ khí Thương Phong",SpecialEvent.TayLuyen_VuKhiThuongPhong.OnDialog, SpecialEvent.TayLuyen_VuKhiThuongPhong,};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:CheckPermission(tbOption)
	if me.IsAccountLock() ~= 0 then
		Dialog:Say("Tài Khoản của bạn đang ở trạng thái khóa bảo vệ,nên không thực hiện thao tác được");
		return;
	end
	Lib:CallBack(tbOption);
end
