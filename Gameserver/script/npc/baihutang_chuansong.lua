-- 白虎堂传送NPC


local tbNpc = Npc:GetClass("baihutangchuansong");
tbNpc.nTopLevel = 90;
tbNpc.nBottomLevel = 50;

function tbNpc:Init()
	self.tbShopID =
	{
		[1] = 89, -- 少林
		[2] = 90, --天王掌门
		[3] = 91, --唐门掌门
		[4] = 93, --五毒掌门
		[5] = 95, --峨嵋掌门
		[6] = 96, --翠烟掌门
		[7] = 98, --丐帮掌门
		[8] = 97, --天忍掌门
		[9] = 99, --武当掌门
		[10] = 100, --昆仑掌门
		[11] = 92, --明教掌门
		[12] = 94, --大理段氏掌门
	}
end

tbNpc:Init();

function tbNpc:OnDialog()
	local nMapId	= me.nMapId;
	local tbOpt		= {};
	local GioiHanCaoThu = 8;
	local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
	
	--if nLevel_DanhVongST >= GioiHanCaoThu then
	--Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Tân thủ Cấp Danh vọng Sát Thần dưới 7, không thể tham gia!<color>"));
	--Dialog:Say("<color=yellow>Hoạt động Tân thủ giới hạn Cấp Danh vọng Sát Thần từ 1-7,\n<color=red>Ngươi đang cấp: "..(nLevel_DanhVongST-1).."<color>, Không thể tham gia!<color>", {"Ta biết rồi"});
	--return 0;
	--end

	if (me.nLevel < tbNpc.nBottomLevel) then
		tbOpt[1] = {"Bạch Hổ Đường quá nguy hiểm, hãy luyện đến cấp 50 rồi tính!"};
	elseif (me.nFaction == 0) then
		tbOpt[1] = {"Hãy gia nhập môn phái rồi đến tham gia Bạch Hổ Đường."};
	else			

		table.insert(tbOpt, {"<color=yellow>Vào Bạch Hổ Đường (cao)<color>", self.OnTrans, self, BaiHuTang.GaoJi});
		--table.insert(tbOpt, {"Cửa hàng <color=yellow>Bạch Hổ Đường<color=red>", self.BuyReputeItem, self});
		table.insert(tbOpt, {"Kết thúc đối thoại"});
	end
	Dialog:Say("<color=yellow>Thời gian:<enter>Ban ngày: từ 08h30 đến 18h30, diễn ra 10 trận/ngày<enter>Ban đêm: từ 21h30 - 07h30 ngày tiếp theo, diễn ra 10 trận/đêm<enter>30 phút đầu tiên báo danh, sau đó sẽ chính thức bắt đầu hoạt động<color><enter><color=green>Thời gian Xuất hiện Boss Thủ Lĩnh:<enter>Tầng 1: phút thứ 23<enter>Tầng 2: phút thứ 13<enter>Tầng 3: phút thứ 5<color><enter><color=pink>1 Ngày có thể tham gia 5 lần - bấm F12 xem chi tiết.<color><enter><color=yellow>Tham gia đánh quái các Tầng sẽ nhận phần thưởng ngẫu nhiên thú vị<color>.", tbOpt);
	
end

function tbNpc:OnTrans(nMapId)
	local nRect		= MathRandom(#BaiHuTang.tbPKPos);
	local tbPos		= BaiHuTang.tbPKPos[nRect];
	me.NewWorld(nMapId, tbPos.nX / 32, tbPos.nY / 32);
end

-- 购买白虎堂声望装备
function tbNpc:BuyReputeItem()
		local nFaction = me.nFaction;
		if nFaction <= 0 then
			Dialog:Say("Người chơi chữ trắng không mua được trang bị nghĩa quân");
			return 0;
		end
		me.OpenShop(self.tbShopID[nFaction], 1, 100, me.nSeries) --使用声望购买
end
