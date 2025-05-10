local tbNpc = Npc:GetClass("GiftCode_menu");

function tbNpc:OnDialog()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	

{"<bclr=0,0,200><color=white>Event Vân Thiên Lệnh<color>", SpecialEvent.VanThienLenh.OnDialog,SpecialEvent.VanThienLenh};
--{"<color=green>Kích hoạt GiftCode Tân Thủ<color>",SpecialEvent.Code_Thang7.OnDialog,SpecialEvent.Code_Thang7};
--{"<color=pink>Kích hoạt GiftCode Ngày<color>",SpecialEvent.CodeEvent_Ngay.OnDialog,SpecialEvent.CodeEvent_Ngay};
--{"<color=cyan>Kích hoạt Code Lễ 02/09<color>",SpecialEvent.Code_Le0209.OnDialog,SpecialEvent.Code_Le0209};

{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end



-----------
local tbNpc = Npc:GetClass("SuKien_menu");

function tbNpc:OnDialog()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	

{"<bclr=0,0,200><color=white>Nhận thời gian online<color>", SpecialEvent.NapThoiGian.OnDialog,SpecialEvent.NapThoiGian};
{"<bclr=0,0,200><color=white>Khuyến mãi Góp Quỹ<color>", SpecialEvent.KhuyenMai.OnDialog,SpecialEvent.KhuyenMai};

--{"<color=yellow>Event Trung Thu {New}",SpecialEvent.NPCEventTrungThu.OnDialog, SpecialEvent.NPCEventTrungThu},
--{"<bclr=0,0,200><color=white>Event Vân Thiên Lệnh<color>", SpecialEvent.VanThienLenh.OnDialog,SpecialEvent.VanThienLenh};
--{"<color=cyan>Kích hoạt Code Lễ 02/09<color>",SpecialEvent.Code_Le0209.OnDialog,SpecialEvent.Code_Le0209};
--{"<color=green>Kích hoạt GiftCode Tân Thủ<color>",SpecialEvent.Code_Thang7.OnDialog,SpecialEvent.Code_Thang7};

{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end


-----------
local tbNpc = Npc:GetClass("NangCap_menu");

function tbNpc:OnDialog()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
{"<color=gold>[Hệ Thống Đổi Điểm Danh Vọng Sát Thần PK]<color>", self.Actives, self},

{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end



function tbNpc:Actives()
Npc:GetClass("DanhVongST_Lv8"):OnDialog();
end
