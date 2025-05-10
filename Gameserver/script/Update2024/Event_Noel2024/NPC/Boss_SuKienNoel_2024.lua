local tbBoss_SuKienNoel = Npc:GetClass("Boss_SuKienNoel_2024");-- class cua boss

function tbBoss_SuKienNoel:OnDeath(pNpcKiller)


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 
--KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3004,2); --Ngôi Sao May Mắn

--Item vào Túi--
me.AddStackItem(18,1,3039,10,nil,1);--Rương Sự Kiện

--Thông Báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>★ Anh Hùng: [ <color=red>"..me.szName.."<color> ] Chiến thắng Boss Sự Kiện Noel 2024 <color=cyan>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId).."<color>\n<color=violet>❉ Nhận được Phần thưởng Bất ngờ!<color><color>");
	KDialog.MsgToGlobal("<color=yellow>★ Anh Hùng: [ <color=red>"..me.szName.."<color> ] Chiến thắng Boss Sự Kiện Noel 2024 <color=cyan>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId).."<color>\n<color=violet>❉ Nhận được Phần thưởng Bất ngờ!<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
end

