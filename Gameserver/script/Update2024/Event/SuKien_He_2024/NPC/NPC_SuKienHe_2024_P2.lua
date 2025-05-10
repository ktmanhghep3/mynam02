local tbNpc = Npc:GetClass("NPC_SuKienHe_2024_P2");

tbNpc.TaskGroup_Moc_HopQuaMuaHa = 4210;			--Task Check Mốc Hộp Quà Mùa Hạ
tbNpc.TaskID_Moc_HopQuaMuaHa = 1;				--Task Check Mốc Hộp Quà Mùa Hạ



function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\Event\\SuKien_He_2024\\NPC\\NPC_SuKienHe_2024_P2.lua");
DoScript("\\script\\Update2024\\Event\\SuKien_He_2024\\SpecialEvent\\NhanThuongBXHThanKiem.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Moc_HopQuaMuaHa = me.GetTask(self.TaskGroup_Moc_HopQuaMuaHa,self.TaskID_Moc_HopQuaMuaHa);

local szMsg = "<color=cyan>Thông tin Sự kiện Hè 2024:\n"..
"<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>❂ Hộp Quà Mùa Hạ đã dùng: <color=pink>"..Moc_HopQuaMuaHa.."<color>\n"

local tbOpt = 
{


{"<color=cyan>Đổi Hộp Quà Mùa Hạ",SpecialEvent.Doi_HopQuaMuaHa.OnDialog, SpecialEvent.Doi_HopQuaMuaHa,};
{"<bclr=0,0,200><color=white>Cửa Hàng Trang Bị VIP", Dialog.OpenShop, Dialog, 301, 3},
{"<bclr=0,0,200><color=cyan>Đổi Mảnh Phi Phong",SpecialEvent.DoiManhFF.OnDialog_1, SpecialEvent.DoiManhFF,};
{"<color=yellow>Nhận thưởng Mốc Hộp Quà May Mắn",SpecialEvent.NhanThuongMocEvent_HopQuaMayMan.OnDialog, SpecialEvent.NhanThuongMocEvent_HopQuaMayMan,};
{"<bclr=0,0,200><color=cyan>Ghép: Thần Kiếm Ngự Lôi Chân Quyết",SpecialEvent.Ghep_TuyetKy_NguLoiThanKiem.OnDialog, SpecialEvent.Ghep_TuyetKy_NguLoiThanKiem,};

{"<bclr=0,0,200><color=white>BXH Thần Kiếm Ngự Lôi Chân Quyết", self.BXH_ThanKiem, self,};
{"<bclr=0,0,200><color=red>Nhận thưởng BXH Ngự Lôi Chân Quyết",SpecialEvent.NhanThuongBXHThanKiem.OnDialog, SpecialEvent.NhanThuongBXHThanKiem,};
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:BXH_ThanKiem()
local szHistory = "\\script\\FILE_LOG\\Log_ThanKiemNguLoiChanQuyet.txt";


	local tbFileOut = Lib:LoadTabFile(szHistory);
	local tbOpt = "<bclr=0,0,200><color=cyan>              《BXH 5 Thần Kiếm Quyết》<color> \n\n";
	local MauChu = {'red','cyan','pink','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local NgaySoHuu = tbRowOut["ThoiGianNhan"] or "";
        local Show = '<color=yellow>'..TenNhanVat..'<color> - <color=green> '..NgaySoHuu..'<color>\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);


end
