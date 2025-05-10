-------------------------------------------------------------------
--File: 	
--Author: 	sunduoliang
--Date: 	2008-4-14 9:00
--Describe:	Ǭ�����߼���Ҳ���ǲ���Ҫ����ֱ�Ӵ��͵�ָ���������߼�
-------------------------------------------------------------------

if (not Item.tbQianKunFu) then
	Item.tbQianKunFu = {};
end

local tb = Item.tbQianKunFu;

--Ǭ����ID,��Ӧʹ�ô���.
tb.tbItemList = {
		[85] = 10;
		[91] = 100;
	}
tb.tbItemTemplet= {18,1,85,1};
-- GCѯ�ʸ���Serverָ���Ķ����Ƿ�����
function tb:SelectMemberPos(nMemberPlayerId, nPlayerId, nItemId)
	GlobalExcute({"Item.tbQianKunFu:SeachPlayer", nMemberPlayerId, nPlayerId, nItemId});
end


-- GS ���������������Ƿ���ָ�����
function tb:SeachPlayer(nMemberPlayerId, nPlayerId, nItemId)
	-- ����ҵ��Ļ����������ҵ�����
	local pMember = KPlayer.GetPlayerObjById(nMemberPlayerId)
	if (pMember) then
		local nMapId, nPosX, nPosY = pMember.GetWorldPos();
		local nFightState = pMember.nFightState
		local nCanSendIn  = Item:IsCallInAtMap(nMapId, unpack(self.tbItemTemplet));
		if (nCanSendIn ~= 1) then
			nMapId = -1;
		end	
		GCExcute({"Item.tbQianKunFu:FindMember", nMemberPlayerId, nPlayerId, nItemId, nMapId, nPosX, nPosY, nFightState});		
	end
end


-- GC �õ�ָ��ͽ����Ϣ��֪ͨʦ��
function tb:FindMember(nMemberPlayerId, nPlayerId, nItemId, nMapId, nPosX, nPosY, nFightState)
	GlobalExcute({"Item.tbQianKunFu:ObtainMemberPos", nMemberPlayerId, nPlayerId, nItemId, nMapId, nPosX, nPosY, nFightState})
end


-- GS ��֪����λ��
function tb:ObtainMemberPos(nMemberPlayerId, nPlayerId, nItemId, nMapId, nPosX, nPosY, nFightState)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId)
	if pPlayer == nil then
		return 0;
	end
	if nMapId == -1 then
		pPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
		return 0;
	end
	local nCanSendOut = Item:CheckIsUseAtMap(pPlayer.nMapId, unpack(self.tbItemTemplet));
	if (nCanSendOut ~= 1) then
		pPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
		return 0;
	end
	if self:CheckMember(nPlayerId,nMemberPlayerId) ~= 1 then
		pPlayer.Msg("��û�иö��ѣ������Ǹö����Ѿ��뿪���飡");
		return 0;		
	end
	-- ִ�д���
	local pItem = KItem.GetObjById(nItemId);
	if pItem == nil then
		pPlayer.Msg("�޷��ҵ�Ǭ�������Ƿ�����������GM��ϵ��")
		return 0;
	end
	local nRet, szMsg = Map:CheckTagServerPlayerCount(nMapId)
	if nRet ~= 1 then
		pPlayer.Msg(szMsg);
		return 0;
	end
	local nUseCount = pItem.GetGenInfo(1,0);
	if self.tbItemList[pItem.nParticular] - nUseCount == 1 then
		if (pPlayer.DelItem(pItem, Player.emKLOSEITEM_USE) ~= 1) then
			pPlayer.Msg("ɾ��Ǭ����ʧ�ܣ�");
			return 0;
		end
	else
		pItem.SetGenInfo(1,nUseCount + 1);
		pItem.Sync();
	end
	pPlayer.SetFightState(nFightState);
	pPlayer.NewWorld(nMapId, nPosX, nPosY);
end

function tb:CheckMember(nPlayerId, nMemberPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId)
	if pPlayer == nil then
		return 0;
	end
	local tbTeamMemberList = KTeam.GetTeamMemberList(pPlayer.nTeamId);
	if tbTeamMemberList == nil then
		return 0;
	else
		for _, nMemPlayerId in pairs(tbTeamMemberList) do
				if nMemPlayerId == nMemberPlayerId then
					return 1;
				end
		end	
	end
	return 0;
end

