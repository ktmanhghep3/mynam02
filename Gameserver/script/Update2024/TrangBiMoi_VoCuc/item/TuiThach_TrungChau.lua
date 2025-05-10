local tbItem = Item:GetClass("TuiThach_TrungChau");

function tbItem:OnUse()
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	nRand = MathRandom(1, 1000);

	local tbRate = {250, 200, 300, 250};
	local tbAward = {1 ,2, 3, 4};

	for i = 1, 4 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end

	if (tbAward[nIndex]==1) then
		me.AddStackItem(18,1,3111,1,nil,1);--Khoáng Thạch Trung Châu
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> mở Túi Thạch Trung Châu nhận được <color=red>1 Khoáng Thạch Trung Châu<color> !!!<color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
		me.AddStackItem(18,1,3111,1,nil,2);--Khoáng Thạch Trung Châu
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> mở Túi Thạch Trung Châu nhận được <color=red>2 Khoáng Thạch Trung Châu<color> !!!<color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		
	elseif (tbAward[nIndex]==3) then
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},5);--Ngôi Sao May Mắn
		
	elseif (tbAward[nIndex]==4) then
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},10);--Ngôi Sao May Mắn
		
	end

	return 1;				
end
