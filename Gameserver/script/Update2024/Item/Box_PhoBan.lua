
local tbItem = Item:GetClass("Box_PhoBan");	
tbItem.Item_Ruong = {18,1,3920,1};
tbItem.GioiHan_CaServer = 4;		--GIỚI HẠN CẢ SERVER


function tbItem:OnUse()
local SoLan_GioiHan = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_BOXPHOBAN_1);

---Phần thưởng Cố định--
	me.AddStackItem(18,1,3941,1,nil,1);

	if SoLan_GioiHan < self.GioiHan_CaServer then
		
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 1000);
	local tbRate = {999,1};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
if (tbAward[nIndex]==1) then
--me.AddStackItem(18,1,3600,1,nil,1);
elseif (tbAward[nIndex]==2) then
		local Time	= os.date("%d-%m-%Y", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\FILE_LOG\\Log_BXH_TruyTimVatBau.txt";	
		KGblTask.SCSetDbTaskInt(DBTASD_GIOIHAN_BOXPHOBAN_1, (SoLan_GioiHan + 1));		
		local pItem = me.AddItem(5,19,13,5);--Thanh Loan Đại Kiếm
		KFile.AppendFile(szHistory, ""..me.szName.."\t"..pItem.szName.."\t"..Time.."\t"..szIp.."\n");

end
end







Task:DelItem(me, self.Item_Ruong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(188);

end

