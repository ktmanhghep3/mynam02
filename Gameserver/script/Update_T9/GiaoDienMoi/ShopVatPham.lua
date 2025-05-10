local tbNpc = Npc:GetClass("ShopVatPham");

function tbNpc:OnDialog()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
--[[{"<color=yellow>Vật phẩm Hỗ trợ", Dialog.OpenShop, Dialog, 239, 3},
{"<color=yellow>Bí kiếp Môn phái", Dialog.OpenShop, Dialog, 240, 3},
{"<color=yellow>Chân Nguyên-Thánh Linh-Tín Vật", Dialog.OpenShop, Dialog, 241, 3},]]
{"<color=yellow>Nhận Túi Tân Thủ", self.AddTui, self};
{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
function tbNpc:AddTui()
me.AddStackItem(18,1,351,2,{bForceBind=1,},1);
end
