-----------------------------------------------------------
-- �ļ�������zhunbeiqutrap.lua
-- �ļ��������뿪�����ص�����״̬�л�
-- �����ߡ���ZhangDeheng
-- ����ʱ�䣺2008-11-26 19:06:26
-----------------------------------------------------------

-- �뿪��
local tbMap	= Map:GetClass(560);
local tbTrap_1 = tbMap:GetTrapClass("to_zhandou");

tbTrap_1.tbSendPos = {1712, 3119};

function tbTrap_1:OnPlayer()
	me.NewWorld(me.nMapId, self.tbSendPos[1], self.tbSendPos[2]);
	me.SetFightState(1);
end

-- �ص���
local tbMap	= Map:GetClass(560);
local tbTrap_2 = tbMap:GetTrapClass("to_feizhandou");

tbTrap_2.tbSendPos = {1722, 3129};

function tbTrap_2:OnPlayer()
	me.NewWorld(me.nMapId, self.tbSendPos[1], self.tbSendPos[2]);
	me.SetFightState(0);
end
