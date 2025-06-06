-------------------------------------------------------------------
--File: auction_common.lua
--Author: Brianyao
--Date: 2008-10-07 10:39
--Describe: 拍卖行定义
-------------------------------------------------------------------


Auction.tbc2sFun   = {};
Auction.SEPARATEDTIME = 30;
Auction.nAuctionState = 1;
Auction.STARTFORBITMAPID = 29;

Auction.Exception = {341, 342};
Auction.ExceptionTemplateMapID = {}

function Auction:Init()
	for i, v in pairs(self.Exception) do
		self.ExceptionTemplateMapID[v] = 1;
	end
end

function Auction:GetAuctionValidTimeByOper( nValidTimeOper )

   if  nValidTimeOper == 0 then
       return 86400        -- 一天
   elseif nValidTimeOper == 1 then
       return 172800       -- 两天
   elseif nValidTimeOper == 2 then
       return 259200       -- 三天
   else
       return 86400        -- 一天为默认
   end
   
end

function Auction:GetAvailableSeries( nPart,nPlayerSeries )

     if nPlayerSeries == 0 then 
        return 0
     else
        if (Item.tbSeriesFix[nPart] == nil) then
           return -1
        end
     
        if nPlayerSeries == Item.tbSeriesFix[nPart][1] then
           return 1
        elseif nPlayerSeries == Item.tbSeriesFix[nPart][2] then
           return 2
        elseif nPlayerSeries == Item.tbSeriesFix[nPart][3] then
           return 3
        elseif nPlayerSeries == Item.tbSeriesFix[nPart][4] then
           return 4
        elseif nPlayerSeries == Item.tbSeriesFix[nPart][5] then
           return 5
        end
        
        return 0
     end
end

function Auction:CalcAuctionTax(nValidTimeOper,nOneTimeBuyPrice,nExpreedPrice) --CuculateTax When Sell Things
   
   if  nValidTimeOper == 0 then
       return 500        -- 一天
   elseif nValidTimeOper == 1 then
       return 1000       -- 两天
   elseif nValidTimeOper == 2 then
       return 1500       -- 三天
   else
       return 500        -- 一天为默认
   end
   
end

function Auction:NameFilter(szName, szFomatStr, nOffSet)
	local nIndex = 1;
	local nStart = 0;
	local tbResult = {};
	while 1 do
		local nStart, _ = string.find(szName, szFomatStr, nIndex);
		if (not nStart) then
			local szTemp = string.sub(szName, nIndex);
			table.insert(tbResult, szTemp);
			break;
		end
		local szTemp = string.sub(szName, nIndex, nStart - 1);
		table.insert(tbResult, szTemp);
		nIndex = nStart + nOffSet;
	end
	return tbResult;
end

function Auction:ParseName(szGoodsName)
	-- 需要忽略掉的字符以及该字符占的位数（如：一个中文"（"占两位）
	local tbPassType = {{"%d", 1}, {"%（", 2}, {"%）", 2}};
	
	local szMsg = szGoodsName;
	for i, v in ipairs(tbPassType) do
		local tbResult = self:NameFilter(szMsg, v[1], v[2]);
		szMsg = table.concat(tbResult);
	end
	return szMsg;
end

if MODULE_GAMESERVER then
function Auction:SetAuctionState(nState)
	self.nAuctionState = nState;
end

function Auction:ForbitManger(pPlayer)
	if (not pPlayer) then
		return 0;
	end
	
	if (GLOBAL_AGENT) then
		return 0;
	end;
	
	if (pPlayer.nMapId <= self.STARTFORBITMAPID) then
		return 1;
	end
	local nMapIndex = SubWorldID2Idx(pPlayer.nMapId);
	local nMapTemplateId = SubWorldIdx2MapCopy(nMapIndex);
	if (self.ExceptionTemplateMapID[nMapTemplateId] and 1 == self.ExceptionTemplateMapID[nMapTemplateId]) then
		return 1;
	end
	return 0;
end

--....IsOpen
function Auction:IsOpen(pPlayer)
	if pPlayer == nil then
		return 0;
	end
	local szErrorMsg = "";
	if (0 == self:ForbitManger(pPlayer)) then
		szErrorMsg = "B岷 膽峄� n脿y kh么ng cho ph茅p b脿y b谩n 膽岷 gi谩！";
	elseif pPlayer.IsAccountLock() ~= 0 then
		szErrorMsg = "T脿i kho岷 c峄 b岷 膽ang b峄� kh贸a, kh么ng th峄� th峄眂 hi峄噉 giao d峄媍h.";
	elseif (self.nAuctionState == 0) then
		szErrorMsg = "Th峄漣 gian b芒y gi峄� l脿 膽贸ng c峄璦 phi锚n 膽岷 gi谩, v矛 v岷瓂 xin vui l貌ng tr峄� l岷 sau khi m峄� n贸!";
	end
	if (szErrorMsg ~= "") then 
		pPlayer.CallClientScript({"Ui:ServerCall", "UI_INFOBOARD", "OnOpen" , szErrorMsg});	
		return 0;
	end
	return 1;
end

function Auction:OpenAuction()
	
	if self:IsOpen(me) ~= 1 then
		return 0;
	end
		
	if (me.nFightState == 1) then
		me.CallClientScript({"Ui:ServerCall", "UI_INFOBOARD", "OnOpen" , "Ban khong the dau gia."});
		return 0;
	end

	return me.CallClientScript({"UiManager:OpenWindow", "UI_AUCTIONROOM"});
end
Auction.tbc2sFun ["ApplyOpenAuction"] = Auction.OpenAuction;

function Auction:CanSendAdv(szName)
	local nNow = GetTime();
	local tbAuctionTemp = me.GetTempTable("Auction");
	local nPrvSendTime = tbAuctionTemp.nPrvSendTime or 0.
	if (0 == nPrvSendTime or nNow - nPrvSendTime >= self.SEPARATEDTIME ) then
		tbAuctionTemp.nPrvSendTime = nNow;
		return 1;
	end
	return 0;	
end

function Auction:SendAdvs(szAucKey)
	if (self:CanSendAdv(me.szName) ~= 1) then
		me.Msg("Qu岷g c谩o c峄 b岷 膽茫 膽瓢峄 ph谩t 膽i nhi峄乽 l岷, h茫y th峄� l岷 sau 铆t ph煤t n峄痑.");
		return ;
	end	
	if (not szAucKey) then
		me.Msg("Qu岷g c谩o c峄 b岷 b峄� sai, ch岷痗 ch岷痭, sau 膽贸 g峄璱!");
		return;
	end
	if (1 ~= ChatChannel:CheckPermission(me, ChatChannel.CHANNEL_WORLD)) then
		return 0;
	end
	
	local nRet = me.SendAucItemAdvsInfo(szAucKey);
	
	if (not nRet or nRet ~= 0) then
		me.Msg("Y锚u c岷 th么ng tin qu岷g c谩o c峄 b岷 kh么ng 膽煤ng, xin vui l貌ng x谩c nh岷璶 tr瓢峄沜 khi g峄璱.");
		 return ;		
	end
end
Auction.tbc2sFun ["ApplySendAdvs"] = Auction.SendAdvs;

function Auction:IsNamePass(pPlayer, szGoodsName)
	if (not pPlayer or not szGoodsName) then
		return 0;
	end
	if ("" == szGoodsName) then
		return 1;
	end
	
	local szTemp = self:ParseName(szGoodsName);
	if (KUnify.IsNameWordPass(szTemp) ~= 1) then
		pPlayer.Msg("B岷 ch峄� c贸 th峄� nh岷璸 k媒 t瓢, s峄�, (), v脿 k媒 hi峄噓 cho ph茅p");
		return 0;
	end

	return 1;
end

end

if MODULE_GC_SERVER then
	
function Auction:IsCloseCmd(nState)
	_G.GlobalExcute({"Auction:SetAuctionState", nState});
	return ;
end

end

Auction:Init();
