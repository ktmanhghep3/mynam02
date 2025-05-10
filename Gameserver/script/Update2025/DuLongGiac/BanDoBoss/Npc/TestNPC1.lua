local tbNpc = Npc:GetClass("TestNPC1");


function tbNpc:OnDialog()
    local tbEvent = 
    {
        Player.ProcessBreakEvent.emEVENT_MOVE,
        Player.ProcessBreakEvent.emEVENT_ATTACK,
        Player.ProcessBreakEvent.emEVENT_SITE,
        Player.ProcessBreakEvent.emEVENT_USEITEM,
        Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
        Player.ProcessBreakEvent.emEVENT_DROPITEM,
        Player.ProcessBreakEvent.emEVENT_SENDMAIL,
        Player.ProcessBreakEvent.emEVENT_TRADE,
        Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
        Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
        Player.ProcessBreakEvent.emEVENT_LOGOUT,
        Player.ProcessBreakEvent.emEVENT_DEATH,
        Player.ProcessBreakEvent.emEVENT_ATTACKED,
    };

    
    GeneralProcess:StartProcess(
        "<bclr=0,0,200><color=white>Đang mở rương 3 ", 
        1 * Env.GAME_FPS,  -- Thời gian chờ
        {self.OnOpenChest, self, me.nId, him.dwId},
        nil,
        tbEvent
    );
end

-- Hàm xử lý khi mở rương thành công
function tbNpc:OnOpenChest(nPlayerId, nNpcId)
    local pNpc = KNpc.GetById(nNpcId);
    if not pNpc then
        return;
    end

    -- Lấy thông tin vị trí hiện tại của NPC
    local nMapId, nPosX, nPosY = pNpc.GetWorldPos();

    -- Xóa NPC khi mở rương
    pNpc.Delete();

    -- Thưởng cho người chơi
    local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
    if pPlayer then
       -- pPlayer.AddStackItem(18, 1, 4018, 2, {bForceBind = 1}, 1); -- Thưởng vật phẩm
        pPlayer.Msg("Bạn đã nhận được phần thưởng!");
    end

    -- Tạo lại NPC sau 10 giây
    Timer:Register(
        10 * Env.GAME_FPS,  -- 10 giây
        function()
            KNpc.Add2(8170, 1, -1, nMapId, nPosX, nPosY); -- Thêm lại NPC với ID 8170 tại vị trí ban đầu
            return 0; -- Dừng timer
        end
    );
end