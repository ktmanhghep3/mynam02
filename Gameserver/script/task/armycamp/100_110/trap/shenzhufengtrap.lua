-----------------------------------------------------------
-- �ļ�������shenzhufengtrap.lua
-- �ļ������������ű�
-- �����ߡ���ZhangDeheng
-- ����ʱ�䣺2008-11-27 08:42:29
-----------------------------------------------------------

-- ɱ��Ы�� �ſ�ͨ���˵�
local tbMap	= Map:GetClass(560);
local tbTrap_1 = tbMap:GetTrapClass("to_lingxiefeng");
-- 1655 3209 
tbTrap_1.tbSendPos = {1952, 2851};

function tbTrap_1:OnPlayer()
	local nSubWorld, _, _	= me.GetWorldPos();
	local tbInstancing = Task.tbArmyCampInstancingManager:GetInstancing(nSubWorld);
	assert(tbInstancing);
	if (tbInstancing.nShenZhuFengPass == 0) then
		me.NewWorld(me.nMapId, self.tbSendPos[1],self.tbSendPos[2]);
	end;
end