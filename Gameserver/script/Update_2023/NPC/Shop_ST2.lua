local tbNpc = Npc:GetClass("Shop_ST2");

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

function tbNpc:OnDialog()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
{"<color=cyan>Vật phẩm Hỗ trợ", Dialog.OpenShop, Dialog, 284, 3},
{"<color=cyan>Bí kiếp Môn phái", Dialog.OpenShop, Dialog, 285, 3},
{"<color=cyan>Chân Nguyên-Thánh Linh-Tín Vật", Dialog.OpenShop, Dialog, 286, 3},

--[[{"<color=pink>Tần Lăng-Vũ khí hệ Kim", Dialog.OpenShop, Dialog, 156, 1},
{"<color=pink>Tần Lăng-Vũ khí hệ Mộc", Dialog.OpenShop, Dialog, 157, 1},
{"<color=pink>Tần Lăng-Vũ khí hệ Thủy", Dialog.OpenShop, Dialog, 158, 1},
{"<color=pink>Tần Lăng-Vũ khí hệ Hỏa", Dialog.OpenShop, Dialog, 159, 1},
{"<color=pink>Tần Lăng-Vũ khí hệ Thổ", Dialog.OpenShop, Dialog, 160, 1},]]

--{"<color=yellow>[Shop]: Sự Kiện-Event", Dialog.OpenShop, Dialog, 291, 3},
{"<bclr=0,0,200><color=white>[Cửa Hàng Bang Hội]", Dialog.OpenShop, Dialog, 292, 3},

{"<bclr=0,0,200><color=white>[Shop]: Ngôi Sao May Mắn", Dialog.OpenShop, Dialog, 294, 3},
{"<bclr=0,0,200><color=cyan>[Shop]: Thẻ Tân Thủ", Dialog.OpenShop, Dialog, 295, 3},
{"<bclr=0,0,200><color=cyan>[Shop]: Thẻ Cao Thủ", Dialog.OpenShop, Dialog, 296, 3},
{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
