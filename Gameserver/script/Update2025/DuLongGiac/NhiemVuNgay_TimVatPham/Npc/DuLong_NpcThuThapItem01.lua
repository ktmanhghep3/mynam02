local tbNpc = Npc:GetClass("DuLong_NpcThuThapItem01");

tbNpc.IDNpc = 8171;
tbNpc.Time_AddNpc = 180; 			--Thời gian add lại Npc
tbNpc.Item_Thuthap = {18,1,4041,1};	--Item Thu thập

tbNpc.Time_Delay = 25; 			--Thời gian mở rương

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
        "<bclr=0,0,200><color=white>Đang thu thập...", 
        self.Time_Delay * Env.GAME_FPS,  -- Thời gian chờ
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
	
    -- Phần thưởng
    local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
    if pPlayer then
		--pPlayer.AddItem(18,1,4018,2);
        --pPlayer.Msg("Bạn đã nhận được phần thưởng!");
		local pItem = pPlayer.AddItem(unpack(self.Item_Thuthap));
		pPlayer.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Thu thập thành công "..pItem.szName.." !!!<color>"});

    end
    -- Tạo lại NPC sau 10 giây
    Timer:Register(
        self.Time_AddNpc * Env.GAME_FPS,  -- 10 giây
        function()
            KNpc.Add2(self.IDNpc, 1, -1, nMapId, nPosX, nPosY); -- Thêm lại NPC
            return 0; -- Dừng timer
        end
    );
end