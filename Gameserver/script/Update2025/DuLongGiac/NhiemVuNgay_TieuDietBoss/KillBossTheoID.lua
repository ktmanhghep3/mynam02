local SpecialEvent = SpecialEvent or {}
SpecialEvent.KillBossTheoID = {}
local tbEvent = SpecialEvent.KillBossTheoID

function tbEvent:OnKillBoss(nNpcId)
    for _, tbBoss in ipairs(SpecialEvent.NVNgay_DanhBoss.BossList) do
        if me.GetTask(SpecialEvent.NVNgay_DanhBoss.TaskInfo.TaskGroup, tbBoss.TaskID_NhanNhiemVu) > 0 and tbBoss.BossId == nNpcId then
            self:UpdateProgress(nNpcId)
            return
        end
    end
    --me.Msg("Boss này không thuộc nhiệm vụ yêu cầu hoặc bạn chưa nhận nhiệm vụ!")
end

function tbEvent:UpdateProgress(nNpcId)
    for _, tbBoss in ipairs(SpecialEvent.NVNgay_DanhBoss.BossList) do
        if tbBoss.BossId == nNpcId then
            local nProgress = me.GetTask(SpecialEvent.NVNgay_DanhBoss.TaskInfo.TaskGroup, tbBoss.TaskID)
            if nProgress < tbBoss.RequiredAmount then
                nProgress = nProgress + 1
                me.SetTask(SpecialEvent.NVNgay_DanhBoss.TaskInfo.TaskGroup, tbBoss.TaskID, nProgress)
                me.Msg(string.format("Tiến độ nhiệm vụ tiêu diệt %s: %d/%d", tbBoss.Name, nProgress, tbBoss.RequiredAmount))
                --me.AddItem(18, 1, 4041, 1) -- Cấp phần thưởng Test

                if nProgress >= tbBoss.RequiredAmount then
                    me.Msg(string.format("Nhiệm vụ: Tiêu diệt %s\nChúc mừng! Bạn đã hoàn thành nhiệm vụ tiêu diệt %s!", tbBoss.Name, tbBoss.Name))
                end
            end
            return
        end
    end
end

function tbEvent:RegisterEvent()
    if MODULE_GAMESERVER and not self.bEventRegistered then
        PlayerEvent:RegisterGlobal("OnKillNpc", function()
            local nNpcId = him.nTemplateId
            tbEvent:OnKillBoss(nNpcId)
        end)
        self.bEventRegistered = true
    end
end

tbEvent:RegisterEvent()