-----------------------------------------------------------
-- �ļ�������biwufengtrap.lua
-- �ļ����������ڷ�trap��ű�
-- �����ߡ���ZhangDeheng
-- ����ʱ�䣺2008-11-26 19:46:12
-----------------------------------------------------------

-- ɱ��Ы�� �ſ�ͨ���˵�
local tbMap	= Map:GetClass(560);
local tbTrap_1 = tbMap:GetTrapClass("to_shenzhufeng");

tbTrap_1.tbSendPos = {1827, 3047};

function tbTrap_1:OnPlayer()
	local nSubWorld, _, _	= me.GetWorldPos();
	local tbInstancing = Task.tbArmyCampInstancingManager:GetInstancing(nSubWorld);
	assert(tbInstancing);
	
	if (tbInstancing.nBiWuFengPass == 0) then
		me.NewWorld(me.nMapId, self.tbSendPos[1],self.tbSendPos[2]);
	end;
end