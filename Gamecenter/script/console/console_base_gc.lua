-- �ļ�������console_gc.lua
-- �����ߡ���sunduoliang
-- ����ʱ�䣺2009-04-23 10:04:34
-- ��  ��  ��--����̨

if (not MODULE_GC_SERVER) then
	return 0;
end

Console.Base = Console.Base or {};
local tbBase = Console.Base;

function tbBase:StartSignUp()
	self:Init();
	local nDegree = self.nDegree;
	self.nState 	  = 1;
	self.tbTimerList.nReadyId = Timer:Register(self.tbCfg.nReadyTime, self.OnStartMission, self)
	GlobalExcute{"Console:StartSignUp", nDegree};
end

function tbBase:ApplySignUp(tbPlayerList)
	local nAttendMap = 0;
	for nMapId, tbGroup in pairs(self.tbGroupLists) do
		if tbGroup.nPlayerMax + #tbPlayerList <= self.DEF_PLAYER_MAX then
			nAttendMap = nMapId;
			break;
		end
	end
	if nAttendMap == 0 then
		GlobalExcute{"Console:SignUpFail", tbPlayerList};
		return 0;
	end
	
	self:JoinGroupList(nAttendMap, tbPlayerList);
	GlobalExcute{"Console:JoinGroupList", nAttendMap, tbPlayerList};
	GlobalExcute{"Console:SignUpSucess", nAttendMap, tbPlayerList};
end

function tbBase:GetPlayerData(nMapId, nId)
	return self.tbPlayerData[nMapId][nId];
end

function tbBase:OnStartMission()
	local nDegree = self.nDegree;
	self.nState 	  = 2;
	self.tbTimerList.nReadyId = nil;
	GlobalExcute{"Console:OnStartMission", nDegree};
	return 0;
end
