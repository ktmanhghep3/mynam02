SpecialEvent.BossReward = SpecialEvent.BossReward or {}
SpecialEvent.BossReward.BatTat = 0 -- 0: Tắt, 1: Mở

SpecialEvent.BossReward.tbBossConfig = {
    [0000] = {18, 1, 4038, 1, 5}, -- Phần thưởng cá nhân 1 cho Boss 1 (5 số lượng)
    [0000] = {18, 1, 4039, 1, 3}, -- Phần thưởng cá nhân 2 cho Boss 2 (3 số lượng)
    [0000] = {18, 1, 4039, 2, 10} -- Phần thưởng cá nhân 3 cho Boss 3 (10 số lượng)
}

SpecialEvent.BossReward.nLastProcessedNpcId = nil -- ID của Boss cuối cùng được xử lý

function SpecialEvent.BossReward:OnKillBoss()
    if self.BatTat ~= 1 then
        return -- Nếu script bị tắt, thoát ngay
    end

    local nNpcId = him.nTemplateId

    if self.nLastProcessedNpcId == nNpcId then 
        return -- Nếu đã xử lý Boss này, thoát ngay
    end

    local tbReward = self.tbBossConfig[nNpcId]
    if tbReward then
        self.nLastProcessedNpcId = nNpcId -- Đánh dấu Boss đã xử lý
        local szBossName = him.szName -- Lấy tên của Boss

        -- Trao phần thưởng cá nhân cho người tiêu diệt Boss
        me.AddStackItem(tbReward[1], tbReward[2], tbReward[3], tbReward[4], {bForceBind = 1}, tbReward[5])
        me.Msg(string.format("<color=cyan>Bạn đã tiêu diệt Boss: %s và nhận được phần thưởng cá nhân x%d!<color>", szBossName, tbReward[5]))
    end
end

function SpecialEvent.BossReward:RegisterEvent()
    if MODULE_GAMESERVER and not self.bEventRegistered then
        PlayerEvent:RegisterGlobal("OnKillNpc", function()
            SpecialEvent.BossReward:OnKillBoss()
        end)
        self.bEventRegistered = true
    end
end

SpecialEvent.BossReward:RegisterEvent()