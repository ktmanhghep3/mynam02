local tbItem = Item:GetClass("LinhLung_HoaLien");

function tbItem:OnUse()

	me.AddStackItem(18,1,3004,2,{bForceBind=1,},10);--Ngôi Sao May Mắn


	local nRand = MathRandom(2);
	
	if (nRand==1) then
	local pItem = me.AddItem(18,1,3110,1);	--phù
	local szMsg = "<color=lightgreen><color=yellow>"..me.szName.."<color> mở <color=pink>Linh Lung Hỏa Liên<color> nhận được:\n 1 <color=cyan>"..pItem.szName.."<color>\n 10 Ngôi Sao May Mắn<color>";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end
	if (nRand==2) then
	local pItem = me.AddItem(18,1,3110,2);	--phù
	local szMsg = "<color=lightgreen><color=yellow>"..me.szName.."<color> mở <color=pink>Linh Lung Hỏa Liên<color> nhận được:\n 1 <color=cyan>"..pItem.szName.."<color>\n 10 Ngôi Sao May Mắn<color>";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end



return 1;	
end
