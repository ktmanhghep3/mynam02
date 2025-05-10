local tbNpc = Npc:GetClass("NPC_SuKienTet_2024");

tbNpc.TaskGroup_GioiHan_Ngay = 4096;	--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbNpc.TaskID_GioiHan_Ngay = 1;			--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbNpc.TaskGroup_GioiHan_CaSuKien = 4097;	--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbNpc.TaskID_GioiHan_CaSuKien = 1;
tbNpc.TaskGroup_MocNopChu = 4099;	--Task Mốc Nộp Chữ Năm Mới Giáp Thìn 2024
tbNpc.TaskID_MocNopChu = 1;

function tbNpc:OnDialog()
local SoLanNgay= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_Ngay);
local SoLanSuKien= me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien);
local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu);
local szMsg = 
"<color=pink>Thông tin Sự kiện Tết 2024:\n"..
"<color=violet>- Bánh chưng đã dùng trong ngày: <color=cyan>"..SoLanNgay.."<color>/25\n"..
"<color=violet>- Bánh chưng đã dùng Cả Sự kiện: <color=cyan>"..SoLanSuKien.."<color>/500\n"..
"<color=yellow>- Phong chữ đã Nộp: <color=cyan>"..SoLanNopChu.."<color>\n"

local tbOpt = 
{

{"<color=green>Ghép Bánh Chưng",SpecialEvent.Ghep_BanhChung.OnDialog, SpecialEvent.Ghep_BanhChung,};
{"<color=green>Nhận thưởng Mốc Bánh Chưng",SpecialEvent.ThuongMoc_BanhChung.OnDialog, SpecialEvent.ThuongMoc_BanhChung,};


{"<color=yellow>Ghép Phong Chữ Sự Kiện Tết 2024",SpecialEvent.Ghep_ChuTet2024.OnDialog, SpecialEvent.Ghep_ChuTet2024,};
{"<color=red>Nộp Phong Chữ Sự Kiện Tết 2024",SpecialEvent.Nop_PhongChu.OnDialog, SpecialEvent.Nop_PhongChu,};
{"<color=yellow>Nhận thưởng Mốc Nộp Chữ",SpecialEvent.ThuongMoc_NopChu2024.OnDialog, SpecialEvent.ThuongMoc_NopChu2024,};
{"<color=yellow>Nhận thưởng Mốc Nộp Chữ Cao Cấp",SpecialEvent.ThuongMoc_NopChu2024.OnDialog_2, SpecialEvent.ThuongMoc_NopChu2024,};
{"<color=yellow>Chủ Nhân Thần Mã May Mắn 2024", self.BXHThanMa, self,};
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end


function tbNpc:BXHThanMa()
local szHistory = "\\script\\Update_T9\\Event_Tet2024\\npc\\Log_NguaVip.txt";
local nSo_HoaCuLong = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_HOACULONG);


	local tbFileOut = Lib:LoadTabFile(szHistory);
	local tbOpt = "<color=yellow>《DS Chủ Nhân 3 Thần Mã SK Tết 2024 》<color> \n\n";
	local MauChu = {'red','cyan','pink','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local ThanMa = tbRowOut["LoaiTrangBiGioiHan"] or "";
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local NgaySoHuu = tbRowOut["ThoiGianNhan"] or "";
        local Show = '<color=cyan>'..ThanMa..'<color> - <color=yellow>'..TenNhanVat..'<color> - <color=green> '..NgaySoHuu..'<color>\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);


end
