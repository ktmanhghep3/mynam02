local SpecialEvent = SpecialEvent or {}
SpecialEvent.NVNgay_DanhBoss = {}
local tbEvent = SpecialEvent.NVNgay_DanhBoss

-- Danh sách thông số nhiệm vụ
tbEvent.TaskInfo = {
    TaskGroup = 4527,
    TaskLimitPerDay = 50, -- Số lần nhận nhiệm vụ trong ngày
    CurrentTaskCountID = 35,
    LastAcceptDateID = 36,
    CompletedTaskCountID = 37,
    RewardCountID = 38, -- Số lần nhận thưởng Tàn Sát Lệnh trong ngày
    RewardLimitPerDay = 10 -- Giới hạn số lần nhận thưởng Tàn Sát Lệnh trong ngày
}

-- Danh sách Boss chi tiết
tbEvent.BossList = {
    {Name = "Thiết Kỵ Song Đao", MapID = 2105, X = nil, Y = nil, BossId = 8035, RequiredAmount = 100, TaskID = 1, TaskID_NhanNhiemVu = 41},
    {Name = "Quân Cảnh Vệ", MapID = 2105, X = nil, Y = nil, BossId = 8036, RequiredAmount = 100, TaskID = 2, TaskID_NhanNhiemVu = 42},
    {Name = "Tê Giác Khôi", MapID = 130, X = 1773, Y = 3414, BossId = 2318, RequiredAmount = 1000, TaskID = 3, TaskID_NhanNhiemVu = 43},
    {Name = "Thiết Đôn", MapID = 130, X = 1692, Y = 3568, BossId = 2319, RequiredAmount = 1000, TaskID = 4, TaskID_NhanNhiemVu = 44},
    {Name = "Bạch Vũ Tiễn Sứ", MapID = 130, X = 1570, Y = 3551, BossId = 2320, RequiredAmount = 1000, TaskID = 5, TaskID_NhanNhiemVu = 45},
    {Name = "Thiết Mã Tướng", MapID = 130, X = 1596, Y = 3326, BossId = 2321, RequiredAmount = 1000, TaskID = 6, TaskID_NhanNhiemVu = 46},
    {Name = "Mâu Cổ Sứ", MapID = 131, X = 1800, Y = 3259, BossId = 2322, RequiredAmount = 1000, TaskID = 7, TaskID_NhanNhiemVu = 47},
    {Name = "Thiết Thủ Đao Khách", MapID = 131, X = 1805, Y = 3695, BossId = 2323, RequiredAmount = 1000, TaskID = 8, TaskID_NhanNhiemVu = 48},
    {Name = "Bách Độc Thủ", MapID = 131, X = 1641, Y = 3517, BossId = 2324, RequiredAmount = 1000, TaskID = 9, TaskID_NhanNhiemVu = 49},
    {Name = "Bạch Tu Tẩu", MapID = 131, X = 1646, Y = 3301, BossId = 2325, RequiredAmount = 1000, TaskID = 10, TaskID_NhanNhiemVu = 50},
    {Name = "Vô Diêm Hồn", MapID = 132, X = 1741, Y = 3386, BossId = 2326, RequiredAmount = 1000, TaskID = 11, TaskID_NhanNhiemVu = 51},
    {Name = "Ải Yên Tẩu", MapID = 132, X = 1772, Y = 3679, BossId = 2327, RequiredAmount = 1000, TaskID = 12, TaskID_NhanNhiemVu = 52},
    {Name = "Quỷ Diện Sinh", MapID = 132, X = 1561, Y = 3706, BossId = 2328, RequiredAmount = 1000, TaskID = 13, TaskID_NhanNhiemVu = 53},
    {Name = "Tàn Tích Dã Sứ", MapID = 132, X = 1569, Y = 3327, BossId = 2329, RequiredAmount = 1000, TaskID = 14, TaskID_NhanNhiemVu = 54},
    {Name = "Hành Sơn Hổ", MapID = 133, X = 1778, Y = 3197, BossId = 2330, RequiredAmount = 1000, TaskID = 15, TaskID_NhanNhiemVu = 55},
    {Name = "Hành Sơn Thú", MapID = 133, X = 1788, Y = 3694, BossId = 2331, RequiredAmount = 1000, TaskID = 16, TaskID_NhanNhiemVu = 56},
    {Name = "Xích Cước Sơn Khách", MapID = 133, X = 1564, Y = 3581, BossId = 2332, RequiredAmount = 1000, TaskID = 17, TaskID_NhanNhiemVu = 57},
    {Name = "Man Chùy", MapID = 133, X = 1582, Y = 3222, BossId = 2333, RequiredAmount = 1000, TaskID = 18, TaskID_NhanNhiemVu = 58},
    {Name = "Đoạt Mệnh Hoa Khôi", MapID = 134, X = 1863, Y = 3381, BossId = 2334, RequiredAmount = 1000, TaskID = 19, TaskID_NhanNhiemVu = 59},
    {Name = "Mị Ảnh", MapID = 134, X = 1640, Y = 3792, BossId = 2335, RequiredAmount = 1000, TaskID = 20, TaskID_NhanNhiemVu = 60},
    {Name = "Mê Hồn Thủ", MapID = 134, X = 1576, Y = 3446, BossId = 2336, RequiredAmount = 1000, TaskID = 21, TaskID_NhanNhiemVu = 61},
    {Name = "Nhiếp Tâm Mi", MapID = 134, X = 1646, Y = 3232, BossId = 2337, RequiredAmount = 1000, TaskID = 22, TaskID_NhanNhiemVu = 62},
    {Name = "Vũ Linh Tế Tự", MapID = 135, X = 1820, Y = 3349, BossId = 2338, RequiredAmount = 1000, TaskID = 23, TaskID_NhanNhiemVu = 63},
    {Name = "Phạn Chú Tăng", MapID = 135, X = 1743, Y = 3742, BossId = 2339, RequiredAmount = 1000, TaskID = 24, TaskID_NhanNhiemVu = 64},
    {Name = "Đạo Mộ Tặc", MapID = 135, X = 1593, Y = 3638, BossId = 2340, RequiredAmount = 1000, TaskID = 25, TaskID_NhanNhiemVu = 65},
    {Name = "Thú Hồn Cư Sĩ", MapID = 135, X = 1599, Y = 3442, BossId = 2341, RequiredAmount = 1000, TaskID = 26, TaskID_NhanNhiemVu = 66},
    {Name = "Điệp Ảnh Côn", MapID = 136, X = 1823, Y = 3164, BossId = 2342, RequiredAmount = 1000, TaskID = 27, TaskID_NhanNhiemVu = 67},
    {Name = "Lãng Kiếm Khách", MapID = 136, X = 1787, Y = 3493, BossId = 2343, RequiredAmount = 1000, TaskID = 28, TaskID_NhanNhiemVu = 68},
    {Name = "Cổ Lãng Tu Sĩ", MapID = 136, X = 1542, Y = 3323, BossId = 2344, RequiredAmount = 1000, TaskID = 29, TaskID_NhanNhiemVu = 69},
    {Name = "Lãng Đao Khách", MapID = 136, X = 1604, Y = 3097, BossId = 2345, RequiredAmount = 1000, TaskID = 30, TaskID_NhanNhiemVu = 70},
    {Name = "Ma Cổ Đồng", MapID = 137, X = 1837, Y = 3383, BossId = 2346, RequiredAmount = 1000, TaskID = 31, TaskID_NhanNhiemVu = 71},
    {Name = "Vô Tâm Thú", MapID = 137, X = 1802, Y = 3755, BossId = 2347, RequiredAmount = 1000, TaskID = 32, TaskID_NhanNhiemVu = 72},
    {Name = "Lang Nha Mãnh Sĩ", MapID = 137, X = 1614, Y = 3628, BossId = 2348, RequiredAmount = 1000, TaskID = 33, TaskID_NhanNhiemVu = 73},
    {Name = "Thất Tâm Nho", MapID = 137, X = 1639, Y = 3452, BossId = 2349, RequiredAmount = 1000, TaskID = 34, TaskID_NhanNhiemVu = 74}
}

-- Hàm chuyển đổi ID Map sang Tên Map
function tbEvent:GetMapNameFormId(nMapID)
    local mapNames = {
        [2105] = "Đông Hạ Lan Sơn",
        [130] = "Mông Cổ Vương Đình",
        [131] = "Nguyệt Nha Tuyền",
        [132] = "Tàn Tích Cung A Phòng",
        [133] = "Lương Sơn Bạc",
        [134] = "Thần Nữ Phong",
        [135] = "Tàn Tích Dạ Lang",
        [136] = "Cổ Lãng Dữ",
        [137] = "Đào Hoa Nguyên"
    }
    return mapNames[nMapID] or "Bản đồ không xác định"
end

-- Hàm reset nhiệm vụ và phần thưởng hàng ngày
function tbEvent:DailyReset()
    local nCurrentDate = tonumber(GetLocalDate("%Y%m%d"))
    local nLastAcceptDate = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.LastAcceptDateID)

    if nCurrentDate ~= nLastAcceptDate then
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CurrentTaskCountID, 0)
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CompletedTaskCountID, 0)
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.RewardCountID, 0)
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.LastAcceptDateID, nCurrentDate)
    end
end

-- Hàm hiển thị đối thoại nhiệm vụ
function tbEvent:OnDialog()
    -- Gọi hàm reset nhiệm vụ và phần thưởng hàng ngày
    self:DailyReset()

    local szCurrentTask = "Hiện tại không có nhiệm vụ hoạt động."
    local nCompletedTaskCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CompletedTaskCountID)
    local nTaskCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CurrentTaskCountID)
    local nRewardCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.RewardCountID)

    for _, tbBoss in ipairs(self.BossList) do
        local nProgress = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID)
        if nProgress > 0 then
            local szTaskStatus = nProgress >= tbBoss.RequiredAmount and "<color=green>Hoàn thành<color>" or string.format("<color=red>Chưa hoàn thành (%d/%d)<color>", nProgress, tbBoss.RequiredAmount)
            szCurrentTask = string.format("Nhiệm vụ hiện tại: Tiêu diệt %s - %s\nTên Bản đồ: %s", tbBoss.Name, szTaskStatus, self:GetMapNameFormId(tbBoss.MapID))
            break
        end
    end

    local szMsg = string.format("<bclr=0,0,200><color=white>Nhiệm Vụ Ngày:\nMật Lệnh Giang Hồ: Tàn Sát Lệnh\n<color=yellow>%s\nThực hiện Mật Lệnh theo yêu cầu để nhận thưởng!<color>\n\nNhiệm vụ trong ngày đã nhận: %d/%d\nNhiệm vụ trong ngày đã hoàn thành: %d/%d\nTàn Sát Lệnh đã nhận thưởng: %d/%d", szCurrentTask, nTaskCount, tbEvent.TaskInfo.TaskLimitPerDay, nCompletedTaskCount, tbEvent.TaskInfo.TaskLimitPerDay, nRewardCount, tbEvent.TaskInfo.RewardLimitPerDay)
    
    local tbOpt = {
        {"<bclr=0,0,200><color=white>Nhận nhiệm vụ Mật Lệnh", self.AcceptRandomTask, self},
        {"<bclr=0,0,200><color=white>Kiểm tra và nhận thưởng Mật Lệnh", self.CheckProgress, self},
        {"<bclr=0,0,200><color=white>Hủy nhiệm vụ Mật Lệnh hiện tại", self.CancelCurrentTask, self},
        {"<bclr=0,0,200><color=white>Hướng Dẫn Nhiệm Vụ", self.HelpMenu, self},
        {"Kết thúc đối thoại"}
    }

    if nCompletedTaskCount >= 5 and nCompletedTaskCount % 5 == 0 then
        table.insert(tbOpt, 5, {"<bclr=0,0,200><color=white>Nhận thưởng hoàn thành Tàn Sát Lệnh", self.ClaimSpecialReward, self})
    end

    Dialog:Say(szMsg, tbOpt)
end

-- Hàm nhận nhiệm vụ ngẫu nhiên
function tbEvent:AcceptRandomTask()
    local nTaskCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CurrentTaskCountID)

    if nTaskCount >= tbEvent.TaskInfo.TaskLimitPerDay then
        Dialog:Say(string.format("<color=red>Bạn đã nhận đủ %d nhiệm vụ trong ngày. Vui lòng chờ đến ngày mai để nhận thêm nhiệm vụ.<color>", tbEvent.TaskInfo.TaskLimitPerDay))
        return
    end

    for _, tbBoss in ipairs(self.BossList) do
        if me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID) > 0 then
            Dialog:Say("<color=red>Bạn chưa hoàn thành nhiệm vụ hiện tại. Hãy hoàn thành trước khi nhận nhiệm vụ mới!<color>")
            return
        end
    end

    local tbSelectedBoss = self.BossList[MathRandom(1, #self.BossList)]
    local szMapName = self:GetMapNameFormId(tbSelectedBoss.MapID)

    me.SetTask(tbEvent.TaskInfo.TaskGroup, tbSelectedBoss.TaskID, 0)
    me.SetTask(tbEvent.TaskInfo.TaskGroup, tbSelectedBoss.TaskID_NhanNhiemVu, 1)
    me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CurrentTaskCountID, nTaskCount + 1)

    local szTaskName = string.format("Nhiệm vụ: Tiêu diệt %s", tbSelectedBoss.Name)
    local szMsg = string.format("<color=yellow>%s\n\nNhiệm vụ mới đã được bắt đầu! Tiêu diệt %s tại %s để hoàn thành nhiệm vụ.<color>\n\nSố lần nhận nhiệm vụ trong ngày: %d/%d", szTaskName, tbSelectedBoss.Name, szMapName, nTaskCount + 1, tbEvent.TaskInfo.TaskLimitPerDay)
    
    local tbOpt = {
        {"Kết thúc đối thoại"}
    }

    if tbSelectedBoss.X and tbSelectedBoss.Y then
        table.insert(tbOpt, 1, {"<color=green>Truyền tống đến nơi chiến đấu<color>", self.TeleportToBoss, self, tbSelectedBoss.MapID, tbSelectedBoss.X, tbSelectedBoss.Y})
    end

    Dialog:Say(szMsg, tbOpt)
end

-- Hàm truyền tống đến Boss
function tbEvent:TeleportToBoss(nMapID, nX, nY)
    me.NewWorld(nMapID, nX, nY)
end

-- Hàm hủy nhiệm vụ hiện tại
function tbEvent:CancelCurrentTask()
    for _, tbBoss in ipairs(self.BossList) do
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID, 0)
        me.SetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID_NhanNhiemVu, 0)
    end
    Dialog:Say("Nhiệm vụ hiện tại đã được hủy. Tất cả các tiến độ đã được reset về 0.")
end

-- Hàm kiểm tra tiến độ nhiệm vụ
function tbEvent:CheckProgress()
    for _, tbBoss in ipairs(self.BossList) do
        if me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID) > 0 then
            local nProgress = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID)
            local szMapName = self:GetMapNameFormId(tbBoss.MapID)
            local szTaskName = string.format("Nhiệm vụ: Tiêu diệt %s", tbBoss.Name)
            local szMsg = string.format("%s\n\nTiến độ hiện tại tại %s:\n- %s: %d/%d", szTaskName, szMapName, tbBoss.Name, nProgress, tbBoss.RequiredAmount)
            local tbOpt = {}

            if nProgress >= tbBoss.RequiredAmount then
                table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận thưởng", self.ClaimReward, self})
            else
                table.insert(tbOpt, {"<color=gray>Chưa đủ điều kiện để nhận thưởng<color>"})
            end

            table.insert(tbOpt, {"Kết thúc đối thoại"})
            Dialog:Say(szMsg, tbOpt)
            return
        end
    end
    Dialog:Say("Hiện tại bạn không có nhiệm vụ nào đang hoạt động!")
end

-- Hàm nhận thưởng
function tbEvent:ClaimReward()
    for _, tbBoss in ipairs(self.BossList) do
        if me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID) > 0 then
            local nProgress = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID)
            if nProgress < tbBoss.RequiredAmount then
                Dialog:Say("Bạn chưa hoàn thành nhiệm vụ hoặc không đủ điểm!")
                return
            end

            local nCompletedTaskCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CompletedTaskCountID) + 1
            me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CompletedTaskCountID, nCompletedTaskCount)
            me.SetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID, 0)
            me.SetTask(tbEvent.TaskInfo.TaskGroup, tbBoss.TaskID_NhanNhiemVu, 0)
            me.AddItem(18, 1, 4038, 1)

            local szMapName = self:GetMapNameFormId(tbBoss.MapID)
            local szTaskName = string.format("Nhiệm vụ: Tiêu diệt %s", tbBoss.Name)
            Dialog:Say(string.format("<color=yellow>%s\n\nChúc mừng! Bạn đã nhận phần thưởng cho nhiệm vụ tiêu diệt %s tại %s!<color>\n\nSố lần hoàn thành nhiệm vụ trong ngày: %d/%d", szTaskName, tbBoss.Name, szMapName, nCompletedTaskCount, tbEvent.TaskInfo.TaskLimitPerDay))
            return
        end
    end
    Dialog:Say("Bạn chưa hoàn thành nhiệm vụ hoặc không có nhiệm vụ hoạt động!")
end

-- Hàm nhận thưởng đặc biệt khi hoàn thành 5 nhiệm vụ
function tbEvent:ClaimSpecialReward()
    local nCompletedTaskCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.CompletedTaskCountID)
    if nCompletedTaskCount < 5 or nCompletedTaskCount % 5 ~= 0 then
        Dialog:Say("Bạn chưa hoàn thành đủ 5 nhiệm vụ để nhận thưởng Tàn Sát Lệnh.")
        return
    end

    local nRewardCount = me.GetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.RewardCountID)
    if nRewardCount >= tbEvent.TaskInfo.RewardLimitPerDay then
        Dialog:Say("Bạn đã nhận đủ Tàn Sát Lệnh trong ngày. Vui lòng chờ đến ngày mai để nhận thêm phần thưởng.")
        return
    end

    me.SetTask(tbEvent.TaskInfo.TaskGroup, tbEvent.TaskInfo.RewardCountID, nRewardCount + 1)
    me.AddStackItem(18,1,4038,1,nil,3); --Du Long Giác
    me.AddStackItem(18,1,4041,6,nil,1); --Bản đồ Bích Ba Động chưa giám định
    Dialog:Say(string.format("Chúc mừng! Bạn đã nhận phần thưởng Tàn Sát Lệnh lần: %d/%d", nRewardCount + 1, tbEvent.TaskInfo.RewardLimitPerDay))
end

-- Hướng dẫn
function tbEvent:HelpMenu()
    local szGuide = [[
Hướng Dẫn Nhiệm Vụ Hàng Ngày:
Mật Lệnh Giang Hồ: Tàn Sát Lệnh

1. Nhiệm vụ Mật Lệnh:
- Là nhận nhiệm vụ đánh quái các bản đồ quy định.
2. Tàn Sát Lệnh:
- Khi hoàn thành 5 Nhiệm vụ Mật Lệnh sẽ nhận thưởng: Tàn Sát Lệnh
3. Quy định:
- 1 Ngày chỉ nhận và hoàn thành: 50 Mật Lệnh, 10 lần Tàn Sát Lệnh
- Hủy Nhiệm vụ Mật Lệnh vẫn tính là đã nhận nhiệm vụ.
]]

    Dialog:Say(szGuide)
end