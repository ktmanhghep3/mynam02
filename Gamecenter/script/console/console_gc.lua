-- �ļ�������console_gs.lua
-- �����ߡ���sunduoliang
-- ����ʱ�䣺2009-04-23 10:04:41
-- ��  ��  ��--����̨

if (not MODULE_GC_SERVER) then
	return 0;
end

function Console:ApplySignUp(nDegree, tbPlayerList)
	local nAttendMap = self:IsFull(nDegree, #tbPlayerList);
	if nAttendMap == 0 then
		GlobalExcute{"Esport:SignUpFail", tbPlayerList};
		return 0;
	end
	self:JoinGroupList(nDegree, nAttendMap, tbPlayerList);
	GlobalExcute{"Console:JoinGroupList", nDegree, nAttendMap, tbPlayerList};
	GlobalExcute{"Console:SignUpSucess", nDegree, nAttendMap, tbPlayerList};
end

function Console:StartSignUp(nDegree)
	local tbBase = Console:GetBase(nDegree);
	tbBase:StartSignUp();
end
