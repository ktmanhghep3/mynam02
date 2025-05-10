local tbHaiLoc2024_TieuPhi = {};
SpecialEvent.HaiLoc_DauNam_TieuPhi = tbHaiLoc2024_TieuPhi;



tbHaiLoc2024_TieuPhi.TaskGourp_free = 4110; 		--Task Hái Lộc hàng ngày (add; 1-ngày 2-đếm số lần 3-tính thời gian)
tbHaiLoc2024_TieuPhi.TaskId_Day = 1; 				--Task lưu ngày
tbHaiLoc2024_TieuPhi.TaskId_Count = 2;  			--Task lưu lần nhận

tbHaiLoc2024_TieuPhi.TaskGourp_TieuPhi = 4111; 			--Task Hái Lộc hàng ngày (1: Trong ngày (Reset) - 2: Cả Sự kiện)
tbHaiLoc2024_TieuPhi.TaskId_TieuPhi_Ngay = 1;  			--Task Trong ngày (Reset)
tbHaiLoc2024_TieuPhi.TaskId_TieuPhi_CaSK = 2;  			--Task Cả Sự kiện
tbHaiLoc2024_TieuPhi.TaskId_TieuPhi_CaSK_Lan2 = 20;  	--Task Cả Sự kiện lần 2


tbHaiLoc2024_TieuPhi.NgoiSaoMayMan = {18,1,3004,2};
tbHaiLoc2024_TieuPhi.TyLe_TruItem1 = 5;
tbHaiLoc2024_TieuPhi.TyLe_TruItem5 = 25;
tbHaiLoc2024_TieuPhi.TyLe_TruItem10 = 50;
tbHaiLoc2024_TieuPhi.TyLe_TruItem20 = 100;
tbHaiLoc2024_TieuPhi.TyLe_TruItem50 = 250;

tbHaiLoc2024_TieuPhi.Delay_Times = 1;


function tbHaiLoc2024_TieuPhi:OnDialog()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(self.TaskGourp_free, self.TaskId_Day) < nDate then
		me.SetTask(self.TaskGourp_free, self.TaskId_Day, nDate);
		me.SetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay, 0);	--Cần Reset
	end 
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

local szMsg = 
"<color=pink>Hái Lộc Tiêu Phí:<color>\n"..
"<color=yellow>- Hái Lộc Tiêu Phí trong ngày: <color=cyan>["..nTieuPhi_Ngay.."]<color>\n<color>"..
"<color=yellow>- Hái Lộc Tiêu Phí Cả Sự Kiện lần 1: <color=cyan>["..nTieuPhi_CaSK.."]<color>\n<color>"..
"<color=green>- Hái Lộc Tiêu Phí Cả Sự Kiện lần 2: <color=cyan>["..nTieuPhi_CaSK_Lan2.."]<color>\n<color>"

local tbOpt = 
{
	{"<color=gold>Ta Muốn Hái Lộc - 1 lần", self.HaiLoc_Enter1, self,};
	{"<color=gold>Ta Muốn Hái Lộc - 5 lần", self.HaiLoc_Enter5, self,};
	{"<color=gold>Ta Muốn Hái Lộc - 10 lần", self.HaiLoc_Enter10, self,};
	{"<color=gold>Ta Muốn Hái Lộc - 20 lần", self.HaiLoc_Enter20, self,};
	{"<color=gold>Ta Muốn Hái Lộc - 50 lần", self.HaiLoc_Enter50, self,};

	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

--1 Lần--
function tbHaiLoc2024_TieuPhi:HaiLoc_Enter1()
local SoLanHL = 1;
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))

if nSo_NgoiSao < self.TyLe_TruItem1 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem1.." cái<color>, không thể Hái Lộc!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem1.." cái<color>, không thể Hái Lộc!<color>"));
return
end
	
--Phần thưởng--
me.AddStackItem(18,1,3039,1,{bForceBind=1,},SoLanHL);	--Lì Xì Năm Mới 2024
me.AddStackItem(18,1,3043,1,{bForceBind=1,},SoLanHL);	--Lễ Bao Đồng Hành
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_Ngay,nTieuPhi_Ngay + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK,nTieuPhi_CaSK + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 + SoLanHL);
Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem1);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Tiêu Phí thành công tại <color=cyan>Tài Thần Mộc Bảo<color>\n- Trong ngày: "..(nTieuPhi_Ngay+SoLanHL).." lần.\n- Cả Sự Kiện lần 1: "..(nTieuPhi_CaSK+SoLanHL).." lần.\n<color=green>- Cả Sự Kiện lần 2: "..(nTieuPhi_CaSK_Lan2+SoLanHL).." lần.<color>\nNhận được phần thưởng\n- "..SoLanHL..": Lì Xì Năm Mới 2024<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--5 Lần--
function tbHaiLoc2024_TieuPhi:HaiLoc_Enter5()
local SoLanHL = 5;
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))

if nSo_NgoiSao < self.TyLe_TruItem5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem5.." cái<color>, không thể Hái Lộc!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem5.." cái<color>, không thể Hái Lộc!<color>"));
return
end
	
--Phần thưởng--
me.AddStackItem(18,1,3039,1,{bForceBind=1,},SoLanHL);	--Lì Xì Năm Mới 2024
me.AddStackItem(18,1,3043,1,{bForceBind=1,},SoLanHL);	--Lễ Bao Đồng Hành
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_Ngay,nTieuPhi_Ngay + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK,nTieuPhi_CaSK + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 + SoLanHL);
Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem5);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Tiêu Phí thành công tại <color=cyan>Tài Thần Mộc Bảo<color>\n- Trong ngày: "..(nTieuPhi_Ngay+SoLanHL).." lần.\n- Cả Sự Kiện lần 1: "..(nTieuPhi_CaSK+SoLanHL).." lần.\n<color=green>- Cả Sự Kiện lần 2: "..(nTieuPhi_CaSK_Lan2+SoLanHL).." lần.<color>\nNhận được phần thưởng\n- "..SoLanHL..": Lì Xì Năm Mới 2024<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--10 Lần--
function tbHaiLoc2024_TieuPhi:HaiLoc_Enter10()
local SoLanHL = 10;
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))

if nSo_NgoiSao < self.TyLe_TruItem10 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem10.." cái<color>, không thể Hái Lộc!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem10.." cái<color>, không thể Hái Lộc!<color>"));
return
end
	
--Phần thưởng--
me.AddStackItem(18,1,3039,1,{bForceBind=1,},SoLanHL);	--Lì Xì Năm Mới 2024
me.AddStackItem(18,1,3043,1,{bForceBind=1,},SoLanHL);	--Lễ Bao Đồng Hành
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_Ngay,nTieuPhi_Ngay + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK,nTieuPhi_CaSK + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 + SoLanHL);
Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem10);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Tiêu Phí thành công tại <color=cyan>Tài Thần Mộc Bảo<color>\n- Trong ngày: "..(nTieuPhi_Ngay+SoLanHL).." lần.\n- Cả Sự Kiện lần 1: "..(nTieuPhi_CaSK+SoLanHL).." lần.\n<color=green>- Cả Sự Kiện lần 2: "..(nTieuPhi_CaSK_Lan2+SoLanHL).." lần.<color>\nNhận được phần thưởng\n- "..SoLanHL..": Lì Xì Năm Mới 2024<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--20 Lần--
function tbHaiLoc2024_TieuPhi:HaiLoc_Enter20()
local SoLanHL = 20;
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))

if nSo_NgoiSao < self.TyLe_TruItem20 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem20.." cái<color>, không thể Hái Lộc!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem20.." cái<color>, không thể Hái Lộc!<color>"));
return
end
	
--Phần thưởng--
me.AddStackItem(18,1,3039,1,{bForceBind=1,},SoLanHL);	--Lì Xì Năm Mới 2024
me.AddStackItem(18,1,3043,1,{bForceBind=1,},SoLanHL);	--Lễ Bao Đồng Hành
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_Ngay,nTieuPhi_Ngay + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK,nTieuPhi_CaSK + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 + SoLanHL);
Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem20);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Tiêu Phí thành công tại <color=cyan>Tài Thần Mộc Bảo<color>\n- Trong ngày: "..(nTieuPhi_Ngay+SoLanHL).." lần.\n- Cả Sự Kiện lần 1: "..(nTieuPhi_CaSK+SoLanHL).." lần.\n<color=green>- Cả Sự Kiện lần 2: "..(nTieuPhi_CaSK_Lan2+SoLanHL).." lần.<color>\nNhận được phần thưởng\n- "..SoLanHL..": Lì Xì Năm Mới 2024<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--50 Lần--
function tbHaiLoc2024_TieuPhi:HaiLoc_Enter50()
local SoLanHL = 50;
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))

if nSo_NgoiSao < self.TyLe_TruItem50 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem50.." cái<color>, không thể Hái Lộc!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red><color=yellow>Ngôi Sao May Mắn<color> Trong túi không đủ <color=cyan>"..self.TyLe_TruItem50.." cái<color>, không thể Hái Lộc!<color>"));
return
end
	
--Phần thưởng--
me.AddStackItem(18,1,3039,1,{bForceBind=1,},SoLanHL);	--Lì Xì Năm Mới 2024
me.AddStackItem(18,1,3043,1,{bForceBind=1,},SoLanHL);	--Lễ Bao Đồng Hành
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_Ngay,nTieuPhi_Ngay + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK,nTieuPhi_CaSK + SoLanHL);
me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 + SoLanHL);
Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem50);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Hái Lộc Tiêu Phí thành công tại <color=cyan>Tài Thần Mộc Bảo<color>\n- Trong ngày: "..(nTieuPhi_Ngay+SoLanHL).." lần.\n- Cả Sự Kiện lần 1: "..(nTieuPhi_CaSK+SoLanHL).." lần.\n<color=green>- Cả Sự Kiện lần 2: "..(nTieuPhi_CaSK_Lan2+SoLanHL).." lần.<color>\nNhận được phần thưởng\n- "..SoLanHL..": Lì Xì Năm Mới 2024<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
