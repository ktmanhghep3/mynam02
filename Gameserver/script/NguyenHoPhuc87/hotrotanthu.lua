local tbHotro = Npc:GetClass("hotrotanthu1");
tbHotro.tbItemInfo = {bForceBind=1,};
tbHotro.TaskGourp = 3003;
tbHotro.TaskId_TanThu = 1;
tbHotro.Use_Max =1;

function tbHotro:OnDialog()
DoScript("\\script\\NguyenHoPhuc87\\hotrotanthu.lua");
if me.CountFreeBagCell() < 25 then
		Dialog:Say("Phải Có 25 Ô Trống Trong Túi Hành Trang");
		return 0;
	end
	local nCount = me.GetTask(self.TaskGourp, self.TaskId_TanThu);
	local szMsg = "Hỗ Trợ Tân Thủ\n<color=yellow>2400 NHHT làm NV Kỹ Năng 110\nThăng Cấp 130\n50 Hòa Thị Bích\n1 Ức Đồng Khóa\n5 Ức Bạc Khóa\n1 Túi Đồ Bạch Ngân kèm Vũ Khí +16\n5 Tiểu Du Long Lệnh\n1 Ngọc Thố (Vĩnh Viễn)\n3 Túi 24 Ô\nDanh Hiệu: <color=green>Tân Thủ Phi Long Tại Thiên";
	local tbOpt = {};
	if (nCount < self.Use_Max) then
		if (me.nLevel < 130) then
			me.AddLevel(130 - me.nLevel);
		elseif (me.nLevel > 130) then
			return 0;
		end;
		--[[me.AddStackItem(18,1,205,1,self.tbItemInfo,2400) -- 2k4 NHHT
		me.AddStackItem(18,1,377,1,self.tbItemInfo,50);	--50 Hoa Thi Bich
		me.AddBindCoin(100000000);	--1ức đồng khóa
		me.AddBindMoney(500000000);	--5ức bạc khóa
		me.AddStackItem(18,1,25502,1,self.tbItemInfo,1);	--1 Túi quà trang bị kèm vũ khí +16
		me.AddItem(1,12,71,5).Bind(1) -- 1 Ngọc Thố
		me.AddStackItem(21,9,1,1,self.tbItemInfo,1);	--Túi kim ngọc 20 ô
		me.AddStackItem(21,9,2,1,self.tbItemInfo,1);
		me.AddStackItem(21,9,3,1,self.tbItemInfo,1);
		me.AddStackItem(18,1,529,1,self.tbItemInfo,1);	--du long hộ thân phù
		me.AddStackItem(18,1,529,2,self.tbItemInfo,1);	--du long nón
		me.AddStackItem(18,1,529,3,self.tbItemInfo,1);	--du long áo
		me.AddStackItem(18,1,529,4,self.tbItemInfo,1);	--du long yêu đái
		me.AddStackItem(18,1,529,5,self.tbItemInfo,1);	--du long giầy
		me.AddTitle(16,1,1,1) -- Danh Hiệu : Tân Thủ Phi Long Tại Thiên]]
		me.SetTask(self.TaskGourp, self.TaskId_TanThu, nCount + 1);
	KDialog.MsgToGlobal("<color=yellow>Người chơi <color=green>["..me.szName.."]<color> vừa trở thành thành viên của gia đình <color=yellow>Phi Long Tại Thiên<color> mọi người hãy hoanh nghênh nào !<color>");	   
	else
		Dialog:SendBlackBoardMsg(me, string.format("Bạn đã nhận rồi !"));
	end
	Dialog:Say(szMsg, tbOpt);
end