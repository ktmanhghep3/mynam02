local tbNpc = Npc:GetClass("SuKien_DongGopNhanQua");

tbNpc.TaskGroup_Open = 4236;		--Task Nhận
tbNpc.TaskID_Open_Pay1 = 1;			--Task Nhận Rương 1
tbNpc.TaskID_Open_Pay2 = 2;			--Task Nhận Rương 2
tbNpc.TaskID_Open_Pay3 = 3;			--Task Nhận Rương 3
tbNpc.TaskID_Open_Pay4 = 4;			--Task Nhận Rương 4
tbNpc.TaskID_Open_Pay5 = 5;			--Task Nhận Rương 5

function tbNpc:OnDialog()
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\npc\\SuKien_DongGopNhanQua.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local szMsg = "<color=cyan>Thông tin Sự kiện:\n"..
"<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"
local tbOpt = {};

--table.insert(tbOpt,{"<color=green>Hướng Dẫn Event", self.Event_He_Support, self});
table.insert(tbOpt,{"<color=yellow>Shop Tiền Góp Quỹ", Dialog.OpenShop, Dialog, 321, 3});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Tiền Góp Quỹ<color>",	SpecialEvent.Nhan_TienGopQuy.OnDialog, SpecialEvent.Nhan_TienGopQuy});

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
