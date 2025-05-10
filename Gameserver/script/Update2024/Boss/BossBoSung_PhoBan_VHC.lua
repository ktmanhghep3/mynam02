local tbBossBoSung_PhoBan_VHC = Npc:GetClass("BossBoSung_PhoBan_VHC");-- class cua boss

function tbBossBoSung_PhoBan_VHC:OnDeath(pNpcKiller)


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 

	local pNpc = KNpc.Add2(2791 , 1, -1 , nNpcMapId, nNpcPosX, nNpcPosY);
	pNpc.szName = "{"..me.szName.."} tìm thấy";


end
