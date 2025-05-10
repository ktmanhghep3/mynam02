local tbNewGift2 = Item:GetClass("newplayergift2");


function tbNewGift2:OnUse()
DoScript("\\script\\Update_2023\\newplayergift2.lua");

local szMsg = 
"<color=pink>Thông tin Nhân vật:<color>\n"..
"<color=yellow>Tài khoản Game: <color=green>"..me.szAccount.."<color>\n"..
"- Bấm F12 xem hoạt động ngày/tuần.\n"..
"<color=red>- Để Nạp Thẻ Liên Hệ Admin qua Zalo và Facebook bên dưới:<color><color>\n"

local tbOpt = 
{

{"Test Shop", Dialog.OpenShop, Dialog, 219, 3};
{"<color=pink>Chức Năng Admin<color>",self.Adminii,self};
--{"<color=pink>Nhận Đồng Nạp và Tích Lũy<color>",self.nhanquanapthe,self};
{"<color=red>Tiêu hủy Vật phẩm<color>", self.DatVaoVPTieuHuy, self},
{"<color=green>Gia nhập Môn phái", "Npc.tbMenPaiNpc:FactionDialog", Npc.tbMenPaiNpc.DialogMaster},
{"Kết Thúc Đối Thoại"}
}
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,1,{"<color=lightgreen>[Chức Năng Admin]<color>", self.admin_menu, self});
table.insert(tbOpt,2,{"<color=lightgreen>[Chức Năng Admin] 2<color>", self.admin_menu2, self});
end

Dialog:Say(szMsg,tbOpt)
end


function tbNewGift2:Adminii()
local tbKTST150	= Item:GetClass("KTST150");
tbKTST150:OnUse()
end









function tbNewGift2:nhanquanapthe()
local tbTuiGuangYuan = Npc:GetClass("tuiguangyuan");
tbTuiGuangYuan:OnDialog()
end





function tbNewGift2:DatVaoVPTieuHuy()
Dialog:OpenGift("Hãy đặt vào vật phẩm cần tiêu hủy. \nVật phẩm sau khi tiêu hủy sẽ mất vĩnh viễn.", nil ,{self.OnOpenGiftOkTieuHuyItem, self});
end
function tbNewGift2:OnOpenGiftOkTieuHuyItem(tbItemObj)
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end
function tbNewGift2:DatVaoVPTieuHuy()
Dialog:OpenGift("<color=green>Đặt vật phẩm muốn Tiêu huỷ vào đây!<color>", nil ,{self.OnOpenGiftOkTieuHuyItem, self});
end 
function tbNewGift2:OnOpenGiftOkTieuHuyItem(tbNewGift2Obj)
for _, pItem in pairs(tbNewGift2Obj) do
if me.DelItem(pItem[1]) ~= 1 then
return 0;
end
end
me.KickOut()
end

--admin--
function tbNewGift2:admin_menu()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
	{"<color=yellow> Gói Admin 1<color>",self.admin_1,self};
	{"<color=yellow> Gói Admin 2<color>",self.admin_2,self};
	{"<color=yellow> Gói Admin 3<color>",self.admin_3,self};
	{"<color=yellow> Gói Admin 4<color>",self.admin_4,self};
	{"<color=yellow> Gói Admin 5<color>",self.admin_5,self};
	
	{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
--admin2--
function tbNewGift2:admin_menu2()
local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
	{"<color=yellow> Gói Admin 1<color>",self.admin_11,self};
	
	{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
function tbNewGift2:admin_11()
me.AddStackItem(18,1,750,1,nil,1); --thẻ gm
me.AddStackItem(21,9,1,1,{bForceBind=1,},3);
	me.AddFightSkill(163,20);	-- 60级梯云纵
	me.AddFightSkill(91,20);
	me.AddFightSkill(132,20);
	me.AddFightSkill(177,20);
	me.AddFightSkill(209,20);
	me.AddFightSkill(68,40); --Đường môn - Tâm ma
	me.AddFightSkill(75,40); --Đường môn - Tâm phách
	me.AddFightSkill(183,40); --Côn lôn - Thiên thanh địa trọc
	me.AddFightSkill(193,40); --Côn lôn - Ngũ lôi chánh pháp
	me.AddFightSkill(204,40); --Minh giáo - Trấn ngục phá thiên kình
	me.AddFightSkill(212,40); --Minh giáo - Ly hỏa đại pháp
me.AddFightSkill(886,1);
me.AddFightSkillPoint(200)





end

function tbNewGift2:admin_1()
--me.AddStackItem(18,1,3048,1,nil,1); --thẻ gm
--me.AddStackItem(18,1,3049,1,nil,1); --thẻ gm

me.AddStackItem(18,1,750,1,nil,1); --thẻ gm
--me.AddStackItem(18,1,750,2,nil,1); --thẻ gm

end

function tbNewGift2:admin_2()
for i = 2211,2224 do
me.AddStackItem(1,12,i,10,nil,1);
end
for i = 11,20 do
me.AddStackItem(1,17,i,10,nil,1);
end
me.AddStackItem(1,13,27,10,nil,1);
me.AddStackItem(1,16,24,2,nil,1);
me.AddStackItem(1,24,2,1,nil,1);

local nBac = 100000000;
local nDong = 10000000;
me.Earn(nBac,0); -- X là số Bạc cần add
me.AddBindMoney(nBac,0); -- Y là số Bạc Khóa cần add
me.AddBindCoin(nDong); -- Z là số đồng khóa cần add
me.AddJbCoin(nDong); -- W là số đồng thường cần add


end
function tbNewGift2:admin_3()
local nTiemNang = 5000;
local nKyNang = 500;
--me.AddPotential(nTiemNang);
me.AddFightSkillPoint(nKyNang);
	me.AddFightSkill(163,20);	-- 60级梯云纵
	me.AddFightSkill(91,20);
	me.AddFightSkill(132,20);
	me.AddFightSkill(177,20);
	me.AddFightSkill(209,20);
	me.AddFightSkill(68,40); --Đường môn - Tâm ma
	me.AddFightSkill(75,40); --Đường môn - Tâm phách
	me.AddFightSkill(183,40); --Côn lôn - Thiên thanh địa trọc
	me.AddFightSkill(193,40); --Côn lôn - Ngũ lôi chánh pháp
	me.AddFightSkill(204,40); --Minh giáo - Trấn ngục phá thiên kình
	me.AddFightSkill(212,40); --Minh giáo - Ly hỏa đại pháp
me.AddLevel(150 - me.nLevel);

end
function tbNewGift2:admin_4()
for i = 50,67 do
me.AddItem(1,25,i,1);
me.AddItem(1,26,i,1);
end

end

function tbNewGift2:admin_5()
me.AddItem(2,1,1285,10,1,16)--Hoàng kim PVE_Hệ cách đấu_Kim_Thương
me.AddItem(2,1,1286,10,1,16)--Hoàng kim PVE_Hệ cách đấu_Kim_Chùy
me.AddItem(2,1,1287,10,1,16)--Hoàng kim PVE_Hệ cách đấu_Kim_Thủ
me.AddItem(2,1,1288,10,1,16)--Hoàng kim PVE_Ngoại công_Kim_Côn
me.AddItem(2,1,1289,10,1,16)--Hoàng kim PVE_Ngoại công_Kim_Đao
me.AddItem(2,1,1290,10,1,16)--Hoàng kim PVE_Ngoại công_Kim_Kiếm
me.AddItem(2,1,1291,10,1,16)--Hoàng kim PVE_Ngoại công_Kim_Thương
me.AddItem(2,1,1292,10,1,16)--Hoàng kim PVE_Nội công_Kim_Đao
me.AddItem(2,1,1293,10,1,16)--Hoàng kim PVE_Nội công_Kim_Kiếm
me.AddItem(2,1,1294,10,1,16)--Hoàng kim PVE_Nội công_Kim_Thủ
me.AddItem(2,2,135,10,1,16)--Hệ kim PVE_Phi đao hoàng kim
me.AddItem(2,2,140,10,1,16)--Hệ kim PVE_Tụ tiễn hoàng kim

end
