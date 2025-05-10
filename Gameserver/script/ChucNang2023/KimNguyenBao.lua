local tbItem = Item:GetClass("JBCoin_item_1");

function tbItem:OnUse()
	local Dong = 5;
	me.AddJbCoin(Dong);
	me.Msg("<color=yellow>Bạn nhận được <color=red>"..Dong.."<color> đồng<color>");
	return 1;				
end


local tbItem = Item:GetClass("JBCoin_item_2");

function tbItem:OnUse()
	local Dong = 10000;
	me.AddJbCoin(Dong);
	me.Msg("<color=yellow>Bạn nhận được <color=red>"..Dong.."<color> đồng<color>");
	return 1;				
end
