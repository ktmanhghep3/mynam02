local tbItem = Item:GetClass("110wuxuemiji");

tbItem.nTaskGroupId_110Skill = 1022;
tbItem.nTaskId_110Skill = 215;
tbItem.nMinLevel    = 110;
tbItem.nTaskGroupId_110Task = 1000;
tbItem.tb110TaskId = {
    [1]    = 430;
    [2]    = 431;
    [3]    = 432;
    [4]        = 433;
    [5]        = 434;
    [6]        = 435;
    [7]    = 436;
    [8]    = 437;
    [9]        = 438;
    [10]         = 439;
    [11]     = 440;
    [12] = 441;
};

tbItem.tb110StepTaskId = {
    [1]    = 203;
    [2]    = 204;
    [3]    = 205;
    [4]        = 206;
    [5]        = 207;
    [6]        = 208;
    [7]    = 209;
    [8]    = 210;
    [9]        = 211;
    [10]         = 212;
    [11]     = 213;
    [12] = 214;
};

function tbItem:OnUse()
    local nFlag, szError = self:IsCanUseItem(me);
    if (1 ~= nFlag) then
        me.Msg(szError);
        return 0;
    end
    
    local szMsg = string.format("<color=yellow>Chỉ có thể dùng ở Thành thị hoặc Tân Thủ Thôn<color>\n1 Quyển bí tịch thất truyền đã lâu, phàm kẻ nào cơ duyên học được sẽ lĩnh ngộ tuyệt kỹ môn phái: <color=yellow>110<color>, ngươi muốn sử dụng?");
    Dialog:Say(szMsg, 
    {
        {"<color=cyan>Ta muốn lĩnh ngộ!", self.OnSureUse, self, it.dwId},
        {"Ta suy nghĩ lại"},
    });
    return 0;
end

function tbItem:IsCanUseItem(pPlayer)
    if (pPlayer.nFaction <= 0) then
        return 0, "Ngươi chưa có môn phái, hãy gia nhập môn phái rồi sử dụng!";
    end
    
    if (pPlayer.nFaction == Env.FACTION_ID_GUMU) then
        return 0, "Ngươi đã học qua kỹ năng 110 môn phái này rồi!";
    end
    
    if (pPlayer.nLevel < self.nMinLevel) then
        return 0, string.format("thiếu hiệp cấp bậc chưa tới đạt %s cấp , không thể sử dụng vật phẩm ！", self.nMinLevel);
    end

    local nValue = pPlayer.GetTask(self.nTaskGroupId_110Skill, self.nTaskId_110Skill);
    local nFlag = KLib.GetBit(nValue, pPlayer.nFaction);
    if (nFlag == 1) then
        local szRouteName = Player:GetFactionRouteName(pPlayer.nFaction);
        return 0, string.format("Ngươi đã có kỹ năng <color=yellow>%s<color> 110 môn phái này! không thể dùng bí tịch nữa!", szRouteName);
    end
    
    if GetMapType(pPlayer.nMapId) ~= "city" and GetMapType(pPlayer.nMapId) ~= "village" and 
        GetMapType(pPlayer.nMapId) ~= "faction" then
        return 0, "Chỉ có thể dùng trong Thành thị hoặc Thôn trấn!";
    end    
    return 1;
end

function tbItem:OnSureUse(dwItemId)
    local pItem = KItem.GetObjById(dwItemId);
    if not pItem then
        Dialog:Say("Không thể dùng!");
        return 0;
    end

    local nFlag, szError = self:IsCanUseItem(me);
    if (1 ~= nFlag) then
        Dialog:Say(szError);
        return 0;
    end

    local nRet = pItem.Delete(me);
    if nRet ~= 1 then
        Dbg:WriteLog("110wuxuemiji", me.szName, "Khấu trừ vật phẩm thất bại!");
        return 0;
    end
    
    local n110TaskId = self.tb110TaskId[me.nFaction];
    local n110TaskIdStep = self.tb110StepTaskId[me.nFaction];
    local n110TaskStep = 0;
    if n110TaskIdStep then
        n110TaskStep = me.GetTask(self.nTaskGroupId_110Skill, n110TaskIdStep);
    end

    -- me.SetTask(1022,215,4095,1)--允许投点110技能
    if n110TaskId then 
        Task:CloseTask(n110TaskId, "giveup"); -- 放弃任务
        me.SetTask(self.nTaskGroupId_110Task, n110TaskId, 1);     -- 设置任务完成标记
    end    
    local nValue = me.GetTask(self.nTaskGroupId_110Skill, self.nTaskId_110Skill); -- 设置上学会技能
    nValue = KLib.SetBit(nValue, me.nFaction, 1);
    me.SetTask(self.nTaskGroupId_110Skill, self.nTaskId_110Skill, nValue, 1);
    Dialog:Say(string.format("Chúc mừng ngươi đã lĩnh ngộ Kỹ năng môn phái 110!"));
    Dbg:WriteLog("110wuxuemiji", me.szName, string.format("%s,%s,%s,%s,Sử dụngBí tịch thành công!", me.nFaction, (n110TaskId or 0), (n110TaskIdStep or 0), n110TaskStep));
    return 1;
end 