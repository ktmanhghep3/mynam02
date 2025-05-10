-- Thời gian reset trạng thái (tính bằng giây)
local RESET_DELAY_IN_SECONDS = 8700; -- 145 phút

-- Định nghĩa class cho Boss Ngũ Hành Hộ Vệ
local tbHoVe = Npc:GetClass("boss_ho_ve");

-- Định nghĩa class cho Boss Cô Ảnh Tần Vương
local tbChuTuong = Npc:GetClass("boss_chutuong");

-- ID của các Boss và NPC liên quan
local tbHoVeIDs = {8181, 8182, 8183, 8184, 8185}; -- Boss Ngũ Hành Hộ Vệ
local nChuTuongID = 8186; -- Boss Cô Ảnh Tần Vương
local nNpcID = 8187; -- NPC Đối thoại: Thiên Cổ Tần Vương

-- Biến tạm để theo dõi trạng thái
local tbEventState = {
    nHoVeKilledCount = 0, -- Số lượng Boss Ngũ Hành Hộ Vệ đã bị tiêu diệt
    nChuTuongSpawned = false, -- Trạng thái của Boss Cô Ảnh Tần Vương
    nResetScheduled = false -- Trạng thái chỉ reset 1 lần sau khi Boss Cô Ảnh Tần Vương xuất hiện
};

-- Hàm reset trạng thái sự kiện
local function ResetEventState()
    tbEventState.nHoVeKilledCount = 0;
    tbEventState.nChuTuongSpawned = false;
    tbEventState.nResetScheduled = false;
end

-- Hàm lập lịch ResetEventState sau thời gian trì hoãn với thông báo
local function ScheduleReset()
    -- Kiểm tra nếu reset đã được lập lịch, nếu rồi thì thoát sớm
    if tbEventState.nResetScheduled then
        return; -- Đảm bảo reset chỉ được lập lịch 1 lần
    end

    tbEventState.nResetScheduled = true; -- Đánh dấu đã lập lịch reset

    Timer:Register(Env.GAME_FPS * RESET_DELAY_IN_SECONDS, function() -- Trì hoãn theo RESET_DELAY_IN_SECONDS
        -- Xóa tất cả các NPC liên quan
        ClearMapNpcWithName(1538, "Kim Hộ Vệ");
        ClearMapNpcWithName(1538, "Mộc Hộ Vệ");
        ClearMapNpcWithName(1538, "Thủy Hộ Vệ");
        ClearMapNpcWithName(1538, "Hỏa Hộ Vệ");
        ClearMapNpcWithName(1538, "Thổ Hộ Vệ");

        ClearMapNpcWithName(1538, "Cô Ảnh Tần Vương");
        ClearMapNpcWithName(1538, "Thiên Cổ Tần Vương");

        -- Reset trạng thái sự kiện
        ResetEventState();

        -- Gửi thông báo toàn cục
        local szMsg = "<color=cyan>Bí ẩn về Cô Ảnh Cổ Đế Tần Thủy Hoàng đã dần dần đóng lại với bao hoài nghi và bí ẩn, hãy chuẩn bị thực lực cho chinh phạt lần tiếp theo!!!<color>";
        KDialog.MsgToGlobal(szMsg);

        return 0; -- Kết thúc Timer sau khi chạy xong
    end);
end

-------------------------------------------------------
-- Hàm xử lý khi một Boss Ngũ Hành Hộ Vệ chết
-------------------------------------------------------
function tbHoVe:OnDeath(pNpcKiller)
    local pNpc = him; -- Boss Ngũ Hành Hộ Vệ hiện tại

    -- Tăng số lượng Boss Ngũ Hành Hộ Vệ đã bị tiêu diệt
    tbEventState.nHoVeKilledCount = tbEventState.nHoVeKilledCount + 1;

    -- Phần thưởng ngẫu nhiên khi đánh bại Boss Ngũ Hành Hộ Vệ
    local nRewardCount = MathRandom(0, 20); -- Số lượng ngẫu nhiên từ 0 đến 20
    if nRewardCount > 0 then
        me.AddStackItem(18, 1, 4041, 12, nil, nRewardCount); -- Thêm item Trung Nghĩa Đảm
    end

    -- Gửi thông báo khi đánh bại mỗi Boss Ngũ Hành Hộ Vệ
    local nMapId, nX, nY = me.GetWorldPos();
    local szMsg = string.format(
        "<color=yellow>★ Anh Hùng: [ <color=red>%s<color> ] Chiến thắng Boss Ngũ Hành Hộ Vệ <color=cyan>%s<color>\n✸ Tại <color=green>%s<color>\n<color=violet>❉ Nhận được %d Trung Nghĩa Đảm!<color>\nThử thách tiếp theo đang chờ đón, hãy cẩn thận!<color>",
        me.szName, him.szName, GetMapNameFormId(nMapId), nRewardCount
    );
    KDialog.MsgToGlobal(szMsg);
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);

    -- Kiểm tra nếu tất cả 5 Boss Ngũ Hành Hộ Vệ đã bị tiêu diệt
    if tbEventState.nHoVeKilledCount == #tbHoVeIDs then
        -- Kiểm tra nếu Boss Cô Ảnh Tần Vương chưa được thêm
        if not tbEventState.nChuTuongSpawned then
            local nMapId, nMapX, nMapY = pNpc.GetWorldPos(); -- Lấy vị trí của Boss Ngũ Hành Hộ Vệ cuối cùng bị tiêu diệt

            -- Thêm Boss Cô Ảnh Tần Vương vào vị trí của Boss Ngũ Hành Hộ Vệ cuối cùng
            local pChuTuong = KNpc.Add2(nChuTuongID, pNpc.nLevel, -1, nMapId, nMapX, nMapY);
            if pChuTuong then
                tbEventState.nChuTuongSpawned = true; -- Đánh dấu rằng Chủ Tướng đã được thêm
                ScheduleReset(); -- Lập lịch reset trạng thái sau thời gian trì hoãn
            end
        end
    end
end

-------------------------------------------------------
-- Hàm xử lý khi Boss Cô Ảnh Tần Vương chết
-------------------------------------------------------
function tbChuTuong:OnDeath(pNpcKiller)
    local pNpc = him; -- Boss Cô Ảnh Tần Vương hiện tại
    local nMapId, nMapX, nMapY = pNpc.GetWorldPos(); -- Lấy vị trí Boss Cô Ảnh Tần Vương bị đánh bại

    -- Gửi thông báo khi đánh bại Boss Cô Ảnh Tần Vương
    local szMsg = string.format("<color=yellow>★ Anh Hùng: [ <color=red>%s<color> ] Chiến thắng Boss Cô Ảnh Tần Vương <color=cyan>%s<color>\n✸ Tại <color=green>%s<color>\n<color=violet>❉ Có cơ hội tranh luận lý lẽ cổ kim với Thiên Cổ Tần Vương!<color><color>", me.szName, him.szName, GetMapNameFormId(nMapId));
    KDialog.MsgToGlobal(szMsg);
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);

    -- Xuất hiện NPC tại vị trí Boss Cô Ảnh Tần Vương bị đánh bại
    local pNpcObj = KNpc.Add2(nNpcID, 1, -1, nMapId, nMapX, nMapY);
    if pNpcObj then
        -- NPC không có thời gian tồn tại trong phiên bản này
    end
end