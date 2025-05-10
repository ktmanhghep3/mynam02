local tbNpc = Npc:GetClass("NPC_SuKienHe_2024");

tbNpc.TaskGroup_Moc_TraThanhSam = 4202;		--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm
tbNpc.TaskID_Moc_TraThanhSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm

tbNpc.TaskGroup_Moc_TraHongSam = 4203;		--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm
tbNpc.TaskID_Moc_TraHongSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Hồng Sâm

tbNpc.TaskGroup_Moc_TraHoangSam = 4204;		--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm
tbNpc.TaskID_Moc_TraHoangSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Hoàng Sâm



function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\Event\\SuKien_He_2024\\NPC\\NPC_SuKienHe_2024.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Moc_TraThanhSam = me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TaskID_Moc_TraThanhSam);
local Moc_TraHongSam = me.GetTask(self.TaskGroup_Moc_TraHongSam,self.TaskID_Moc_TraHongSam);
local Moc_TraHoangSam = me.GetTask(self.TaskGroup_Moc_TraHoangSam,self.TaskID_Moc_TraHoangSam);
local szMsg = "<color=cyan>Thông tin Sự kiện Hè 2024:\n"..
"<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>❂ Mốc Trà Thanh Sâm: <color=pink>"..Moc_TraThanhSam.."<color>/500\n"..
"<color=yellow>❂ Mốc Trà Hồng Sâm: <color=pink>"..Moc_TraHongSam.."<color>/525\n"..
"<color=yellow>❂ Mốc Trà Hoàng Sâm: <color=pink>"..Moc_TraHoangSam.."<color>/300\n"

local tbOpt = 
{

{"<color=blue>Hướng Dẫn Event", self.Event_He_Support, self,};
{"<bclr=0,0,200><color=white>Shop Sự Kiện", Dialog.OpenShop, Dialog, 298, 3},
{"<bclr=0,0,200><color=white>Shop Vũ Khí Thanh Hạ", Dialog.OpenShop, Dialog, 299, 3},
{"<bclr=0,0,200><color=white>Shop Ngoại Trang (Event Hè 2024)", Dialog.OpenShop, Dialog, 300, 3},
{"<color=cyan>Ghép Trà",SpecialEvent.Ghep_Tra.OnDialog, SpecialEvent.Ghep_Tra,};
{"<color=green>Nhận thưởng Mốc Trà Thanh Sâm",SpecialEvent.ThuongMoc_TraThanhSam.OnDialog, SpecialEvent.ThuongMoc_TraThanhSam,};
{"<color=pink>Nhận thưởng Mốc Trà Hồng Sâm 1",SpecialEvent.ThuongMoc_TraHongSam.OnDialog, SpecialEvent.ThuongMoc_TraHongSam,};
{"<color=pink>Nhận thưởng Mốc Trà Hồng Sâm 2",SpecialEvent.ThuongMoc_TraHongSam.OnDialog_2, SpecialEvent.ThuongMoc_TraHongSam,};
{"<color=yellow>Nhận thưởng Mốc Trà Hoàng Sâm",SpecialEvent.ThuongMoc_TraHoangSam.OnDialog, SpecialEvent.ThuongMoc_TraHoangSam,};
{"<color=cyan>Đổi Nước Trà",SpecialEvent.DoiNuocTra.OnDialog, SpecialEvent.DoiNuocTra,};


{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:Event_He_Support()
local szMsg = [[
<color=green>
	❂ Event 1  - Trà Thanh Sâm:
	(Kiến Nghị Tân Thủ)
	Nguyên Liệu/Tỷ lệ=1 Trà Thanh Sâm:
	Nước Trà - Thanh Sâm/500 - 250
<color=pink>
	❂ Event 2  - Trà Hồng Sâm:
	(Kiến Nghị Tân Thủ)
	Nguyên Liệu/Tỷ lệ=1 Trà Hồng Sâm:
	Nước Trà - Hồng Sâm/50 - 15
<color=yellow>
	❂ Event 3  - Trà Hoàng Sâm:
	Nguyên Liệu/Tỷ lệ=1 Trà Hoàng Sâm:
	Nước Trà - Hoàng Sâm/50 - 20
<color=cyan>
	❂ Nguồn gốc Vật phẩm:
	- Nước Trà: Train map 115: Lương Sơn Bạc
	- Thanh Sâm: Mua = Tiền Xu
	- Hồng Sâm: Mua = 1 Ngôi Sao May Mắn
	- Hoàng Sâm: Mua = 1 Ngôi Sao May Mắn
	]]
Dialog:Say(szMsg);
end
