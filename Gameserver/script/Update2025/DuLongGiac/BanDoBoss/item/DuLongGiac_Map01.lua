local tbItem = Item:GetClass("DuLongGiac_Map01");
tbItem.Item_Ruong = {18,1,4041,6}; --Bản đồ chưa giám định

tbItem.Rate_ThanhCong = 10;
tbItem.Rate_ThatBai = 100-tbItem.Rate_ThanhCong;

function tbItem:OnUse()

	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {self.Rate_ThanhCong,self.Rate_ThatBai};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	--Phần thưởng 1
	local pItem = me.AddItem(18,1,4041,7);--Bản đồ Bích Ba Động
	KDialog.MsgToGlobal("<color=yellow><color=cyan>"..me.szName.."<color> may mắn tìm thấy <color=green>"..pItem.szName.."<color> với "..self.Rate_ThanhCong.."% may mắn!<color>");	


	elseif (tbAward[nIndex]==2) then
	--Phần thưởng 2
	end

Task:DelItem(me, self.Item_Ruong, 1);
end
