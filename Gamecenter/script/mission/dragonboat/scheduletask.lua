-- �ļ�������scheduletask.lua
-- �����ߡ���sunduoliang
-- ����ʱ�䣺2009-04-27 16:10:50
-- ��  ��  ��

function Esport:ScheduletaskDragonBoat()
	if Esport.DragonBoat:CheckState() == 1 then
		Esport.DragonBoatConsole:StartSignUp();
	end
end
