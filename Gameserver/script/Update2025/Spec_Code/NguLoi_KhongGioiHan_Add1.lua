local tbItem = Item:GetClass("NguLoi_KhongGioiHan_Add1");

tbItem.SKill_ThanKiemNguLoi = 1781;                      -- Skill ID
tbItem.Level_ThanKiemNguLoi = 10;                       -- Cấp Skill
tbItem.GioiHan_Level = 40;                              -- Giới Hạn

tbItem.ThoiGian_delay = 1;                              -- Thời gian học (s)
tbItem.Level_Add = 1;                                   -- Cấp độ tăng thêm
tbItem.Item_Delete = {18,1,4048,1};                     -- ID Item

-- Danh sách vị trí trang bị
tbItem.tbEquipPos = {
    {Item.EQUIPPOS_HEAD, "Nón"},
    {Item.EQUIPPOS_BODY, "Áo"},
    {Item.EQUIPPOS_BELT, "Yêu đái"},
    {Item.EQUIPPOS_WEAPON, "Vũ khí"},
    {Item.EQUIPPOS_FOOT, "Giày"},
    {Item.EQUIPPOS_CUFF, "Tay"},
    {Item.EQUIPPOS_AMULET, "Phù"},
    {Item.EQUIPPOS_RING, "Nhẫn"},
    {Item.EQUIPPOS_NECKLACE, "Liên"},
    {Item.EQUIPPOS_PENDANT, "Bội"},
    {Item.EQUIPPOS_HORSE, "Ngựa"},
    {Item.EQUIPPOS_MASK, "Mặt nạ"},
    {Item.EQUIPPOS_BOOK, "Bí kíp"},
    {Item.EQUIPPOS_ZHEN, "Trận"},
    {Item.EQUIPPOS_SIGNET, "Ấn"},
    {Item.EQUIPPOS_MANTLE, "Phi phong"},
    {Item.EQUIPPOS_CHOP, "Quan ấn"},
}

function tbItem:OnUse()
    local nLevel = me.GetSkillLevel(self.SKill_ThanKiemNguLoi);
    local szMsg = 
        "<color=pink>Thông tin Thần Kiếm Quyết:\n" ..
        "<color=yellow>- Thần Kiếm Ngự Lôi Chân Quyết: <color=cyan>" .. nLevel .. "<color>/" .. self.GioiHan_Level .. ".<color>\n";

    local tbOpt = {
        {"<bclr=0,0,200><color=white>Lĩnh ngộ thêm [+" .. self.Level_Add .. "] Đẳng Cấp Không giới hạn<color>", self.Delay, self},
        {"Ta cần suy nghĩ thêm!"},
    };
    Dialog:Say(szMsg, tbOpt);
end

function tbItem:Delay()
    local nLevel = me.GetSkillLevel(self.SKill_ThanKiemNguLoi);

    -- Kiểm tra giới hạn cấp độ
    --if nLevel >= self.GioiHan_Level then
       -- Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thần Kiếm Ngự Lôi Chân Quyết đã đạt: <color=cyan>+" .. nLevel .. "/" .. self.GioiHan_Level .. " <color>, không thể sử dụng nữa!<color>"));
        --return 0;
   -- end

    -- Kiểm tra từng món trang bị
    local tbWornEquip = {};
    for _, tbEquip in ipairs(self.tbEquipPos) do
        local pItem = me.GetEquip(tbEquip[1]);
        if pItem then
            table.insert(tbWornEquip, tbEquip[2]); -- Thêm tên món trang bị vào danh sách
        end
    end

    -- Nếu vẫn còn trang bị trên người
    if #tbWornEquip > 0 then
        local szEquipList = table.concat(tbWornEquip, "\n- "); -- Ghép danh sách trang bị
        Dialog:Say(string.format("<bclr=0,0,200><color=white>Không được dùng Trang bị khi học kỹ năng, Trang bị sau còn dùng trên người::\n- %s<color>", szEquipList));
        return 0;
    end

    -- Bắt đầu quá trình học kỹ năng
    local tbBreakEvent = {
        Player.ProcessBreakEvent.emEVENT_MOVE,
        Player.ProcessBreakEvent.emEVENT_ATTACK,
        Player.ProcessBreakEvent.emEVENT_SIT,
        Player.ProcessBreakEvent.emEVENT_RIDE,
        Player.ProcessBreakEvent.emEVENT_USEITEM,
        Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
        Player.ProcessBreakEvent.emEVENT_DROPITEM,
        Player.ProcessBreakEvent.emEVENT_CHANGEEQUIP,
        Player.ProcessBreakEvent.emEVENT_SENDMAIL,
        Player.ProcessBreakEvent.emEVENT_TRADE,
        Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
        Player.ProcessBreakEvent.emEVENT_ATTACKED,
        Player.ProcessBreakEvent.emEVENT_DEATH,
        Player.ProcessBreakEvent.emEVENT_LOGOUT,
        Player.ProcessBreakEvent.emEVENT_REVIVE,
        Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
    };

    GeneralProcess:StartProcess("<color=yellow>Đang lĩnh ngộ Chân Quyết...", self.ThoiGian_delay * Env.GAME_FPS, {self.kichhoat, self}, nil, tbBreakEvent);
end

function tbItem:kichhoat()
    local nLevel = me.GetSkillLevel(self.SKill_ThanKiemNguLoi);
    me.AddFightSkill(self.SKill_ThanKiemNguLoi, nLevel + self.Level_Add);

    -- Xóa vật phẩm yêu cầu
    if not Task:DelItem(me, self.Item_Delete, 1) then
        Dialog:Say("<color=red>Bạn không có vật phẩm cần thiết để lĩnh ngộ kỹ năng!<color>");
        return 0;
    end

    -- Thông báo thành công
    local szMsg = "<color=yellow>Người chơi: [" .. me.szName .. "] đã Lĩnh ngộ Thêm [+" .. self.Level_Add .. " đẳng cấp] <color=green>(Thần Kiếm Ngự Lôi Chân Quyết)<color> thành công!<color>";
    me.Msg("Lĩnh ngộ Thêm [+" .. self.Level_Add .. " đẳng cấp] <color=green>(Thần Kiếm Ngự Lôi Chân Quyết)<color> thành công!");
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
    KDialog.MsgToGlobal(szMsg);
end