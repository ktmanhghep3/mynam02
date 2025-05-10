
SpecialEvent.LamNguyetCocPK = SpecialEvent.LamNguyetCocPK or {};
local tbLamNguyetCocPK = SpecialEvent.LamNguyetCocPK;


function tbLamNguyetCocPK:StartEvent_GS()
    local nTime = GetTime()
    local nWeekDay = tonumber(os.date("%w", nTime))
    if self.Date_DangKy[nWeekDay] ~= 1 then
        return 0
    end

    local szMsg = "<color=yellow>Lối vào <color=green>Lam Nguyệt Cốc<color> đã được phát hiện, hãy nhanh chóng tiến vào để chuẩn bị!<color>"
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)

    if self:CheckOpenSK() == 0 then
        return 0
    end

    KDialog.MsgToGlobal(szMsg)

    self.tbPlayer_List = {}
    self:ResetFile()
    self:CreatNPC()
    self.nStatus = 1
    self.nTimerId_BD = Timer:Register(self.TimeBD, self.StartGame_GS, self)

    -- Gọi Boss lần đầu
    self.nTimerId_Boss = Timer:Register(self.TimeCallBoss, self.Start_Boss, self)
end

function tbLamNguyetCocPK:StartGame_GS()
	if self:CheckOpenSK() == 0 then
		return 0;
	end
	local szMsg = "Lam Nguyệt Cốc đã chính thức bắt đầu giao tranh!"
	KDialog.MsgToGlobal(szMsg);
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	
	self.nTimerId_End = Timer:Register(self.TimeEnd, self.EndGame_GS, self); -- thời gian kết thúc sự kiện
	self.nTimerId_PK = Timer:Register(1 * Env.GAME_FPS, self.ActivePK, self); -- thời gian bắt đầu sự kiện
	
	ClearMapNpc(self.nMapId);
	return 0;
end

function tbLamNguyetCocPK:EndGame_GS()
    local szMsg = "<color=yellow>Hoạt động Lam Nguyệt Cốc đã kết thúc!<color>"
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)

    self.nStatus = 2
    self:WriteFile()

    -- Reset thông số đánh bại các Cao thủ
    for bossName, stats in pairs(self.tbBossKillStats) do
        stats.count = 0
        stats.totalPoints = 0
    end

    for nPlayerId, _ in pairs(self.tbPlayer_List) do
        local pPlayer = KPlayer.GetPlayerObjById(nPlayerId)
        if pPlayer then
            local nMapId, nReliveId = pPlayer.GetRevivePos()
            local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId)
            pPlayer.NewWorld(nMapId, nReliveX / 32, nReliveY / 32)
            pPlayer.SetFightState(0)
        end
    end

    if self.nTimerId_PK and self.nTimerId_PK > 0 then
        Timer:Close(self.nTimerId_PK)
        self.nTimerId_PK = 0
    end

    if self.nTimerId_Boss and self.nTimerId_Boss > 0 then
        Timer:Close(self.nTimerId_Boss)
        self.nTimerId_Boss = 0
    end

    if self.nTimerId_DelBoss and self.nTimerId_DelBoss > 0 then
        Timer:Close(self.nTimerId_DelBoss)
        self.nTimerId_DelBoss = 0
    end

    return 0
end

function tbLamNguyetCocPK:ActivePK()
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


function tbLamNguyetCocPK:OpenRightUI(pPlayer)
    local szMsg = ""
    local nResTime = self:GetRestTime()
    local nBonus = self.tbPlayer_List[pPlayer.nId].nBonus
    local nKillPlayerNum = self.tbPlayer_List[pPlayer.nId].nKillPlayerNum
    local nRank = self.tbPlayer_List[pPlayer.nId].nRank
    local nTuCachAnhHung_Total = me.GetTask(self.TaskGroup_TuCachAnhHung, self.TaskID_TuCachAnhHung)

    -- Gọi hàm định dạng thời gian để hiển thị phút-giây
    local szFormattedTime = self:FormatTime(math.floor(nResTime / Env.GAME_FPS))

    szMsg = string.format("<color=green>Thời gian rời khỏi còn:<color> <color=white>%s<color>\n\n", szFormattedTime)
    szMsg = szMsg .. string.format("<color=yellow>Xếp hạng hiện tại: <color=red>%d<color><color>\n", nRank)
    szMsg = szMsg .. string.format("<color=yellow>Đánh bại người chơi: <color=red>%d<color><color>\n", nKillPlayerNum)
    szMsg = szMsg .. string.format("<color=yellow>Tích lũy Lam Nguyệt: <color=cyan>%d<color><color>\n", nBonus)
    szMsg = szMsg .. string.format("<color=yellow>Tư Cách Anh Hùng: <color=cyan>%d<color><color>\n", nTuCachAnhHung_Total)

    -- Thêm phần hiển thị cho từng Boss
    szMsg = szMsg .. "\n<color=green>Đánh bại các Cao thủ:<color>\n"
    for bossName, stats in pairs(self.tbBossKillStats) do
        szMsg = szMsg .. string.format("<color=yellow>%s: <color=cyan>%d<color> - Tổng điểm: <color=cyan>%d<color><color>\n", bossName, stats.count, stats.totalPoints)
    end

    Dialog:SetBattleTimer(pPlayer, szMsg, nResTime)
    Dialog:SendBattleMsg(pPlayer, "", 1)
    Dialog:ShowBattleMsg(pPlayer, 1, 0)
end

function tbLamNguyetCocPK:UpdateRanking()
	self.tbSortPlayer = {};
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		table.insert(self.tbSortPlayer, {nPlayerId = nPlayerId, nPoint = tbInfo.nBonus});
	end
	
	table.sort(self.tbSortPlayer, function(a, b) return a.nPoint > b.nPoint end);
	for nSort, tbInfo in ipairs(self.tbSortPlayer) do
		self.tbPlayer_List[tbInfo.nPlayerId].nRank = nSort;
	end
end

function tbLamNguyetCocPK:CloseRightUI(pPlayer)
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end

function tbLamNguyetCocPK:GetRestTime()
    if self.nTimerId_End > 0 then
        return Timer:GetRestTime(self.nTimerId_End)
    end
    return 0
end

function tbLamNguyetCocPK:FormatTime(nTime)
    local nMinutes = math.floor(nTime / 60)
    local nSeconds = nTime % 60
    return string.format("%d phút %d giây", nMinutes, nSeconds)
end


function tbLamNguyetCocPK:CreatNPC()

	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return;
	end
	local pNpc1 = KNpc.Add2(7262,60,-1,self.nMapId,1659,3210);

	pNpc1.szName = "Xa Phu";
end


function tbLamNguyetCocPK:_OnDeath(pKillerNpc)

	local nPlayerMapId, nPosX, nPosY = me.GetWorldPos();
	if nPlayerMapId == self.nMapId then
		me.ReviveImmediately(1);
		me.AddSkillState(786, 1, 1, 10 * Env.GAME_FPS);

local nRand = MathRandom(1,#self.MapPos_Random)
me.NewWorld(unpack(self.MapPos_Random[nRand]));
		
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

function tbLamNguyetCocPK:_OnLogin(bExchangeServerComing)
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
function tbLamNguyetCocPK:Start_Boss()
    -- Nếu đã gọi đủ 5 lần Boss, dừng gọi Boss
    if self.nBossCallCount >= self.NumBossCallBeforeDelete then
        return 0 -- Dừng gọi Boss, chờ xóa Boss
    end

    -- Gọi Boss ngẫu nhiên từ danh sách
    local nRandBoss = MathRandom(#self.tbBoss)
    local nRandPos = MathRandom(#self.tbBossPositions)

    local tbBoss = self.tbBoss[nRandBoss]
    local tbPos = self.tbBossPositions[nRandPos]
    KNpc.Add2(tbBoss.id, 250, -1, self.nMapId, tbPos[1], tbPos[2])

    -- Tăng số lần gọi Boss
    self.nBossCallCount = self.nBossCallCount + 1

    -- Hiển thị thông báo số lần gọi Boss
    local szMsg = string.format("<color=yellow>Nguyệt Cốc Cao Thủ <color=pink>%s<color> đã xuất hiện tại <pos=%d,%d,%d> lần thứ %d!<color>", 
        tbBoss.name, self.nMapId, tbPos[1], tbPos[2], self.nBossCallCount)
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
    KDialog.MsgToGlobal(szMsg)

    -- Nếu đạt số lần gọi Boss thứ 5, dừng và chờ xóa Boss
    if self.nBossCallCount >= self.NumBossCallBeforeDelete then
        Timer:Register(self.TimeDelayDeleteBoss, self.Dell_Boss, self)
        return 0 -- Dừng vòng lặp
    end

    return self.TimeCallBoss -- Tiếp tục gọi Boss sau thời gian định nghĩa
end

function tbLamNguyetCocPK:Dell_Boss()
    -- Xóa toàn bộ boss trong bản đồ
    for _, tbBoss in pairs(self.tbBoss) do
        ClearMapNpcWithName(self.nMapId, tbBoss.name)
    end

    local szMsg = "<color=green>Tất cả cao thủ ẩn danh Lam Nguyệt Cốc lại bị mất tung tích, hãy chờ đợi thông báo kế tiếp trong vài phút!<color>"
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
    KDialog.MsgToGlobal(szMsg)

    -- Di chuyển người chơi trong bản đồ đến vị trí ngẫu nhiên
    for nPlayerId, _ in pairs(self.tbPlayer_List) do
        local pPlayer = KPlayer.GetPlayerObjById(nPlayerId)
        if pPlayer then
            local nRandPos = MathRandom(#self.tbBossPositions)
            local tbPos = self.tbBossPositions[nRandPos]
            pPlayer.NewWorld(self.nMapId, tbPos[1], tbPos[2])
        end
    end

    -- Reset số lần gọi Boss
    self.nBossCallCount = 0

    -- Đăng ký lại Timer cho vòng lặp mới
    self.nTimerId_Boss = Timer:Register(self.TimeCallBoss, self.Start_Boss, self)

    return 0
end

PlayerEvent:RegisterGlobal("OnDeath", SpecialEvent.LamNguyetCocPK._OnDeath, SpecialEvent.LamNguyetCocPK);
PlayerEvent:RegisterGlobal("OnLogin", SpecialEvent.LamNguyetCocPK._OnLogin, SpecialEvent.LamNguyetCocPK);
