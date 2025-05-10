
SpecialEvent.HoanhThanhPK = SpecialEvent.HoanhThanhPK or {};
local tbHoanhThanhPK = SpecialEvent.HoanhThanhPK;


function tbHoanhThanhPK:StartEvent_GS()
	local nTime = GetTime();
	local nWeekDay = tonumber(os.date("%w", nTime));
	local nCurTime = tonumber(os.date("%H%M", GetTime()));
	if self.Date_DangKy[nWeekDay] ~= 1 then
		return 0;		
	end	
	
	local szMsg = "<color=yellow>Lối vào <color=green>Hoành Thành Tây Hạ<color> đã được phát hiện, hãy nhanh chóng tiến vào để chuẩn bị!<color>"
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT,szMsg);
	
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	
	KDialog.MsgToGlobal(szMsg);
	
	self.tbPlayer_List = {};
	self:ResetFile();
	self:CreatNPC();
	self.nStatus = 1;
	self.nTimerId_BD = Timer:Register(self.TimeBD, self.StartGame_GS, self);--thời gian bắt đầu sự kiện
	-- self.nTimerId_End = Timer:Register(self.TimeEnd, self.EndGame_GS, self);--thời gian kết thúc sự kiện
	
end

function tbHoanhThanhPK:StartGame_GS()
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	local szMsg = "Hoành Thành Tây Hạ đã chính thức bắt đầu hoạt động!"
	KDialog.MsgToGlobal(szMsg);
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT,szMsg);
	
	self.nTimerId_End = Timer:Register(self.TimeEnd, self.EndGame_GS, self);--thời gian kết thúc sự kiện
	self.nTimerId_PK = Timer:Register(1 * Env.GAME_FPS, self.ActivePK, self);--thời gian bắt đầu sự kiện
	
	ClearMapNpc(self.nMapId);
	return 0;
end

function tbHoanhThanhPK:EndGame_GS()
	local szMsg = "<color=yellow>Hoạt động Hoành Thành Tây Hạ đã kết thúc!<color>";
	
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT,szMsg)
	if self:CheckOpenSK() == 0 then
		return 0;
	end	
	KDialog.MsgToGlobal(szMsg);
	

	self.nStatus = 2;
	
	--save ket qua
	self:WriteFile();
	
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
		if pPlayer then
			local nMapId, nX, nY = pPlayer.GetWorldPos();
			if nMapId == self.nMapId then
				pPlayer.nPkModel = Player.emKPK_STATE_PRACTISE;-- chuyen pk emKPK_STATE_BUTCHER
				pPlayer.SetFightState(0);
				Dialog:ShowBattleMsg(pPlayer, 0, 0);

				local nMapId, nReliveId  = pPlayer.GetRevivePos();
				local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
				pPlayer.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
				pPlayer.SetFightState(0);

			end
		end
	end
	
	if self.nTimerId_PK and self.nTimerId_PK > 0 then
		Timer:Close(self.nTimerId_PK);
		self.nTimerId_PK = 0;
	end
	

	return 0;
end

function tbHoanhThanhPK:ActivePK()
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
		if pPlayer then
			local nMapId, nX, nY = pPlayer.GetWorldPos();
			if nMapId == self.nMapId then
				if pPlayer.nFightState == 0 then
					pPlayer.SetFightState(1);
				end
				if pPlayer.nPkModel ~= Player.emKPK_STATE_BUTCHER then
					pPlayer.nPkModel = Player.emKPK_STATE_BUTCHER;-- chuyen pk emKPK_STATE_BUTCHER
				end
				self:OpenRightUI(pPlayer);
				self:UpdateRanking();
				self:AddPlayerTitle(pPlayer);
			end
		end
	end
end


function tbHoanhThanhPK:OpenRightUI(pPlayer)
	
	local szMsg = "";
	local nResTime = self:GetRestTime();
	local nBonus = self.tbPlayer_List[pPlayer.nId].nBonus;
	local nKillPlayerNum = self.tbPlayer_List[pPlayer.nId].nKillPlayerNum;
	local nRank = self.tbPlayer_List[pPlayer.nId].nRank;
	szMsg = "<color=green>Thời gian rời khỏi:<color> <color=white>%s<color>\n\n";
	szMsg = szMsg.."<color=yellow>Đánh bại người chơi: <color=red>"..nKillPlayerNum.."<color><color>\n";

	Dialog:SetBattleTimer(pPlayer, szMsg, nResTime);
	Dialog:SendBattleMsg(pPlayer, "", 1);
	Dialog:ShowBattleMsg(pPlayer, 1, 0);
end

function tbHoanhThanhPK:UpdateRanking()
	self.tbSortPlayer = {};
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		table.insert(self.tbSortPlayer, {nPlayerId = nPlayerId, nPoint = tbInfo.nBonus});
	end
	
	table.sort(self.tbSortPlayer, function(a, b) return a.nPoint > b.nPoint end);
	for nSort, tbInfo in ipairs(self.tbSortPlayer) do
		self.tbPlayer_List[tbInfo.nPlayerId].nRank = nSort;
	end
end

function tbHoanhThanhPK:CloseRightUI(pPlayer)
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end
function tbHoanhThanhPK:GetRestTime()
	if self.nTimerId_End > 0 then
		return Timer:GetRestTime(self.nTimerId_End);
	end
	return 0;
end

function tbHoanhThanhPK:CreatNPC()

	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return;
	end
	local pNpc1 = KNpc.Add2(7262,60,-1,self.nMapId,1695,3010);

	pNpc1.szName = "Xa Phu";
end


function tbHoanhThanhPK:_OnDeath(pKillerNpc)

	local nPlayerMapId, nPosX, nPosY = me.GetWorldPos();
	if nPlayerMapId == self.nMapId then
		me.ReviveImmediately(1);
		me.AddSkillState(786, 1, 1, 5 * Env.GAME_FPS);

--local nRand = MathRandom(1,#self.MapPos_Random)
--me.NewWorld(unpack(self.MapPos_Random[nRand]));
		
		local pKillerPlayer = pKillerNpc.GetPlayer();
		if pKillerPlayer then
			local nPoint = self:GetPoinByRank(me);
			
			local nGetPoint = self.tbPlayer_List[pKillerPlayer.nId].nBonus;
			--self.tbPlayer_List[pKillerPlayer.nId].nBonus = nGetPoint + nPoint;
			
			local nKillPlayerNum = self.tbPlayer_List[pKillerPlayer.nId].nKillPlayerNum;
			self.tbPlayer_List[pKillerPlayer.nId].nKillPlayerNum = nKillPlayerNum + 1;
		end
	end
end

function tbHoanhThanhPK:_OnLogin(bExchangeServerComing)
	if (bExchangeServerComing ~= 1) then
		local nMapId, nPosX, nPosY = me.GetWorldPos();
		if nMapId  == self.nMapId then
			local nMapId, nReliveId  = me.GetRevivePos();
			local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
			me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
			me.SetFightState(0);
		end
	end
end

--Add Boss--
function tbHoanhThanhPK:Start_Boss()		
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	
local nRand_ViTri1 = MathRandom(1,#self.ViTri_Dong)
local nRand_ViTri2 = MathRandom(1,#self.ViTri_Tay)
local nRand_ViTri3 = MathRandom(1,#self.ViTri_Nam)
local nRand_ViTri4 = MathRandom(1,#self.ViTri_Bac)
local nRand_ViTri5 = MathRandom(1,#self.ViTri_Dong)
local nRand_ViTri6 = MathRandom(1,#self.ViTri_Tay)
local nRand_ViTri7 = MathRandom(1,#self.ViTri_Nam)
local nRand_ViTri8 = MathRandom(1,#self.ViTri_Bac)
local nRand_ViTri9 = MathRandom(1,#self.ViTri_Dong)
local nRand_ViTri10 = MathRandom(1,#self.ViTri_Bac)

local nRand_IDBoss1 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss2 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss3 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss4 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss5 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss6 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss7 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss8 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss9 = MathRandom(1,#self.IDBoss)
local nRand_IDBoss10 = MathRandom(1,#self.IDBoss)

local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss1]), 120, -1,unpack(self.ViTri_Dong[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss2]), 120, -1,unpack(self.ViTri_Tay[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss3]), 120, -1,unpack(self.ViTri_Nam[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss4]), 120, -1,unpack(self.ViTri_Bac[nRand_ViTri4]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss5]), 120, -1,unpack(self.ViTri_Dong[nRand_ViTri5]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss6]), 120, -1,unpack(self.ViTri_Tay[nRand_ViTri6]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss7]), 120, -1,unpack(self.ViTri_Nam[nRand_ViTri7]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss8]), 120, -1,unpack(self.ViTri_Bac[nRand_ViTri8]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss9]), 120, -1,unpack(self.ViTri_Dong[nRand_ViTri9]));
local pNpc1	= KNpc.Add2(unpack(self.IDBoss[nRand_IDBoss10]), 120, -1,unpack(self.ViTri_Bac[nRand_ViTri10]));

local szMsg = "<color=yellow>10 <color=pink>Rương Dị Bảo<color> đã xuất hiện, hãy nhanh chóng đi tìm!<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);

end



function tbHoanhThanhPK:Dell_Boss()		
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	
ClearMapNpcWithName(2103, "Dị Bảo");

local szMsg = "<color=yellow><color=pink>Rương Dị Bảo<color> chưa tìm thấy đã lần lượt biến mất, hãy đợi lần xuất hiện tiếp theo!<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

PlayerEvent:RegisterGlobal("OnDeath", SpecialEvent.HoanhThanhPK._OnDeath, SpecialEvent.HoanhThanhPK);
PlayerEvent:RegisterGlobal("OnLogin", SpecialEvent.HoanhThanhPK._OnLogin, SpecialEvent.HoanhThanhPK);
