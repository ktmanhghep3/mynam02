-----------------------------------------------------------
-- �ļ�������lingxiefengtrap.lua
-- �ļ���������Ы��ű� 
-- �����ߡ���ZhangDeheng
-- ����ʱ�䣺2008-11-27 08:42:17
-----------------------------------------------------------

-- ɱ��Ы�� �ſ�ͨ���˵�
local tbMap	= Map:GetClass(560);
local tbTrap_1 = tbMap:GetTrapClass("to_tianjuegong");

tbTrap_1.tbSendPos = {1829, 2678};

function tbTrap_1:OnPlayer()
	local nSubWorld, _, _	= me.GetWorldPos();
	local tbInstancing = Task.tbArmyCampInstancingManager:GetInstancing(nSubWorld);
	assert(tbInstancing);
	
	if (tbInstancing.nLingXieFengPass == 0) then
		me.NewWorld(me.nMapId, self.tbSendPos[1],self.tbSendPos[2]);
	end;
end

-- ����������
local tbMap	= Map:GetClass(560);
local tbTrap_2 = tbMap:GetTrapClass("to_gongji");

tbTrap_2.tbSendPos = {1876, 2694};

function tbTrap_2:OnPlayer()
	local nSubWorld, _, _	= me.GetWorldPos();
	local tbInstancing = Task.tbArmyCampInstancingManager:GetInstancing(nSubWorld);
	assert(tbInstancing);
	
	if (tbInstancing.nTieGongJiLaoMen == 0) then
		me.NewWorld(me.nMapId, self.tbSendPos[1], self.tbSendPos[2]);
	end;
end;