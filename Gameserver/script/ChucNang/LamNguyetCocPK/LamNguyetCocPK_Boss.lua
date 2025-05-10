local tbBoss = Npc:GetClass("LamNguyetCocPK_Boss") -- Class của Boss

-- Danh sách thông số vật phẩm
local List_IdPhanThuong = {
    {Name = "Du Long Giác", Genre = 18, DetailType = 1, ParticularType = 4038, Level = 1}, -- Định nghĩa 1
    {Name = "Mảnh Cường Nhân", Genre = 18, DetailType = 1, ParticularType = 3941, Level = 2}, -- Định nghĩa 2
    {Name = "Bí Ẩn Sát Thần", Genre = 18, DetailType = 1, ParticularType = 3006, Level = 1}, -- Định nghĩa 3
    {Name = "Lệnh Bài Sát Thần PK", Genre = 18, DetailType = 1, ParticularType = 3001, Level = 1}, -- Định nghĩa 4
    {Name = "Chìa Khóa Hoành Thành", Genre = 18, DetailType = 1, ParticularType = 3017, Level = 1}, -- Định nghĩa 5
    {Name = "Tư Cách Anh Hùng", TaskGroup_TuCachAnhHung = 4537, TaskID_TuCachAnhHung = 1} -- Định nghĩa 6
}

-- Danh sách số lượng vật phẩm và điểm theo nhóm Boss
local List_Soluong = {
    [1] = {{0, 50}, {0, 100}, {0, 200}}, -- Định nghĩa 1: Du Long Giác
    [2] = {{1, 5, 10, 20, 50}, {1, 5, 10, 20, 50, 100}, {1, 5, 10, 20, 50, 100, 200}}, -- Định nghĩa 2: Mảnh Cường Nhân
    [3] = {{1, 5, 10, 20, 50}, {1, 5, 10, 20, 50, 100}, {1, 5, 10, 20, 50, 100, 200}}, -- Định nghĩa 3: Bí Ẩn Sát Thần
    [4] = {{1, 5, 10, 20, 50}, {1, 5, 10, 20, 50, 100}, {1, 5, 10, 20, 50, 100, 200}}, -- Định nghĩa 4: Lệnh Bài Sát Thần PK
    [5] = {{1, 2, 3, 4, 5}, {1, 2, 3, 4, 5}, {1, 2, 3, 4, 5}}, -- Định nghĩa 5: Chìa Khóa Hoành Thành
    [6] = {{1, 50}, {1, 100}, {1, 200}} -- Định nghĩa 6: Điểm Point Tư Cách Anh Hùng
}

-- Map tên Boss với nhóm (1, 2, 3) trong List_Soluong
local tbBossGroupMapping = {
    ["Thanh Mộc"] = 1,
    ["Xích Hỏa"] = 1,
    ["Tây Kim"] = 1,
    ["Huyền Thủy"] = 2,
    ["Hoàng Thổ"] = 3
}

-- Xử lý sự kiện khi Boss chết
function tbBoss:OnDeath(pNpcKiller)
    local tbLamNguyetCocPK = SpecialEvent.LamNguyetCocPK
    local nPlayerMapId = me.GetWorldPos()

    -- Kiểm tra người chơi tiêu diệt Boss trong bản đồ sự kiện
    if nPlayerMapId == tbLamNguyetCocPK.nMapId then
        local pKillerPlayer = pNpcKiller.GetPlayer()
        if pKillerPlayer then
            -- Cộng điểm giết Boss
            local nBonusPoints = self:AddKillPoints(pKillerPlayer, tbLamNguyetCocPK)

            -- Phát phần thưởng
            local szBossName = him.szName
            local nGroup = tbBossGroupMapping[szBossName]
            if nGroup then
                local tbRewardDetails = self:DistributeRewards(pKillerPlayer, nGroup)
                local nTaskPoints, nTotalTaskPoints = self:AddTaskPoints(pKillerPlayer, nGroup)
                self:BroadcastRewardMessage(pKillerPlayer, szBossName, tbRewardDetails, nBonusPoints, nTaskPoints, nTotalTaskPoints)
            end
        end
    end
end

-- Cộng điểm tích lũy khi tiêu diệt Boss
function tbBoss:AddKillPoints(pKillerPlayer, tbLamNguyetCocPK)
    for _, tbBossInfo in ipairs(tbLamNguyetCocPK.tbBoss) do
        if him.szName == tbBossInfo.name then
            local nGetPoint = tbLamNguyetCocPK.tbPlayer_List[pKillerPlayer.nId].nBonus or 0
            tbLamNguyetCocPK.tbPlayer_List[pKillerPlayer.nId].nBonus = nGetPoint + tbBossInfo.points

            -- Cập nhật số lượng và tổng điểm Boss bị tiêu diệt
            local stats = tbLamNguyetCocPK.tbBossKillStats[tbBossInfo.name]
            stats.count = stats.count + 1
            stats.totalPoints = stats.totalPoints + tbBossInfo.points

            return tbBossInfo.points -- Trả về số điểm nhận được
        end
    end
    return 0 -- Không có điểm nếu không tìm thấy Boss
end

-- Phân phát phần thưởng và trả về danh sách phần thưởng đã nhận
function tbBoss:DistributeRewards(pKillerPlayer, nGroup)
    local tbRewardDetails = {}
    for i, tbItem in ipairs(List_IdPhanThuong) do
        local tbQuantities = List_Soluong[i][nGroup]
        local nQuantity = self:GetRandomQuantity(tbQuantities)
        if nQuantity > 0 then
            if i == #List_IdPhanThuong then -- Nếu là dòng định nghĩa 6 (Tư Cách Anh Hùng)
                local nCurrentPoints = pKillerPlayer.GetTask(tbItem.TaskGroup_TuCachAnhHung, tbItem.TaskID_TuCachAnhHung)
                pKillerPlayer.SetTask(tbItem.TaskGroup_TuCachAnhHung, tbItem.TaskID_TuCachAnhHung, nCurrentPoints + nQuantity)
                table.insert(tbRewardDetails, {Name = tbItem.Name, Quantity = nQuantity})
            else
                pKillerPlayer.AddStackItem(tbItem.Genre, tbItem.DetailType, tbItem.ParticularType, tbItem.Level, nil, nQuantity)
                table.insert(tbRewardDetails, {Name = tbItem.Name, Quantity = nQuantity})
            end
        end
    end
    return tbRewardDetails
end

-- Cộng điểm Tư Cách Anh Hùng vào Task
function tbBoss:AddTaskPoints(pKillerPlayer, nGroup)
    local tbQuantities = List_Soluong[6][nGroup]
    local nTaskPoints = self:GetRandomInRange(tbQuantities) -- Lấy điểm ngẫu nhiên trong khoảng
    local nCurrentPoints = pKillerPlayer.GetTask(List_IdPhanThuong[6].TaskGroup_TuCachAnhHung, List_IdPhanThuong[6].TaskID_TuCachAnhHung)
    local nNewTotalPoints = nCurrentPoints + nTaskPoints
    pKillerPlayer.SetTask(List_IdPhanThuong[6].TaskGroup_TuCachAnhHung, List_IdPhanThuong[6].TaskID_TuCachAnhHung, nNewTotalPoints)
    return nTaskPoints, nNewTotalPoints
end

-- Lấy giá trị ngẫu nhiên từ danh sách
function tbBoss:GetRandomQuantity(tbQuantities)
    return tbQuantities[MathRandom(1, #tbQuantities)]
end

-- Lấy giá trị ngẫu nhiên trong khoảng (ví dụ: từ 1 đến 50)
function tbBoss:GetRandomInRange(tbRange)
    return MathRandom(tbRange[1], tbRange[2])
end

-- Gửi thông báo toàn server về phần thưởng
function tbBoss:BroadcastRewardMessage(pKillerPlayer, szBossName, tbRewardDetails, nBonusPoints, nTaskPoints, nTotalTaskPoints)
    local nMapId = pKillerPlayer.GetWorldPos()
    local szMapName = GetMapNameFormId(nMapId)
    local szRewardDetails = ""

    -- Tạo chuỗi thông tin phần thưởng
    for _, reward in ipairs(tbRewardDetails) do
        szRewardDetails = szRewardDetails .. string.format("\n- %s: %d", reward.Name, reward.Quantity)
    end

    -- Thêm điểm tích lũy và điểm Task vào thông báo
    szRewardDetails = szRewardDetails .. string.format("\n- Điểm Tích Lũy Lam Nguyệt: %d", nBonusPoints)
    szRewardDetails = szRewardDetails .. string.format("\n- Tư cách Anh hùng nhận được: %d/%d", nTaskPoints, nTotalTaskPoints)

    -- Tạo thông báo
    local szMsg = string.format(
        "<color=yellow><color=Turquoise>%s<color> đã chiến thắng <color=pink>%s<color> tại <color=green>%s<color> và nhận được phần thưởng:<color>%s",
        pKillerPlayer.szName, szBossName, szMapName, szRewardDetails
    )

    -- Gửi thông báo
    KDialog.MsgToGlobal(szMsg)
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
end
