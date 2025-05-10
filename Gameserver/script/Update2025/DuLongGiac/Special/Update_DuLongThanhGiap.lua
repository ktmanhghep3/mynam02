local tbDuLongThanhGiap = Npc:GetClass("Update_DuLongThanhGiap");

tbDuLongThanhGiap.DuLongThanhGiapSkill = 1764; -- ID Skill Du Long Thánh Giáp
tbDuLongThanhGiap.TaskGroup_DuLongGiac = 4528; -- TaskGroup Điểm Du Long Giác
tbDuLongThanhGiap.TaskID_DuLongGiac = 1; -- TaskID Điểm Du Long Giác
tbDuLongThanhGiap.GioiHan_LevelSkill = 10; -- Giới hạn Skill khi nâng cấp tối đa

-- Bảng Điểm Du Long Giác và Tỷ lệ thành công
tbDuLongThanhGiap.SkillUpgradeConfig = {
    [1] = {Diem = 100, Rate = 100},   -- Kích hoạt Lv1
    [2] = {Diem = 2000, Rate = 10},  -- Nâng lên Lv2
    [3] = {Diem = 3000, Rate = 10},  -- Nâng lên Lv3
    [4] = {Diem = 4000, Rate = 10},  -- Nâng lên Lv4
    [5] = {Diem = 5000, Rate = 10},  -- Nâng lên Lv5
    [6] = {Diem = 6000, Rate = 5},   -- Nâng lên Lv6
    [7] = {Diem = 7000, Rate = 5},   -- Nâng lên Lv7
    [8] = {Diem = 8000, Rate = 5},   -- Nâng lên Lv8
    [9] = {Diem = 9000, Rate = 5},   -- Nâng lên Lv9
    [10] = {Diem = 10000, Rate = 5}, -- Nâng lên Lv10
}

function tbDuLongThanhGiap:OnDialog()
    local Time = os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
    local nDiemDuLongGiac = me.GetTask(self.TaskGroup_DuLongGiac, self.TaskID_DuLongGiac);
    local szMsg = "<color=blue>★ Thời gian: <color=green>" .. Time .. "<color><color>\n" ..
                  "<color=blue>★ Tên nhân vật: <color=green>" .. me.szName .. "<color><color>\n" ..
                  "<color=yellow>❂ Điểm Du Long Giác: <color=pink>" .. nDiemDuLongGiac .. "<color> Điểm.\n";
    local tbOpt = {
        {"<bclr=0,0,200><color=red>[Kích Hoạt Du Long Thánh Giáp]", self.KichHoat_DuLongThanhGiapSkill, self},
        {"<bclr=0,0,200><color=white>[Nâng Du Long Thánh Giáp]", self.Update_DuLongThanhGiapSkill, self},
        {"Kết Thúc Đối Thoại"}
    }
    Dialog:Say(szMsg, tbOpt)
end

function tbDuLongThanhGiap:KichHoat_DuLongThanhGiapSkill()
    local nDiemDuLongGiac = me.GetTask(self.TaskGroup_DuLongGiac, self.TaskID_DuLongGiac);
    local Lv_Kiem = me.GetSkillLevel(self.DuLongThanhGiapSkill);

    if Lv_Kiem >= 1 then
        Dialog:Say("<color=red>Ngươi đã kích hoạt rồi, không thể Kích Hoạt nữa!");
        return 0;
    end

    if nDiemDuLongGiac < self.SkillUpgradeConfig[1].Diem then
        Dialog:Say("<color=red>Điểm Du Long Giác dưới yêu cầu, không thể Kích Hoạt!<color>");
        return 0;
    end

    me.AddFightSkill(self.DuLongThanhGiapSkill, 1);
    me.SetTask(self.TaskGroup_DuLongGiac, self.TaskID_DuLongGiac, nDiemDuLongGiac - self.SkillUpgradeConfig[1].Diem);

    local szMsg = "<color=cyan>Lãng hiệp: <color=yellow>[" .. me.szName .. "]<color> đã Kích Hoạt Thành công Du Long Thánh Giáp <color=green>+1<color>!";
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
    KDialog.MsgToGlobal(szMsg);
end

function tbDuLongThanhGiap:Update_DuLongThanhGiapSkill()
    local nDiemDuLongGiac = me.GetTask(self.TaskGroup_DuLongGiac, self.TaskID_DuLongGiac);
    local Lv_Kiem = me.GetSkillLevel(self.DuLongThanhGiapSkill);

    if Lv_Kiem < 1 then
        Dialog:Say("<color=red>Ngươi chưa kích hoạt, không thể nâng cấp!");
        return 0;
    end

    if Lv_Kiem >= self.GioiHan_LevelSkill then
        Dialog:Say("<color=red>Đẳng cấp đã đạt giới hạn, không thể nâng cấp!");
        return 0;
    end

    local nNextLevel = Lv_Kiem + 1;
    local nRequiredDiem = self.SkillUpgradeConfig[nNextLevel].Diem;
    local nSuccessRate = self.SkillUpgradeConfig[nNextLevel].Rate;

    if nDiemDuLongGiac < nRequiredDiem then
        Dialog:Say("<color=red>Điểm Du Long Giác dưới yêu cầu, không thể nâng cấp!<color>");
        return 0;
    end

    -- Trừ điểm trước khi thực hiện nâng cấp
    me.SetTask(self.TaskGroup_DuLongGiac, self.TaskID_DuLongGiac, nDiemDuLongGiac - nRequiredDiem);

    local nRand = MathRandom(1, 100);
    local szRateMsg = "<color=yellow>Tỷ lệ thành công: <color=green>" .. nSuccessRate .. "%<color>";

    if nRand <= nSuccessRate then
        me.AddFightSkill(self.DuLongThanhGiapSkill, nNextLevel);
        local szMsg = "<bclr=0,255,0><color=cyan>Lãng hiệp: <color=yellow>[" .. me.szName .. "]<color> đã Nâng cấp Thành công Du Long Thánh Giáp <color=green>+" .. nNextLevel .. "<color>!<color>";
        KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
        KDialog.MsgToGlobal(szMsg .. " " .. szRateMsg);
    else
        local szMsg = "<bclr=255,0,0><color=cyan>Lãng hiệp: <color=yellow>[" .. me.szName .. "]<color> đã Nâng cấp Thất bại Du Long Thánh Giáp <color=green>+" .. nNextLevel .. "<color>!<color>";
        KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
        KDialog.MsgToGlobal(szMsg .. " " .. szRateMsg);
    end
end