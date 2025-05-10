local tbNpc = Npc:GetClass("Shop_ST");
function tbNpc:OnDialog()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
{"<color=blue>Danh vọng Sát thần cấp 1", Dialog.OpenShop, Dialog, 219, 3},
{"<color=blue>Danh vọng Sát thần cấp 2", Dialog.OpenShop, Dialog, 220, 3},
{"<color=blue>Danh vọng Sát thần cấp 3_Trang bị", Dialog.OpenShop, Dialog, 221, 3},
{"<color=green>Danh vọng Sát thần cấp 3_Vũ khí", Dialog.OpenShop, Dialog, 222, 3},
{"<color=green>Danh vọng Sát thần cấp 3_Trang bị khác", Dialog.OpenShop, Dialog, 223, 3},
{"<color=lightcyan>Danh vọng Sát thần cấp 4_Trang bị", Dialog.OpenShop, Dialog, 224, 3},
{"<color=lightcyan>Danh vọng Sát thần cấp 4_Vũ khí", Dialog.OpenShop, Dialog, 225, 3},
{"<color=cyan>Danh vọng Sát thần cấp 4_Trang bị khác", Dialog.OpenShop, Dialog, 226, 3},
{"<color=cyan>Danh vọng Sát thần cấp 5_Trang bị", Dialog.OpenShop, Dialog, 227, 3},
{"<color=violet>Danh vọng Sát thần cấp 5_Trang bị khác", Dialog.OpenShop, Dialog, 228, 3},
{"<color=violet>Danh vọng Sát thần cấp 6_Trang bị", Dialog.OpenShop, Dialog, 229, 3},
{"<color=pink>Danh vọng Sát thần cấp 6_Trang bị khác", Dialog.OpenShop, Dialog, 230, 3},
{"<color=pink>Danh vọng Sát thần cấp 7_Trang bị", Dialog.OpenShop, Dialog, 231, 3},
{"<color=pink>Danh vọng Sát thần cấp 7_Trang bị khác", Dialog.OpenShop, Dialog, 232, 3},
{"<color=gold>Danh vọng Sát thần cấp 8_Trang bị", Dialog.OpenShop, Dialog, 233, 3},
{"<color=gold>Danh vọng Sát thần cấp 8_Vũ khí", Dialog.OpenShop, Dialog, 234, 3},
{"<color=yellow>Danh vọng Sát thần cấp 8_Trang bị khác", Dialog.OpenShop, Dialog, 235, 3},
{"<color=yellow>Danh vọng Sát thần cấp 9_Trang bị", Dialog.OpenShop, Dialog, 236, 3},
{"<color=yellow>Danh vọng Sát thần cấp 9_Trang bị khác", Dialog.OpenShop, Dialog, 237, 3},

{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
