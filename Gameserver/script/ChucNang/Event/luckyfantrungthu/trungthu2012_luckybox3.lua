
local tbItem = Item:GetClass("trungthu2012_luckybox3");
tbItem.nDelay = 3 * Env.GAME_FPS;	--thoi gian chay cay %
tbItem.nMax = 1000;
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
}
function tbItem:OnUse()
	
	if me.CountFreeBagCell() < 5 then
		local szAnnouce = "Hành trang của bạn không đủ 5 ô trống.";
		me.Msg(szAnnouce);
		return 0;
	end	
	GeneralProcess:StartProcess("Đang sử dụng...", self.nDelay, {self.OnUseSure, self, it.dwId}, nil, tbEvent);
end
function tbItem:OnUseSure(nItemId)
	
	local pItem = KItem.GetObjById(nItemId);
	if not pItem then
		return 0
	end
	
	if me.CountFreeBagCell() < 5 then
		Dialog:Say("Hành trang cần 5 ô trống.");
		return 0;
	end
	
	local ItemName = pItem.szName;

	if pItem.nCount <= 1 then
		if me.DelItem(pItem) ~= 1 then
			me.Msg("Xoa Item That Bai Lien He GM");
			return;
		end
	else
		pItem.SetCount(pItem.nCount - 1); 
	end
	
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	nRand = MathRandom(1, 10000);
	local tbRate = {5000, 3000, 1500, 500};
	for i = 1, 4 do -- so luong phan thuong hien ben tren la 4
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end
	if nIndex == 1 then
		me.AddExp(10 * 1000000);-- 10 trieu exp
	end 
	
	if nIndex == 2 then
		me.AddBindMoney(10 * 10000);-- 10 van bac khoa
	end 	
	if nIndex == 3 then
		me.AddBindCoin(10 * 10000);-- 10 van dong khoa
	end 	
	if nIndex == 4 then
		local pItem1 = me.AddItem(18,1,1,12);
		local szMsg = string.format("<color=cyan>%s<color> sử dụng <color=yellow>"..ItemName.."<color> nhận được <color=cyan>%s<color>", me.szName,  pItem1.szName);
		KDialog.MsgToGlobal(szMsg);
	end	
end


