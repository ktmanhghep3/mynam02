
BaiHuTang.TSKG_PVP_ACT	= 2009;
BaiHuTang.TSK_BaiHuTang_PKTIMES = 1;
BaiHuTang.MAX_ONDDAY_PKTIMES = EventManager.IVER_nBaiHuTangCount; 
BaiHuTang.SIX_NUMBERS = 1000000;

BaiHuTang.TIMELEFT		= Env.GAME_FPS * 60 * 30;

BaiHuTang.nTimes	= 1;		--ngôi cao mở ra thưởng cho bội số 

BaiHuTang.RESTSTATE	 = 0; -- 0 vô hoạt động trạng thái 
BaiHuTang.APPLYSTATE  = 1;	-- 1 báo danh trạng thái 
BaiHuTang.FIGHTSTATE  = 2;	-- 2 PK trạng thái 	
BaiHuTang.nActionState = 0;

BaiHuTang.nTaskId	= 0;

BaiHuTang.ChuJi = 225;
BaiHuTang.ChuJi2 = 274;
BaiHuTang.ChuJi3 = 333;
BaiHuTang.GaoJi = 233;
BaiHuTang.Goldlen = 821;
BaiHuTang.tbMapList = {225, 274, 233, 821};

BaiHuTang.tbIsOpen	= {};
BaiHuTang.nRegisterId = nil;
BaiHuTang.nRegisterIdLeft = nil;
BaiHuTang.nBossNo	= nil;
BaiHuTang.tbDaDianPos = {}; 
BaiHuTang.tbPKPos	= {};
BaiHuTang.tbMapKey 	= {};
BaiHuTang.tbTrapList = {};
BaiHuTang.tbSysMsg  = {};
BaiHuTang.tbAnimalPos = {};
BaiHuTang.tbNumber	= {};
BaiHuTang.tbMapId = {};
BaiHuTang.tbBatte = {};
BaiHuTang.tbNpcLevel = {45, 55, 65, 85, 95, 105, 110, 115, 120};
BaiHuTang.tbBossShowMsg = {3, 4, 5};
BaiHuTang.TSKGID	= 2009;
BaiHuTang.TASK_USED_NUM = 3;
BaiHuTang.TASK_WEEK_ID	= 4;

BaiHuTang.TSK_LIMITWEIWANG	= 2;
BaiHuTang.LIMITWEIWANG		= 30;

BaiHuTang.BAIHUTANG_REPUTE_CAMP	= 5;
BaiHuTang.BAIHUTANG_REPUTE_CALSS= 1;

BaiHuTang.nStateJour = 0;
BaiHuTang.END = 7;

BaiHuTang.tbGetAwardCount = {};

-- đội trưởng chính là đứng đầu vinh dự 
BaiHuTang.HONOR ={{[3] = 6, [4] = 9, [5] = 12, [6] = 15},	-- cửa thứ nhất 
				{[3] = 6, [4] = 9, [5] = 12, [6] = 15},	-- cửa thứ hai 
				{[3] = 12, [4] = 18, [5] = 24, [6] = 30},	-- cửa thứ ba 
				};
				
BaiHuTang.STATE_TRANS	=
{							--thời gian có lùi lại 
--	trạng thái 					đúng giờ thời gian 			đã đến giờ quay về công hàm thuyên chuyển công tác sổ (hàm số phản hồi 0biểu thị không đang tiếp tục đúng giờ ，kết thúc hoạt động)
	{1, 	Env.GAME_FPS * 60 * 10, 		"ShowGongGao"		},		-- biểu hiện thông cáo 
	{2,		Env.GAME_FPS * 60 * 10,			"ShowGongGao"		},		-- biểu hiện thông cáo 
	{3,		Env.GAME_FPS * 60 * 5,			"ShowGongGao"		}, 		-- biểu hiện thông cáo 
	{4,		Env.GAME_FPS * 60 * 12,			"CallBoss"			}, 		-- Call tầng thứ nhất BOSS
	{5,		Env.GAME_FPS * 60 * 9,			"CallBoss"			}, 		-- Call tầng thứ hai BOSS
	{6,		Env.GAME_FPS * 60 * 9,			"CallBoss"			}, 		-- Call tầng thứ ba BOSS
	{BaiHuTang.END}
};

BaiHuTang.szApplyMsg ="Khiêu chiến Bạch Hổ Đường đã bắt đầu báo danh, Các nhận vật có đẳng cấp trên 50 có thể đến các thành thị lớn để tham gia khiêu chiến.";

function BaiHuTang:OnPlayerTrap(nMapId)
	if (self.tbIsOpen[nMapId] ~= 1) then
		return;
	end
	
	-- Phần thưởng Sau Khi Qua Cửa 1,2,3
	if me.CountFreeBagCell() >= 5 then
	
		me.AddExp(1000000);
		me.AddItem(18,1,114,5);
		me.AddBindCoin(20000); --Đồng khóa
		me.AddBindMoney(50000,0); --Bạc Khóa
		me.Earn(5000,0); --Bạc thường
		me.AddStackItem(18,1,553,1,{bForceBind=1,},30); --Tiền Du Long
		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},20);--Bí Ẩn Sát Thần
		me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
		
		--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
		me.AddStackItem(18,1,4038,1,nil,10); --Du Long Giác
		me.AddStackItem(18,1,4041,8,nil,1); --Bản đồ Bạch Hổ Mật Chỉ chưa giám định
	else
		me.Msg("Hành trang đầy, cần trống 5 ô túi để nhận phần thưởng!");
	end
		----------------------------	
	--sấm quan thành công ，tăng thêm 10điểm danh vọng 
	self:AddRepute(me, 10);
	local nPrestige = 1;
	if BaiHuTang:GetLevelByMapId(nMapId) == 1 and TimeFrame:GetStateGS("OpenOneAdvBaiHuTang") == 1 then
		nPrestige = math.floor(nPrestige / 2);
	end
	me.AddKinReputeEntry(nPrestige,"baihutang")		-- giang hồ uy vọng 
	me.AddOfferEntry(10, WeeklyTask.GETOFFER_TYPE_BAIHUTANG);	-- mỗi đi qua một tầng tăng 10điểm cống hiến độ 
	
	-- tăng bang hội kiến thiết tài chính và tương ứng cá nhân 、tộc trưởng 、bang chủ đích công ty cổ phần 	
	local nStockBaseCount = 10; -- công ty cổ phần số đếm 
	Tong:AddStockBaseCount_GS1(me.nId, nStockBaseCount, 0.7, 0.2, 0.1, 0, 0, WeeklyTask.GETOFFER_TYPE_BAIHUTANG);
	local nLevel = BaiHuTang:GetLevelByMapId(nMapId);
	local nFreeCount, tbFunExecute = SpecialEvent.ExtendAward:DoCheck("BaiHuTang", me, nLevel, BaiHuTang:GetFloor(nMapId)) 
	SpecialEvent.ExtendAward:DoExecute(tbFunExecute);
	local nToMapId = self.tbMapKey[nMapId];
	-- đá ra mission
	if (nToMapId == 225 or nToMapId == 233 or nToMapId == 274 or nToMapId ==821) then
		BaiHuTang:KickOutMission(me, nToMapId);
	end	
	if (nToMapId) then
		local tbSect = self.tbPKPos[MathRandom(#self.tbPKPos)];
		me.NewWorld(nToMapId, tbSect.nX / 32, tbSect.nY / 32);
	end
end

function BaiHuTang:SetTrapList()
	self.tbMapKey[226] = 230; self.tbMapKey[228] = 230;
	self.tbMapKey[234] = 238; self.tbMapKey[236] = 238;
	self.tbMapKey[227] = 231; self.tbMapKey[229] = 231;
	self.tbMapKey[235] = 239; self.tbMapKey[237] = 239;
	self.tbMapKey[230] = 232; self.tbMapKey[231] = 232;
	self.tbMapKey[238] = 240; self.tbMapKey[239] = 240;	
	self.tbMapKey[232] = 225; self.tbMapKey[240] = 233;
	-- sơ cấp trận thứ hai 
	self.tbMapKey[275] = 279; self.tbMapKey[277] = 279;
	self.tbMapKey[276] = 280; self.tbMapKey[278] = 280;
	self.tbMapKey[279] = 281; self.tbMapKey[280] = 281;
	self.tbMapKey[281] = 274;
	
	-- sơ cấp trận thứ ba 
	self.tbMapKey[334] = 338; self.tbMapKey[336] = 338;
	self.tbMapKey[335] = 339; self.tbMapKey[337] = 339;
	self.tbMapKey[338] = 340; self.tbMapKey[339] = 340;
	self.tbMapKey[340] = 333;
	
	--hoàng kim Bạch Hổ Đường 
	self.tbMapKey[822] = 826; self.tbMapKey[823] = 826;
	self.tbMapKey[824] = 827; self.tbMapKey[825] = 827;
	self.tbMapKey[826] = 828; self.tbMapKey[827] = 828;
	self.tbMapKey[828] = 821;
	
	local tbTestTrap = {};
	local tbTest = {};
	local tbMapIdList = {226,227,228,229,230,231,232,235,234,236,237,238,239,240,
						275, 276, 277, 278, 279, 280, 281, 
						334, 335, 336, 337, 338, 339, 340,
						822, 823, 824, 825, 826, 827, 828,
						};
	for _, nIndex in ipairs(tbMapIdList) do
		tbTest = Map:GetClass(nIndex);
		tbTestTrap = tbTest:GetTrapClass("to_exit");
		if (tbTestTrap) then
				tbTestTrap.OnPlayer = function (self)
				BaiHuTang:OnPlayerTrap(nIndex);
			end
		end
		if (tbTestTrap) then
			table.insert(self.tbTrapList, tbTestTrap);
		end
	end
end

local tbChuJiMap = Map:GetClass(BaiHuTang.ChuJi); 	-- sơ cấp （1）
local tbChuJiMap2 = Map:GetClass(BaiHuTang.ChuJi2); 	-- sơ cấp （2）
local tbChuJiMap3 = Map:GetClass(BaiHuTang.ChuJi3); 	-- sơ cấp （3）

--tiến nhập đại điện tựu vi trạng thái chiến đấu 
function tbChuJiMap:OnEnter(szParam)
	me.SetFightState(1);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end
--lúc rời đi thiết quay về phi trạng thái chiến đấu 
function tbChuJiMap:OnLeave(szParam)
	me.SetFightState(0);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end
--tiến nhập đại điện tựu vi trạng thái chiến đấu 
function tbChuJiMap2:OnEnter(szParam)
	me.SetFightState(1);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end
--lúc rời đi thiết quay về phi trạng thái chiến đấu 
function tbChuJiMap2:OnLeave(szParam)
	me.SetFightState(0);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end

--tiến nhập đại điện tựu vi trạng thái chiến đấu 
function tbChuJiMap3:OnEnter(szParam)
	me.SetFightState(1);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end
--lúc rời đi thiết quay về phi trạng thái chiến đấu 
function tbChuJiMap3:OnLeave(szParam)
	me.SetFightState(0);		--thiết trí trạng thái chiến đấu 
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
end


local tbGaoJi = Map:GetClass(BaiHuTang.GaoJi);
--tiến nhập đại điện tựu vi trạng thái chiến đấu 
function tbGaoJi:OnEnter(szParam)
	if LimitBHD.MapBoss_CheckNumAccount == 1 then
		if LimitBHD:CheckValidHardware(me) == 0 then
		LimitBHD:WriteZeroHardWare(me);
		end
		
		local nCheck,nNum,Msg = LimitBHD:CheckHardWare(me);
		if nCheck ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Hoạt động này giới hạn: <color=red>6<color> Accout/PC<color>"});
		me.NewWorld(1,1382,3077);
		end
	end
	
	if LimitBHD.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = LimitBHD:CheckHardWare(me);
	LimitBHD:WriteNewHardWare(me,nNumOld);
	end

	me.nPkModel = Player.emKPK_STATE_PRACTISE;
	me.SetFightState(1);		--thiết trí trạng thái chiến đấu 
end

--lúc rời đi thiết quay về phi trạng thái chiến đấu 
function tbGaoJi:OnLeave(szParam)
	local pPlayer = me;

	if LimitBHD.MapBoss_CheckNumAccount == 1 then
	local _,nNumOld,_ = LimitBHD:CheckHardWare(pPlayer);
	LimitBHD:TruNewHardWare(pPlayer,nNumOld);
	end

	me.nPkModel = Player.emKPK_STATE_PRACTISE;
	me.SetFightState(0);		--thiết trí trạng thái chiến đấu 
end

local tbGoldlen = Map:GetClass(BaiHuTang.Goldlen);
--tiến nhập đại điện tựu vi trạng thái chiến đấu 
function tbGoldlen:OnEnter(szParam)
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
	me.SetFightState(1);		--thiết trí trạng thái chiến đấu 
end

--lúc rời đi thiết quay về phi trạng thái chiến đấu 
function tbGoldlen:OnLeave(szParam)
	me.nPkModel = Player.emKPK_STATE_PRACTISE;
	me.SetFightState(0);		--thiết trí trạng thái chiến đấu 
end

local tbSecondChuYang	= Map:GetClass(230);	--sơ cấp tầng hai dương (1)
local tbSecondChuYin	= Map:GetClass(231);	--sơ cấp tầng hai âm (1)
local tbSecondChuYang2	= Map:GetClass(279);	--sơ cấp tầng hai dương (2)
local tbSecondChuYin2	= Map:GetClass(280);	--sơ cấp tầng hai âm (2)
local tbSecondChuYin3	= Map:GetClass(338);	--sơ cấp tầng hai âm (3)
local tbSecondChuYang3 = Map:GetClass(339);	--sơ cấp tầng hai âm (3)

function tbSecondChuYin:OnEnter(szParam)
end

function tbSecondChuYang:OnEnter(szParam)
end

function tbSecondChuYang2:OnEnter(szParam)
end

function tbSecondChuYin2:OnEnter(szParam)
end

local tbSecondGaoYang	= Map:GetClass(238);	--cao cấp tầng hai dương 
local tbSecondGaoYin	= Map:GetClass(239);	--cao cấp tầng hai âm 

function tbSecondGaoYin:OnEnter(szParam)
end

function tbSecondGaoYang:OnEnter(szParam)
end


local tbLastMapGao	= Map:GetClass(240);
function tbLastMapGao:OnEnter(szParam)
end
function tbLastMapGao:OnLeave(szParam)
	BaiHuTang:OnKickPlayer(me, 233);
end

local tbLastMapChu	= Map:GetClass(232);
function tbLastMapChu:OnEnter(szParam)
end
function tbLastMapChu:OnLeave(szParam)
	BaiHuTang:OnKickPlayer(me, 225);
end

--hoàng kim Bạch Hổ Đường 
local tbSecondGoldenYang	= Map:GetClass(826);	--cao cấp tầng hai dương 
local tbSecondGoldenYin	= Map:GetClass(827);	--cao cấp tầng hai âm 
function tbSecondGoldenYang:OnEnter(szParam)
end

function tbSecondGoldenYin:OnEnter(szParam)
end

local tbLastMapGolden	= Map:GetClass(828);	--cao cấp tầng hai âm 

function tbLastMapGolden:OnEnter(szParam)
end
function tbLastMapGolden:OnLeave(szParam)
	BaiHuTang:OnKickPlayer(me, 821);
end



function BaiHuTang:init()
	local tbNumColSet = {["TRAPX"]=1, ["TRAPY"]=1};
	local tbData = {};
	tbData = Lib:LoadTabFile("\\setting\\pvp\\map\\chuanrudian_dadian.txt", tbNumColSet);
	for _, tbRow in ipairs(tbData) do
		local tbPos = {
				nX = tbRow.TRAPX;
				nY = tbRow.TRAPY;
			}
		table.insert(BaiHuTang.tbDaDianPos, tbPos);
	end	
	tbData = Lib:LoadTabFile("\\setting\\pvp\\map\\xiaoguai.txt", tbNumColSet);
	for _, tbRow in ipairs(tbData) do
		local tbPos = {
			nX	= tbRow.TRAPX;
			nY	= tbRow.TRAPY
			};
		table.insert(BaiHuTang.tbAnimalPos, tbPos);
	end
	tbData = Lib:LoadTabFile("\\setting\\pvp\\map\\chuanrudian_pk.txt", tbNumColSet);
	for _, tbRow in ipairs(tbData) do
		local tbPos = {
			nX = tbRow.TRAPX;
			nY = tbRow.TRAPY;
			}
		table.insert(BaiHuTang.tbPKPos, tbPos);
	end
	BaiHuTang.tbBatte[self.ChuJi] = {MapId = {
												{  226, 227, 228, 229, 
													275, 276, 277, 278, 
													334, 335, 336, 337};  --tầng thứ nhất địa đồ 
												{	230, 231, 
													279, 280,
													338, 339 }; 		--tầng thứ hai địa đồ 
												{232, 281, 340};		--tầng thứ ba địa đồ 
											};
									tbNpcTemp = {2660, 2681, 2685}; 				--Quái nhỏ gỗ cốp pha Id
									tbBossTemp = {2661, 2682, 2686}					--Bossgỗ cốp pha Id
									};
										
	BaiHuTang.tbBatte[self.GaoJi] = {MapId = {
												{234, 235, 236, 237};
												{238, 239};
												{240};
	 									};
									tbNpcTemp	= {2662, 2683, 2687};
									tbBossTemp = {2663, 2684, 2688};
									};
	BaiHuTang.tbBatte[self.Goldlen] = {MapId = {
												{822, 823, 824, 825};
												{826, 827};
												{828};
	 									};
									tbNpcTemp	= {3683, 3685, 3687};
									tbBossTemp = {3684, 3686, 3688};
									};
	BaiHuTang:SetTrapList();
	
self.tbSysMsg[1] = "Hoạt động Bạch Hổ Đường chính thức bắt đầu.";
	self.tbSysMsg[2] = "Bạch hổ đường ngừng đăng ký, hoạt động bắt đầu";
	self.tbSysMsg[3] = "Bạch hổ đường thủ lĩnh tầng 1 đã xuất hiện.";
	self.tbSysMsg[4] = "Bạch hổ đường thủ lĩnh tầng 2 đã xuất hiện.";
	self.tbSysMsg[5] = "Bạch hổ đường thủ lĩnh tầng 3 đã xuất hiện.";
	self.tbSysMsg[6] = "Chúc mừng bạn đã khiêu chiến thành công Bạch Hổ Đường";
	self.tbSysMsg[7] = "Thời gian, bạn khiêu chiến Bạch Hổ Đường";
	self.nActionState = self.RESTSTATE; --vừa mới bắt đầu tương hoạt động thiết trí vi giữ gìn trạng thái 
end

BaiHuTang:init();
