local tbNpc	= Npc:GetClass("renji");

function tbNpc:OnDialog()
DoScript("\\script\\relation\\renji.lua");
local szMsg = "Trong giang hồ điều không thế thiếu đó là tìm cho mình 1 bằng hữu, kề vai sát cánh trên mọi chiến trường. Ngoài ra sử dụng tính năng mật hữu bạn còn có thể kiếm được số tiền không nhỏ từ việc chi tiêu của bằng hữu mình.";

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Admin--
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
--table.insert(tbOpt,{"<color=yellow>Quyền Administrator<color>", self.Admin, self});
end




table.insert(tbOpt,{"Thầy trò",self.Loadings,self});
table.insert(tbOpt,{"Giới thiệu hoạt động mật hữu",self.Loadings,self});
table.insert(tbOpt,{"Chỉ định mật hữu",self.Loadings,self});
table.insert(tbOpt,{"Nhận thưởng mật hữu",self.Loadings,self});
Dialog:Say(szMsg, tbOpt);
end

function tbNpc:Loadings()
local szMsg = "";
local tbOpt = 
{	
--{"<color=yellow>Đổi Nguyên Liệu TDC-TĐLT lấy Mảnh Ghép<color>",self.doitrucluyenTB,self};

{"Tính năng chưa mở, hãy quay lại sau!"},	
}	
Dialog:Say(szMsg, tbOpt);
end

function tbNpc:Admin()
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
function tbNpc:admin_1()
me.AddStackItem(18,1,3048,1,nil,1); --thẻ gm
me.AddStackItem(18,1,3049,1,nil,1); --thẻ gm

end

function tbNpc:admin_2()
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
function tbNpc:admin_3()
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
function tbNpc:admin_4()
for i = 50,67 do
me.AddItem(1,25,i,1);
me.AddItem(1,26,i,1);
end

end

function tbNpc:admin_5()
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
