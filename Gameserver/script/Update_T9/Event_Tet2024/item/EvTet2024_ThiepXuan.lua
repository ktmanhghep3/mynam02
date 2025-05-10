local tbItem = Item:GetClass("EvTet2024_ThiepXuan");

tbItem.NgoiSaoMayMan = {18,1,3004,2};
tbItem.ThiepXuan2024 = {18,1,3031,1};
tbItem.TyLe_TruItem = 1;
tbItem.PhanThuong1_DanhVongSTPK = 1;

tbItem.GioiHanTrangBi = 1;
tbItem.HoaCuLong = {1,12,1065,10};
tbItem.ThuyCuLong = {1,12,1066,10};


function tbItem:OnUse()
local nSo_HoaCuLong = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_HOACULONG);
local nSo_ThuyCuLong = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_THUYCULONG);
local Time	= os.date("%Y-%m-%d", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Event_Tet2024\\npc\\Log_NguaVip.txt";
local tbitem_NgoiSao = {unpack(self.NgoiSaoMayMan),0,0};
local tbitem_ThiepXuan	= {unpack(self.ThiepXuan2024),0,0};
local nSo_NgoiSao = me.GetItemCountInBags(unpack(self.NgoiSaoMayMan))
local nSo_ThiepXuan = me.GetItemCountInBags(unpack(self.ThiepXuan2024))

if nSo_NgoiSao < self.TyLe_TruItem then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Ngôi Sao May Mắn<color> không đủ <color=cyan>"..self.TyLe_TruItem.." cái<color>, không thể mở quà!<color>"});
return
end
if nSo_ThiepXuan < self.TyLe_TruItem then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red><color=yellow>Thiệp Xuân 2024<color> không đủ <color=cyan>"..self.TyLe_TruItem.." cái<color>, không thể mở quà!<color>"});
return
end

local nNeed = 5;
if me.CountFreeBagCell() < nNeed then
Dialog:Say(string.format("<color=yellow>Cần: <color=cyan>%s<color> ô trống trong hành trang<color>", nNeed));
return 0;
end

--Phần thưởng thứ 1:
me.AddRepute(14,1,self.PhanThuong1_DanhVongSTPK); --Điểm Danh Vọng Sát Thần PK

--Phần thưởng thứ 2:
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(116);

--Phần thưởng thứ 3:
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(117);

--Phần thưởng thứ 4:

--self:PhanThuong_4();


Task:DelItem(me, self.NgoiSaoMayMan, self.TyLe_TruItem);
return 1;
end


function tbItem:PhanThuong_4()
local nSo_HoaCuLong = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_HOACULONG);
local nSo_ThuyCuLong = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_THUYCULONG);
local Time	= os.date("%d-%m-%Y", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Event_Tet2024\\npc\\Log_NguaVip.txt";
--Phần thưởng thứ 4:
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 10000);
	local tbRate = {1,1,2000,3000,4998};
	local tbAward = {1,2,3,4,5};

	for i = 1, 5 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (me.szName == "ShenNana") or (me.szName == "BeoCaca") then
	--Dialog:Say("<color=red>Đã nhận ngựa!<color>");
		return;
	end

	--random 1 - Hỏa Cự Long--
	if (tbAward[nIndex]==1) then
	if nSo_HoaCuLong < self.GioiHanTrangBi then
local pItem = me.AddItem(unpack(self.HoaCuLong));--Hỏa Cự Long
KGblTask.SCSetDbTaskInt(DBTASD_GIOIHAN_HOACULONG, (nSo_HoaCuLong + 1));
local nSo_TaskDTB = nSo_HoaCuLong+1;
KFile.AppendFile(szHistory, ""..me.szName.."\t"..nSo_TaskDTB.."\t"..pItem.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Cực kỳ may mắn là chủ nhân của <color=red>"..pItem.szName.."<color> thần dũng từ <color=pink>Sự kiện Tết 2024!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
	return 0;
	end
	
	
	--random 2 - Thủy Cự Long--
	elseif (tbAward[nIndex]==2) then
	me.AddExp(2024);
	--[[if nSo_ThuyCuLong < self.GioiHanTrangBi then
local pItem = me.AddItem(unpack(self.ThuyCuLong));--Thủy Cự Long
KGblTask.SCSetDbTaskInt(DBTASD_GIOIHAN_THUYCULONG, (nSo_ThuyCuLong + 1));
local nSo_TaskDTB = nSo_ThuyCuLong+1;
KFile.AppendFile(szHistory, ""..me.szName.."\t"..nSo_TaskDTB.."\t"..pItem.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> Cực kỳ may mắn là chủ nhân của <color=red>"..pItem.szName.."<color> thần dũng từ <color=pink>Sự kiện Tết 2024!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
	return 0;
	end]]
	
	elseif (tbAward[nIndex]==3) then
me.AddExp(2024);

	elseif (tbAward[nIndex]==4) then
me.AddExp(2024);

	elseif (tbAward[nIndex]==5) then
me.AddExp(2024);
	end
end
