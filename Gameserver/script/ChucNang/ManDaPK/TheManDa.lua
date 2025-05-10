local tbItem = Item:GetClass("ManDa_1");
function tbItem:OnUse()

	local szMsg = "<color=cyan>Dùng <color=red>1 Thẻ Mạn Đà Nhất Phẩm<color> để đổi lấy 1 món Trang bị, hãy cẩn thận lựa chọn trước khi đổi!";
	local tbOpt = {
			
			{"<color=yellow>Ta đồng ý đổi Trang bị", Dialog.OpenShop, Dialog, 289, 3},
			{"Ta suy nghĩ lại!"},
	};
	Dialog:Say(szMsg, tbOpt);
end

local tbItem = Item:GetClass("ManDa_2");
function tbItem:OnUse()

	local szMsg = "<color=cyan>Dùng <color=red>1 Thẻ Mạn Đà Nhị Phẩm<color> để đổi lấy 1 món Trang bị, hãy cẩn thận lựa chọn trước khi đổi!";
	local tbOpt = {
			
			{"<color=yellow>Ta đồng ý đổi Trang bị", Dialog.OpenShop, Dialog, 290, 3},
			{"Ta suy nghĩ lại!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
