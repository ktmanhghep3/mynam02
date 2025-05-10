local tbNpc = Npc:GetClass("Login_BichBaDong");

tbNpc.Time_XoaBoss = 600; -- Thời gian trước khi truyền tống toàn bộ nhân vật ra ngoài

function tbNpc:OnDialog()
    local szMsg = "Ngươi cũng muốn thử?";
    local tbOpt = {
        {"<color=yellow>Vào trong<color>", self.EnterMap, self},
        {"Kết Thúc Đối Thoại"}
    };
    Dialog:Say(szMsg, tbOpt);
end

-- Hàm xử lý "Vào trong" và truyền tống sau thời gian quy định
function tbNpc:EnterMap()
    -- Đưa nhân vật vào bản đồ cụ thể
    me.NewWorld(2112, 1663, 3219);

    -- Thiết lập thời gian để truyền tống toàn bộ nhân vật ra ngoài sau 10 giây
    local nMapId = me.GetWorldPos(); -- ID của bản đồ hiện tại
    Timer:Register(self.Time_XoaBoss * Env.GAME_FPS, function()
        -- Lấy danh sách người chơi trong bản đồ
        local tbPlayerList = KPlayer.GetMapPlayer(nMapId);
        if tbPlayerList and #tbPlayerList > 0 then
            for _, pPlayer in ipairs(tbPlayerList) do
                pPlayer.NewWorld(1, 1389, 3102); -- Truyền tống từng người chơi ra vị trí ngoài
                --pPlayer.Msg("Bạn đã được truyền tống về bên ngoài!");
            end
        end
        return 0; -- Kết thúc Timer
    end);
end