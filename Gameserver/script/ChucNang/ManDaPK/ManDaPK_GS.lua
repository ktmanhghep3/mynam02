
SpecialEvent.ManDaPK = SpecialEvent.ManDaPK or {};
local tbManDaPk = SpecialEvent.ManDaPK;


function tbManDaPk:StartEvent_GS()
	local nTime = GetTime();
	local nWeekDay = tonumber(os.date("%w", nTime));
	local nCurTime = tonumber(os.date("%H%M", GetTime()));
	if self.Date_DangKy[nWeekDay] ~= 1 then
		return 0;		
	end	
	
	local szMsg = "<color=green>Mạn Đà Trang<color> đã bắt đầu Báo danh, <color=cyan>thời gian còn 10 phút<color>, Nhân sĩ Võ lâm nhanh chóng báo danh tham gia!<color>"
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

function tbManDaPk:StartGame_GS()
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	local szMsg = "Mạn Đà Chiến đã chính thức bắt đầu!"
	KDialog.MsgToGlobal(szMsg);
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT,szMsg);
	
	self.nTimerId_End = Timer:Register(self.TimeEnd, self.EndGame_GS, self);--thời gian kết thúc sự kiện
	self.nTimerId_PK = Timer:Register(1 * Env.GAME_FPS, self.ActivePK, self);--thời gian bắt đầu sự kiện
	
	ClearMapNpc(self.nMapId);
	return 0;
end

function tbManDaPk:EndGame_GS()
	local szMsg = "<color=yellow>Hoạt động Mạn Đà Trang đã kết thúc! Đã có thể nhận thưởng<color>";
	
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

function tbManDaPk:ActivePK()
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


function tbManDaPk:OpenRightUI(pPlayer)
	
	local szMsg = "";
	local nResTime = self:GetRestTime();
	local nBonus = self.tbPlayer_List[pPlayer.nId].nBonus;
	local nKillPlayerNum = self.tbPlayer_List[pPlayer.nId].nKillPlayerNum;
	local nRank = self.tbPlayer_List[pPlayer.nId].nRank;
	szMsg = "<color=green>Thời gian:<color> <color=white>%s<color>\n\n";
	szMsg = szMsg.."<color=yellow>Xếp hạng: <color=pink>"..nRank.."<color><color>\n";
	szMsg = szMsg.."<color=yellow>Tích lũy: <color=pink>"..nBonus.."<color><color>\n";
	szMsg = szMsg.."<color=yellow>Đánh bại: <color=pink>"..nKillPlayerNum.."<color><color>\n";

	Dialog:SetBattleTimer(pPlayer, szMsg, nResTime);
	Dialog:SendBattleMsg(pPlayer, "", 1);
	Dialog:ShowBattleMsg(pPlayer, 1, 0);
end

function tbManDaPk:UpdateRanking()
	self.tbSortPlayer = {};
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		table.insert(self.tbSortPlayer, {nPlayerId = nPlayerId, nPoint = tbInfo.nBonus});
	end
	
	table.sort(self.tbSortPlayer, function(a, b) return a.nPoint > b.nPoint end);
	for nSort, tbInfo in ipairs(self.tbSortPlayer) do
		self.tbPlayer_List[tbInfo.nPlayerId].nRank = nSort;
	end
end

function tbManDaPk:CloseRightUI(pPlayer)
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end
function tbManDaPk:GetRestTime()
	if self.nTimerId_End > 0 then
		return Timer:GetRestTime(self.nTimerId_End);
	end
	return 0;
end

function tbManDaPk:CreatNPC()

	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return;
	end
	local pNpc1 = KNpc.Add2(7262,60,-1,self.nMapId,1623,3252);

	pNpc1.szName = "Xa Phu";
end


function tbManDaPk:_OnDeath(pKillerNpc)

	local nPlayerMapId, nPosX, nPosY = me.GetWorldPos();
	if nPlayerMapId == self.nMapId then
		me.ReviveImmediately(1);
		me.AddSkillState(786, 1, 1, 10 * Env.GAME_FPS);
		
		local pKillerPlayer = pKillerNpc.GetPlayer();
		if pKillerPlayer then
			local nPoint = self:GetPoinByRank(me);
			
			local nGetPoint = self.tbPlayer_List[pKillerPlayer.nId].nBonus;
			self.tbPlayer_List[pKillerPlayer.nId].nBonus = nGetPoint + nPoint;
			
			local nKillPlayerNum = self.tbPlayer_List[pKillerPlayer.nId].nKillPlayerNum;
			self.tbPlayer_List[pKillerPlayer.nId].nKillPlayerNum = nKillPlayerNum + 1;
		end
	end
end
function tbManDaPk:_OnLogin(bExchangeServerComing)
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
PlayerEvent:RegisterGlobal("OnDeath", SpecialEvent.ManDaPK._OnDeath, SpecialEvent.ManDaPK);
PlayerEvent:RegisterGlobal("OnLogin", SpecialEvent.ManDaPK._OnLogin, SpecialEvent.ManDaPK);
