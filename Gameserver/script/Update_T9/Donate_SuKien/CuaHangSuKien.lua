local tbNpc = Npc:GetClass("CuaHangSuKien");

function tbNpc:CuaHang_SuKien1()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
{"<color=yellow>Cửa hàng Lục Bảo", Dialog.OpenShop, Dialog, 287, 3},
{"<color=yellow>Cửa hàng Thời gian Online", Dialog.OpenShop, Dialog, 288, 10},

{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
