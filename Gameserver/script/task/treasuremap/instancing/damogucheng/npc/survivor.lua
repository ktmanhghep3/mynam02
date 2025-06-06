
-- ====================== 文件信息 ======================

-- 大漠古城存活者 NPC 腳本
-- Edited by peres
-- 2008/05/15 PM 20:27

-- 她的眼淚輕輕地掉落下來
-- 撫摸著自己的肩頭，寂寥的眼神
-- 是，褪掉繁華和名利帶給的空洞安慰，她隻是一個一無所有的女子
-- 不愛任何人，亦不相信有人會愛她

-- ======================================================

local tbNpc_1			= Npc:GetClass("damogucheng_survivor1");	-- 石敬一（老人）
local tbNpc_2			= Npc:GetClass("damogucheng_survivor2");	-- 鄯士（被鎖住的人）
local tbNpc_3			= Npc:GetClass("damogucheng_survivor3");	-- 鄯摩
local tbNpc_4			= Npc:GetClass("damogucheng_survivor4");	-- 青青
local tbBag_1			= Npc:GetClass("damogucheng_bag_1");
local tbBag_2			= Npc:GetClass("damogucheng_bag_2");

local tbTaskNpc			= Npc:GetClass("damogucheng_task_stele");

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
	Player.ProcessBreakEvent.emEVENT_ATTACKED,
	Player.ProcessBreakEvent.emEVENT_DEATH,
	Player.ProcessBreakEvent.emEVENT_LOGOUT,
}

-- 打開袋子拿到鑰匙
function tbBag_1:OnDialog()
	
	local nFreeCell = me.CountFreeBagCell();
	if nFreeCell < 2 then
		Dialog:SendInfoBoardMsg(me, "Hãy sắp xếp túi còn hơn <color=yellow>2 ô trống<color> trở lên!");
		return;
	end;
	
	-- TODO:liucahng 10寫到head中去
	GeneralProcess:StartProcess("Đang mở...", 10 * 18, {self.OnOpen, self, me.nId, him.dwId}, {me.Msg, "開啟被打斷"}, tbEvent);

end;

function tbBag_1:OnOpen(nPlayerId, dwNpcId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if (not pPlayer) then
		return;
	end;

	local pNpc = KNpc.GetById(dwNpcId);
	if (pNpc and pNpc.nIndex > 0) then
		pPlayer.AddItem(18, 1, 95, 1);
		pPlayer.Msg("<color=yellow>Bạn nhận được 1 chìa khóa!<color>");
		
		-- 通知附近的玩家
		TreasureMap:NotifyAroundPlayer(pPlayer, "<color=yellow>"..pPlayer.szName.."Nhận được 1 chìa khóa!<color>");		
		
		pNpc.Delete();
	end
end;


-- 擊敗第二個 BOSS 後從這拿到琴
function tbBag_2:OnDialog()

	local nFreeCell = me.CountFreeBagCell();
	if nFreeCell < 2 then
		Dialog:SendInfoBoardMsg(me, "Hãy sắp xếp túi còn hơn <color=yellow>2 ô trống<color> trở lên!");
		return;
	end;
	
	-- TODO:liucahng 10寫到head中去
	GeneralProcess:StartProcess("Đang mở...", 10 * 18, {self.OnOpen, self, me.nId, him.dwId}, {me.Msg, "開啟被打斷"}, tbEvent);

end;


function tbBag_2:OnOpen(nPlayerId, dwNpcId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if (not pPlayer) then
		return;
	end;
		
	local pNpc = KNpc.GetById(dwNpcId);
	if (pNpc and pNpc.nIndex > 0) then
		pPlayer.AddItem(18, 1, 96, 1);
		pPlayer.Msg("<color=yellow>Bạn nhận được 1 Đàn cổ!<color>");
		
		-- 通知附近的玩家
		TreasureMap:NotifyAroundPlayer(pPlayer, "<color=yellow>"..pPlayer.szName.."得到了一張古琴！<color>");		
		
		pNpc.Delete();
	end
end;



-- NPC 的對話

-- 石敬一
function tbNpc_1:OnDialog()
	local szTalk	= [[<color=red><npc=2723><color>: Mười mấy năm rồi, đây là lần đầu ta thấy có người lạ đến đây.<end>
<color=red><npc=2723><color>: Tòa thánh này cũng chỉ vậy thôi. Cho dù là họ, hay người thống lĩnh trước đây, ai nấy đều không thể thay đổi việc Đại Mạc Hoàng Sa nuốt gọn nơi này…<end>
]];
	TaskAct:Talk(szTalk, self.TalkEnd, self);
end;

function tbNpc_1:TalkEnd()
	
end;

-- 鄯士
function tbNpc_2:OnDialog()
	local szTalk	= [[<color=red><npc=2724><color>: Hừ! Chúng đáng chết, ngươi có thể giết chúng! Nhưng làm vậy thì có ích gì chứ?<end>
<color=red><npc=2724><color>: Lẽ nào ngươi cho rằng giết chết 1 đám người thì có thể cứu sống đám khác sao? Làm vậy có khác gì so với việc chúng đã làm mười mấy năm trước chứ?<end>
]];
	TaskAct:Talk(szTalk, self.TalkEnd, self);
end;

function tbNpc_2:TalkEnd()
	
end;

-- 鄯摩
function tbNpc_3:OnDialog()
	local szTalk	= [[<color=red><npc=2725><color>: Cuối cùng đã có người đến đây…<end>
						<color=red><npc=2725><color>: Người lạ mặt, chúc ngươi may mắn!<end>
]];
	TaskAct:Talk(szTalk, self.TalkEnd, self);
end;

function tbNpc_3:TalkEnd()
	
end;

-- 青青
function tbNpc_4:OnDialog()
	local szTalk	= [[<color=red><npc=2726><color>: Đừng nói với mẹ là ta ở đây được không? Bà không muốn cho ta ra ngoài chơi.<end>
						<color=red><npc=2726><color>: Nhưng ta đói rồi, phải về ăn cơm, mẹ đang đợi ta về ăn chung.<end>
]];
	TaskAct:Talk(szTalk, self.TalkEnd, self);
end;

function tbNpc_4:TalkEnd()
	
end;


-- 接任務的 NPC
function tbTaskNpc:OnDialog()
	return;
end;
