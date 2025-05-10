Require("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai_def.lua");

if (not MODULE_GAMESERVER) then
	return 0;
end

local tbTuQuaNhai = Boss.TuQuaNhai;

-- Truyền tống nhân vật đến một vị trí ngẫu nhiên
function tbTuQuaNhai:TeleportToRandomPosition(pPlayer)
	if #self.tbRandomPositions == 0 then
		print("Danh sách vị trí ngẫu nhiên trống!");
		return;
	end

	local nRandomIndex = MathRandom(1, #self.tbRandomPositions);
	local tbRandomPos = self.tbRandomPositions[nRandomIndex];

	pPlayer.NewWorld(tbRandomPos[1], tbRandomPos[2], tbRandomPos[3]);
	Dialog:SendBlackBoardMsg(pPlayer, string.format("Bạn đã được truyền tống đến một vị trí ngẫu nhiên!"));
end

-- Khi người chơi vào bản đồ
function tbTuQuaNhai:OnPlayerEnter(pPlayer)
	if not pPlayer then
		return;
	end

	local nCurrentPoints = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_USE_POINTS);
	if nCurrentPoints < self.MIN_REQUIRED_POINTS then
		Dialog:SendBlackBoardMsg(pPlayer, "Điểm Tư Cách Anh Hùng không đủ để vào bản đồ!");
		pPlayer.NewWorld(self.REMOVE_MAP_ID, self.REMOVE_POS_X, self.REMOVE_POS_Y);
		return;
	end

	-- Thêm người chơi vào danh sách và truyền tống đến vị trí ngẫu nhiên
	self.tbPlayerList[pPlayer.nId] = true;
	self:TeleportToRandomPosition(pPlayer);

	-- Hiển thị điểm Tư Cách Anh Hùng
	self:UpdateHeroPointsUI(pPlayer, nCurrentPoints);
end

-- Khi người chơi rời bản đồ
function tbTuQuaNhai:OnPlayerLeave(pPlayer)
	if not pPlayer then
		return;
	end

	self.tbPlayerList[pPlayer.nId] = nil;
	self:CloseHeroPointsUI(pPlayer); -- Đóng giao diện hiển thị nếu có
end

-- Hiển thị điểm Tư Cách Anh Hùng trên màn hình
function tbTuQuaNhai:UpdateHeroPointsUI(pPlayer, nPoints)
	local szMsg = string.format("<color=green>Tư Cách Anh Hùng: <color=white>%d<color>", nPoints);
	Dialog:SetBattleTimer(pPlayer, szMsg, 1); -- 1 là thời gian giữ giao diện mở
	Dialog:SendBattleMsg(pPlayer, "", 1);
	Dialog:ShowBattleMsg(pPlayer, 1, 0);
end

-- Đóng giao diện hiển thị điểm
function tbTuQuaNhai:CloseHeroPointsUI(pPlayer)
	Dialog:ShowBattleMsg(pPlayer, 0, 0);
end

-- Timer trừ điểm Task liên tục
function tbTuQuaNhai:OnTimer()
	for nPlayerId, _ in pairs(self.tbPlayerList) do
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);

		if pPlayer then
			local nCurrentPoints = pPlayer.GetTask(self.TASK_GROUP_ID, self.TASK_USE_POINTS);

			-- Trừ điểm theo khoảng thời gian
			local nNewPoints = math.max(0, nCurrentPoints - 1);
			pPlayer.SetTask(self.TASK_GROUP_ID, self.TASK_USE_POINTS, nNewPoints);

			-- Cập nhật giao diện
			self:UpdateHeroPointsUI(pPlayer, nNewPoints);

			-- Nếu điểm thấp hơn yêu cầu, đưa ra khỏi bản đồ
			if nNewPoints <= 0 then
				self.tbPlayerList[pPlayer.nId] = nil; -- Loại bỏ khỏi danh sách người chơi trong map
				self:CloseHeroPointsUI(pPlayer); -- Đóng giao diện hiển thị điểm
				pPlayer.NewWorld(self.REMOVE_MAP_ID, self.REMOVE_POS_X, self.REMOVE_POS_Y);
				Dialog:SendBlackBoardMsg(pPlayer, "Điểm Tư Cách Anh Hùng đã hết, bạn bị truyền tống ra ngoài!");
			end
		else
			self.tbPlayerList[nPlayerId] = nil;
		end
	end

	return self.POINTS_CONSUMED_INTERVAL * Env.GAME_FPS; -- Lặp lại mỗi 2 giây
end

-- Đăng ký sự kiện khởi động
ServerEvent:RegisterServerStartFunc(function()
	tbTuQuaNhai:Init(); -- Khởi tạo hệ thống và load danh sách vị trí
	Timer:Register(tbTuQuaNhai.POINTS_CONSUMED_INTERVAL * Env.GAME_FPS, tbTuQuaNhai.OnTimer, tbTuQuaNhai);
end);