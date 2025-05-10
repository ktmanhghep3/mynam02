local tbMap_BichBaDong = Item:GetClass("DuLongGiac_Map02");
tbMap_BichBaDong.Item_Ruong = {18,1,4041,7}; --Bản Đồ Đã Giám Định
tbMap_BichBaDong.NpcLoiVao = 8176; -- ID của NPC Lối Vào
tbMap_BichBaDong.Boss = 8177; -- ID của Boss
tbMap_BichBaDong.Time_XoaNpc = 600; -- Thời gian NPC và Boss biến mất (giây)
tbMap_BichBaDong.Allowed_MapId = 30; -- MapId cho phép sử dụng item (Chiến trường cổ)

-- Hàm gọi khi sử dụng item
function tbMap_BichBaDong:OnUse()
    local nMapId = me.GetWorldPos(); -- Lấy MapId hiện tại của nhân vật

    -- Kiểm tra MapId
    if nMapId ~= self.Allowed_MapId then
        Dialog:Say("Bản đồ này chỉ có thể sử dụng ở Chiến Trường Cổ!");
        return 0;
    end

    if me.nFightState == 0 then
        Dialog:Say("Bản đồ không thể sử dụng trong Thôn, Thành.\nHãy dùng ở khu Luyện công!");
        return 0;
    end

    if me.nTeamId == 0 then
        Dialog:Say("Không thể vào khi không có tổ đội.\nHãy chuẩn bị đội ngũ để vào trong!");
        return 0;
    end

    local szMsg = "Bạn muốn mở lối vào Bích Ba Động?";
    local tbOpt = {
        {"Mở lối vào Bích Ba Động", self.Active, self}, -- Tùy chọn mở lối vào
    };

    Dialog:Say(szMsg, tbOpt);
end

-- Hàm kích hoạt lối vào và xử lý NPC và Boss
function tbMap_BichBaDong:Active()
    local nMapId, nPosX, nPosY = me.GetWorldPos(); -- Lấy vị trí nhân vật

    -- Thêm NPC tại vị trí hiện tại
    local pNpc = KNpc.Add2(self.NpcLoiVao, 60, -1, nMapId, nPosX, nPosY);
    if not pNpc then
        me.Msg("Không thể thực hiện vị trí này!");
        return;
    end

    -- Thêm Boss tại vị trí cố định
    local pBoss = KNpc.Add2(self.Boss, 60, -1, 2112, 1632, 3249);

    -- Tạo thông báo vị trí cụ thể với định dạng <pos=mapid,x,y>
    local szMessage = string.format("Lối vào Bích Ba Động và Boss đã được phát hiện tại <pos=%d,%d,%d>!", nMapId, nPosX, nPosY);

    -- Thông báo tới tất cả người chơi trong cùng bản đồ
    local tbPlayerList = KPlayer.GetMapPlayer(nMapId); -- Lấy danh sách người chơi trong bản đồ
    if tbPlayerList and #tbPlayerList > 0 then
        for _, pPlayer in ipairs(tbPlayerList) do
            pPlayer.Msg(szMessage);
        end
    end

    -- Thiết lập thời gian để NPC và Boss biến mất sau 1 phút
    Timer:Register(self.Time_XoaNpc * Env.GAME_FPS, function()
        if pNpc then
            pNpc.Delete(); -- Xóa NPC
        end
        if pBoss then
            pBoss.Delete(); -- Xóa Boss
        end
        return 0; -- Kết thúc timer
    end);

    -- Xóa item "Rương" của người chơi
    Task:DelItem(me, self.Item_Ruong, 1);
end