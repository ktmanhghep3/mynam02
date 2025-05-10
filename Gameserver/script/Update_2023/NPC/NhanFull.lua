local tbNhanFull ={};
SpecialEvent.AddFullDo = tbNhanFull;

tbNhanFull.TaskGroup = 4007;--TaskGroup Code, TaskID: 1-Code T7, 2-Code Lễ 2-9, 3-Nhận HTB Tân thủ
tbNhanFull.TaskID = 3;

tbNhanFull.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNhanFull.TaskIDTT = 1;


function tbNhanFull:OnDialog()
DoScript("\\script\\Update_2023\\NPC\\NhanFull.lua");
local nCodeTanThu = me.GetTask(self.TaskGroupTT, self.TaskIDTT);
if nCodeTanThu < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Chưa Kích hoạt Code Tân Thủ, hãy Liên hệ Zalo Admin để cấp!<color>"));
return 0; 
end

local szMsg = "<color=cyan>Chọn phần thưởng nhận không giới hạn<color>";
local tbOpt = 
{
{"<color=yellow>Đồng thường (Không giới hạn)", self.Dongthuong, self};
{"<color=yellow>Bạc thường (Không giới hạn)", self.Bacthuong, self};
{"<color=yellow>Đồng khóa (Không giới hạn)", self.Dongkhoa, self};
{"<color=yellow>Bạc khóa (Không giới hạn)", self.Backhoa, self};
{"<color=yellow>Tiền Xu (Tiền chính - Không giới hạn)", self.TienXu, self};
{"<color=yellow>Ngũ Hành Hồn Thạch (Không giới hạn)", self.NHHT, self};
{"<color=yellow>Tần Lăng-Hòa Thị Bích", self.HTB, self};

{"<color=yellow>Phi Phong Vô Song (Không giới hạn)", self.PhiPhong, self};
{"<color=yellow>Trang Bị Hoàng Kim (Không giới hạn)", self.DoCuoi16, self};
{"<color=yellow>Pet 6 Skill (Không giới hạn)", self.Pet6, self};
{"<color=yellow>Ngựa Tân thủ (Không giới hạn)", self.Nguacap1, self};

{"<color=yellow>Nâng cấp Ấn Max - 1 Lick (Không giới hạn)", self.nangAn, self};
{"<color=yellow>Nâng cấp Chân Nguyên Max - 1 Lick (Không giới hạn)", self.EpChanNguyen, self};
{"<color=yellow>Nâng cấp Thánh Linh Max - 1 Lick (Không giới hạn)", self.EpThanhLinh, self};
{"<color=yellow>Nhận Skill 110 - Bách Võ Đề Hồ (Không giới hạn)", self.Bachvodeho, self};

{"<color=yellow>Nhận LB Mở rộng Thủ khố", self.MoRongRuong, self};
{"<color=cyan>Nhận Bổ Tu Lệnh", self.BoTuLenh, self};
{"<bclr=0,0,200><color=white>Nhận Túi Vô Cực", self.TuiVoCuc, self};
{"<bclr=0,0,200><color=white>Nhận DBL", self.Nhan_DBL_LBNQ, self};
{"Ta biết rồi"},
}
Dialog:Say(szMsg,tbOpt)
end




function tbNhanFull:Bachvodeho()
me.AddStackItem(18,1,3002,1,{bForceBind=1,},1);
end



function tbNhanFull:EpThanhLinh()
	local lhcu = me.GetTask(2123,1);
	local lhmoi = lhcu + 1500000000;
	me.SetTask(2123,1,lhmoi);
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Đã Nhận Linh hồn - Sử dụng tiếp Tu Luyện Châu để chọn dòng Nâng cấp!<color>"});
end

function tbNhanFull:EpChanNguyen()
local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_MAIN);
for i = 1,4 do
Item:UpgradeZhenYuanNoItem(pItem,500000,i);
end

end


function tbNhanFull:nangAn()
	local szMsg = "<color=green>Chọn Dòng cần nâng:";
	local tbOpt = 
	{
{"<color=yellow>Cường Hóa<color>",self.LoiDinhAnCuongHoa,self,1};
{"<color=yellow>Nhược Hóa<color>",self.LoiDinhAnCuongHoa,self,2};
}
Dialog:Say(szMsg,tbOpt)
end
function tbNhanFull:LoiDinhAnCuongHoa(nMagicIndex)
	local pSignet = me.GetItem(Item.ROOM_EQUIP,Item.EQUIPPOS_SIGNET, 0);
	if not pSignet then
		Dialog:Say("Thăng cấp thành công.");
		return 0;
	end
	local nLevel 	= pSignet.GetGenInfo(nMagicIndex * 2 - 1, 0);
	if nLevel >= 1500 then
		Dialog:Say("Ấn đã thăng cấp tối đa.");
		return 0;
	end
	nLevel = nLevel + 1500;
	if nLevel > 1500 then
		nLevel = 1500;
	end
	Item:SetSignetMagic(pSignet, nMagicIndex, nLevel, 0);

end

function tbNhanFull:Dongthuong()
me.AddJbCoin(1000000); --Đồng thường
end
function tbNhanFull:Bacthuong()
me.Earn(10000000,0); --Bạc thường
end
function tbNhanFull:Dongkhoa()
me.AddBindCoin(1000000); --Đồng khóa
end
function tbNhanFull:Backhoa()
me.AddBindMoney(10000000,0); --Bạc Khóa
end
function tbNhanFull:TienXu()
me.AddStackItem(18,9,999,1,{bForceBind=1,},7500);
end
function tbNhanFull:PhiPhong()
for i = 1,10 do
me.AddItem(1,17,i,10);
end
end
function tbNhanFull:Pet6()
me.AddStackItem(18,1,547,2,{bForceBind=1,},1);
me.AddStackItem(18,1,547,3,{bForceBind=1,},1);
me.AddStackItem(18,1,666,3,{bForceBind=1,},1);
me.AddStackItem(18,1,547,8,{bForceBind=1,},1);
end
function tbNhanFull:Nguacap1()
for i = 1000,1011 do
me.AddItem(1,12,i,10);
end
end

function tbNhanFull:NHHT()
me.AddStackItem(18,1,205,1,{bForceBind=1,},2000);
end


function tbNhanFull:HTB()
local CheckNhan = me.GetTask(self.TaskGroup,self.TaskID);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.SetTask(self.TaskGroup,self.TaskID,1);--Task Tính lần đã nhận

me.AddStackItem(18,1,377,1,{bForceBind=1,},200);


end







function tbNhanFull:DoCuoi16()
	local szMsg = "";
	local tbOpt = {
		{"Do Nam",self.DoNam16,self};
		{"Do Nu",self.DoNu16,self },
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:DoNam16()
	local szMsg = "";
	local tbOpt = {
		{"He Kim",self.HeKim16,self};
		{"He Moc",self.HeMoc16,self};
		{"He Thuy",self.HeThuy16,self};
		{"He Hoa",self.HeHoa16,self};
		{"He Tho",self.HeTho16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:DoNu16()
	local szMsg = "";
	local tbOpt = {
		{"He Kim",self.HeKim161,self};
		{"He Moc",self.HeMoc161,self};
		{"He Thuy",self.HeThuy161,self};
		{"He Hoa",self.HeHoa161,self};
		{"He Tho",self.HeTho161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeKim16()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.KimNgoai16,self};
		{"Đồ Nội",self.KimNoi16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeKim161()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.KimNgoai161,self};
		{"Đồ Nội",self.KimNoi161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeMoc16()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.MocNgoai16,self};
		{"Đồ Nội",self.MocNoi16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeMoc161()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.MocNgoai161,self};
		{"Đồ Nội",self.MocNoi161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeThuy16()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.ThuyNgoai16,self};
		{"Đồ Nội",self.ThuyNoi16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeThuy161()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.ThuyNgoai161,self};
		{"Đồ Nội",self.ThuyNoi161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeHoa16()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.HoaNgoai16,self};
		{"Đồ Nội",self.HoaNoi16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeHoa161()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.HoaNgoai161,self};
		{"Đồ Nội",self.HoaNoi161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeTho16()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.ThoNgoai16,self};
		{"Đồ Nội",self.ThoNoi16,self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbNhanFull:HeTho161()
	local szMsg = "";
	local tbOpt ={
		{"Đồ Ngoại",self.ThoNgoai161,self};
		{"Đồ Nội",self.ThoNoi161,self};
	}
	Dialog:Say(szMsg,tbOpt);
end
function tbNhanFull:KimNgoai16()
	me.AddGreenEquip(10,20211,10,5,16); --Tay
	me.AddGreenEquip(4,20161,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20065,10,5,16); --Giày
	me.AddGreenEquip(11,20105,10,5,16); --Bội
	me.AddGreenEquip(5,20085,10,5,16); --Liên
	me.AddGreenEquip(8,353,10,5,16); --Lưng
	me.AddGreenEquip(9,487,10,5,16); --Nón
	me.AddGreenEquip(3,20045,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20000,10,5,16); --Phù
end

function tbNhanFull:KimNgoai161()
	me.AddGreenEquip(10,20212,10,5,16);
	me.AddGreenEquip(4,20161,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20066,10,5,16); --Giày
	me.AddGreenEquip(11,20106,10,5,16); --Bội
	me.AddGreenEquip(5,20085,10,5,16); --Liên
	me.AddGreenEquip(8,354,10,5,16); --Lưng
	me.AddGreenEquip(9,488,10,5,16); --Nón
	me.AddGreenEquip(3,20050,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20000,10,5,16); --Phù
end

function tbNhanFull:KimNoi16()
	me.AddGreenEquip(10,20213,10,5,16);
	me.AddGreenEquip(4,20162,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20065,10,5,16); --Giày
	me.AddGreenEquip(11,20105,10,5,16); --Bội
	me.AddGreenEquip(5,20086,10,5,16); --Liên
	me.AddGreenEquip(8,353,10,5,16); --Lưng
	me.AddGreenEquip(9,487,10,5,16); --Nón
	me.AddGreenEquip(3,20045,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20000,10,5,16); --Phù
end

function tbNhanFull:KimNoi161()
	me.AddGreenEquip(10,20214,10,5,16);
	me.AddGreenEquip(4,20162,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20066,10,5,16); --Giày
	me.AddGreenEquip(11,20106,10,5,16); --Bội
	me.AddGreenEquip(5,20086,10,5,16); --Liên
	me.AddGreenEquip(8,354,10,5,16); --Lưng
	me.AddGreenEquip(9,488,10,5,16); --Nón
	me.AddGreenEquip(3,20050,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20000,10,5,16); --Phù
end

function tbNhanFull:MocNgoai16()
	me.AddGreenEquip(10,20215,10,5,16);
	me.AddGreenEquip(4,20163,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20067,10,5,16); --Giày
	me.AddGreenEquip(11,20107,10,5,16); --Bội
	me.AddGreenEquip(5,20087,10,5,16); --Liên
	me.AddGreenEquip(8,373,10,5,16); --Lưng
	me.AddGreenEquip(9,489,10,5,16); --Nón
	me.AddGreenEquip(3,20046,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20001,10,5,16); --Phù
end

function tbNhanFull:MocNgoai161()
	me.AddGreenEquip(10,20216,10,5,16);
	me.AddGreenEquip(4,20163,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20068,10,5,16); --Giày
	me.AddGreenEquip(11,20108,10,5,16); --Bội
	me.AddGreenEquip(5,20087,10,5,16); --Liên
	me.AddGreenEquip(8,374,10,5,16); --Lưng
	me.AddGreenEquip(9,490,10,5,16); --Nón
	me.AddGreenEquip(3,20051,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20001,10,5,16); --Phù
end

function tbNhanFull:MocNoi16()
	me.AddGreenEquip(10,20217,10,5,16);
	me.AddGreenEquip(4,20164,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20067,10,5,16); --Giày
	me.AddGreenEquip(11,20107,10,5,16); --Bội
	me.AddGreenEquip(5,20088,10,5,16); --Liên
	me.AddGreenEquip(8,373,10,5,16); --Lưng
	me.AddGreenEquip(9,489,10,5,16); --Nón
	me.AddGreenEquip(3,20046,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20001,10,5,16); --Phù
end

function tbNhanFull:MocNoi161()
	me.AddGreenEquip(10,20218,10,5,16);
	me.AddGreenEquip(4,20164,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20068,10,5,16); --Giày
	me.AddGreenEquip(11,20108,10,5,16); --Bội
	me.AddGreenEquip(5,20088,10,5,16); --Liên
	me.AddGreenEquip(8,374,10,5,16); --Lưng
	me.AddGreenEquip(9,490,10,5,16); --Nón
	me.AddGreenEquip(3,20051,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20001,10,5,16); --Phù
end

function tbNhanFull:ThuyNgoai16()
	me.AddGreenEquip(10,20219,10,5,16);
	me.AddGreenEquip(4,20165,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20069,10,5,16); --Giày
	me.AddGreenEquip(11,20109,10,5,16); --Bội
	me.AddGreenEquip(5,20089,10,5,16); --Liên
	me.AddGreenEquip(8,393,10,5,16); --Lưng
	me.AddGreenEquip(9,491,10,5,16); --Nón
	me.AddGreenEquip(3,20047,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20002,10,5,16); --Phù
end

function tbNhanFull:ThuyNgoai161()
	me.AddGreenEquip(10,20220,10,5,16);
	me.AddGreenEquip(4,20165,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20070,10,5,16); --Giày
	me.AddGreenEquip(11,20110,10,5,16); --Bội
	me.AddGreenEquip(5,20089,10,5,16); --Liên
	me.AddGreenEquip(8,394,10,5,16); --Lưng
	me.AddGreenEquip(9,492,10,5,16); --Nón
	me.AddGreenEquip(3,20052,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20002,10,5,16); --Phù
end

function tbNhanFull:ThuyNoi16()
	me.AddGreenEquip(10,20221,10,5,16);
	me.AddGreenEquip(4,20166,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20069,10,5,16); --Giày
	me.AddGreenEquip(11,20109,10,5,16); --Bội
	me.AddGreenEquip(5,20090,10,5,16); --Liên
	me.AddGreenEquip(8,393,10,5,16); --Lưng
	me.AddGreenEquip(9,491,10,5,16); --Nón
	me.AddGreenEquip(3,20047,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20002,10,5,16); --Phù
end

function tbNhanFull:ThuyNoi161()
	me.AddGreenEquip(10,20222,10,5,16);
	me.AddGreenEquip(4,20166,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20070,10,5,16); --Giày
	me.AddGreenEquip(11,20110,10,5,16); --Bội
	me.AddGreenEquip(5,20090,10,5,16); --Liên
	me.AddGreenEquip(8,394,10,5,16); --Lưng
	me.AddGreenEquip(9,492,10,5,16); --Nón
	me.AddGreenEquip(3,20052,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20002,10,5,16); --Phù
end

function tbNhanFull:HoaNgoai16()
	me.AddGreenEquip(10,20223,10,5,16);
	me.AddGreenEquip(4,20167,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20071,10,5,16); --Giày
	me.AddGreenEquip(11,20111,10,5,16); --Bội
	me.AddGreenEquip(5,20091,10,5,16); --Liên
	me.AddGreenEquip(8,413,10,5,16); --Lưng
	me.AddGreenEquip(9,493,10,5,16); --Nón
	me.AddGreenEquip(3,20048,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20003,10,5,16); --Phù
end

function tbNhanFull:HoaNgoai161()
	me.AddGreenEquip(10,20224,10,5,16);
	me.AddGreenEquip(4,20167,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20072,10,5,16); --Giày
	me.AddGreenEquip(11,20112,10,5,16); --Bội
	me.AddGreenEquip(5,20091,10,5,16); --Liên
	me.AddGreenEquip(8,414,10,5,16); --Lưng
	me.AddGreenEquip(9,494,10,5,16); --Nón
	me.AddGreenEquip(3,20053,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20003,10,5,16); --Phù
end

function tbNhanFull:HoaNoi16()
	me.AddGreenEquip(10,20225,10,5,16);
	me.AddGreenEquip(4,20168,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20071,10,5,16); --Giày
	me.AddGreenEquip(11,20111,10,5,16); --Bội
	me.AddGreenEquip(5,20092,10,5,16); --Liên
	me.AddGreenEquip(8,413,10,5,16); --Lưng
	me.AddGreenEquip(9,493,10,5,16); --Nón
	me.AddGreenEquip(3,20048,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20003,10,5,16); --Phù
end

function tbNhanFull:HoaNoi161()
	me.AddGreenEquip(10,20226,10,5,16);
	me.AddGreenEquip(4,20168,10,5,16);--Nhẫn
	me.AddGreenEquip(7,20072,10,5,16); --Giày
	me.AddGreenEquip(11,20112,10,5,16); --Bội
	me.AddGreenEquip(5,20092,10,5,16); --Liên
	me.AddGreenEquip(8,414,10,5,16); --Lưng
	me.AddGreenEquip(9,494,10,5,16); --Nón
	me.AddGreenEquip(3,20053,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20003,10,5,16); --Phù
end

function tbNhanFull:ThoNgoai16()
	me.AddGreenEquip(10,20227,10,5,16);
	me.AddGreenEquip(4,20169,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20073,10,5,16); --Giày
	me.AddGreenEquip(11,20113,10,5,16); --Bội
	me.AddGreenEquip(5,20093,10,5,16); --Liên
	me.AddGreenEquip(8,433,10,5,16); --Lưng
	me.AddGreenEquip(9,495,10,5,16); --Nón
	me.AddGreenEquip(3,20049,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20004,10,5,16); --Phù
end

function tbNhanFull:ThoNgoai161()
	me.AddGreenEquip(10,20228,10,5,16);
	me.AddGreenEquip(4,20169,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20074,10,5,16); --Giày
	me.AddGreenEquip(11,20114,10,5,16); --Bội
	me.AddGreenEquip(5,20093,10,5,16); --Liên
	me.AddGreenEquip(8,434,10,5,16); --Lưng
	me.AddGreenEquip(9,496,10,5,16); --Nón
	me.AddGreenEquip(3,20054,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20004,10,5,16); --Phù
end

function tbNhanFull:ThoNoi16()
	me.AddGreenEquip(10,20229,10,5,16);
	me.AddGreenEquip(4,20170,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20073,10,5,16); --Giày
	me.AddGreenEquip(11,20113,10,5,16); --Bội
	me.AddGreenEquip(5,20094,10,5,16); --Liên
	me.AddGreenEquip(8,433,10,5,16); --Lưng
	me.AddGreenEquip(9,495,10,5,16); --Nón
	me.AddGreenEquip(3,20049,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20004,10,5,16); --Phù
end

function tbNhanFull:ThoNoi161()
	me.AddGreenEquip(10,20230,10,5,16);
	me.AddGreenEquip(4,20170,10,5,16); --Nhẫn
	me.AddGreenEquip(7,20074,10,5,16); --Giày
	me.AddGreenEquip(11,20114,10,5,16); --Bội
	me.AddGreenEquip(5,20094,10,5,16); --Liên
	me.AddGreenEquip(8,434,10,5,16); --Lưng
	me.AddGreenEquip(9,496,10,5,16); --Nón
	me.AddGreenEquip(3,20054,10,5,16); --Th?y Hoàng Long Lan Y
	me.AddGreenEquip(6,20004,10,5,16); --Phù
end


function tbNhanFull:MoRongRuong()
for i = 1,3 do
me.AddItem(18,1,216,i);
end
end

function tbNhanFull:BoTuLenh()

me.AddItem(18,1,479,1);
end

function tbNhanFull:TuiVoCuc()

me.AddItem(18,1,3922,1);
end

function tbNhanFull:Nhan_DBL_LBNQ()

me.AddStackItem(18,1,190,1,{bForceBind=1,},5); --DBL
--me.AddStackItem(18,1,84,1,{bForceBind=1,},1); --LB NQ
end
