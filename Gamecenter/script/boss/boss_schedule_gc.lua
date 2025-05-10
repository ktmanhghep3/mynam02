-------------------------------------------------------------------
--File: boss_schedule_gc.lua
--Author: lbh
--Date: 2008-1-10 12:43
--Describe: ˢBoss�ű�gamecenter��
-------------------------------------------------------------------
if not Boss then
	Boss = {};
elseif not MODULE_GC_SERVER then
	return;
end

-- ��¼��ЩBoss�ѱ��ٳ�
if not Boss.tbUniqueBossCallOut then
	Boss.tbUniqueBossCallOut = {};
end

local SZ_FILE_BOSS_SCHEDULE = "\\setting\\boss\\boss_schedule.ini";
Boss.tbScheduleCallout = {};
-- �������������ļ�
function Boss:LoadSchedule(szIniFile)
	self.tbScheduleCallout = {};
	local tbIniInfo = Lib:LoadIniFile(szIniFile);
	assert(tbIniInfo);
	-- ת���׶���ʽ
	for szBossName, tbCallOutInfo in pairs(tbIniInfo) do
		local nTemplateId = tonumber(tbCallOutInfo["TemplateId"]);
		local nLevel = tonumber(tbCallOutInfo["Level"]);
		local nSeries = -1;
		if (tbCallOutInfo["Series"]) then
			nSeries = tonumber(tbCallOutInfo["Series"]);
		end
		local tbTime = {};
		local tbPlace = {};
		local nTimeIndex = 1;
		local szTimeKey = "Time_"..nTimeIndex;
		while (tbCallOutInfo[szTimeKey]) do
			local nTime = tonumber(tbCallOutInfo[szTimeKey]);
			table.insert(tbTime, nTime);
			nTimeIndex = nTimeIndex + 1;
			szTimeKey = "Time_"..nTimeIndex;
		end 
		local nPlaceIndex = 1;
		local szPlaceKey = "Point_"..nPlaceIndex;
		while (tbCallOutInfo[szPlaceKey]) do
			table.insert(tbPlace, tbCallOutInfo[szPlaceKey]);
			nPlaceIndex = nPlaceIndex + 1;
			szPlaceKey = "Point_"..nPlaceIndex;
		end
		local tbNew = {};
		tbNew.nTemplateId = nTemplateId;
		tbNew.nLevel = nLevel;
		tbNew.nSeries = nSeries;
		tbNew.tbPlace = tbPlace;
		tbNew.tbTime = tbTime;
		table.insert(self.tbScheduleCallout, tbNew);
	end
end

-- ��̬ע�ᵽʱ������ϵͳ���Call Boss����
function Boss:RegisterScheduleTask()
	local nTaskId = KScheduleTask.AddTask("CALL_BOSS", "Boss", "ScheduleCallOut");
	assert(nTaskId > 0);
	for i, tbCallOutInfo in ipairs(self.tbScheduleCallout) do
		-- ʱ��ִ�е�ע��
		for _, nTime in ipairs(tbCallOutInfo.tbTime) do
			KScheduleTask.RegisterTimeTask(nTaskId, nTime, i);
		end
	end
end

-- ֻ����һ�Σ�����ͨ��Reload�ű��ķ�ʽ���¼��أ�������������
if not Boss._bInit_Schedule then
	Boss._bInit_Schedule = 1;
	Boss:LoadSchedule(SZ_FILE_BOSS_SCHEDULE);
	Boss:RegisterScheduleTask();
end

-- ʱ��㵽ʱִ��
function Boss:ScheduleCallOut(nSeqNum)
	local tbCallOutInfo = self.tbScheduleCallout[nSeqNum];
	if not tbCallOutInfo then
		return 0;
	end
	
	--ʱ��������Ƿ���.
	if tbCallOutInfo.nLevel == 55 then
		if TimeFrame:GetState("OpenBoss55") ~= 1 then
			return 0;
		end
	elseif tbCallOutInfo.nLevel == 75 then
		if TimeFrame:GetState("OpenBoss75") ~= 1 then
			return 0;
		end
	elseif tbCallOutInfo.nLevel == 95 then
		if TimeFrame:GetState("OpenBoss95") ~= 1 then
			return 0;
		end
	-- by zhangjinpin@kingsoft
	elseif tbCallOutInfo.nLevel == 120 then
		if TimeFrame:GetState("OpenBoss120") ~= 1 then
			return 0;
		end	
	end
		
	local nPlace = MathRandom(#tbCallOutInfo.tbPlace);
	local szPlace = tbCallOutInfo.tbPlace[nPlace];
	-- �ٻ�����
	local nMapId, nMapX, nMapY = self:TransPlace(szPlace);
	-- �ٻ�����
	local nSeries = tbCallOutInfo.nSeries;
	if (nSeries < 0) then
		nSeries = - 1;
	end
	GlobalExcute{"Boss:DoCallOut", tbCallOutInfo.nTemplateId, tbCallOutInfo.nLevel, nSeries, nMapId, nMapX, nMapY};
	return 0;
end

-- ���ַ����ĵص�ת������������
function Boss:TransPlace(szPlace)
	local nPos = string.find(szPlace, ",");
	local nMapId = tonumber(string.sub(szPlace, 1, nPos -1));
	local szPlace = string.sub(szPlace, nPos + 1);
	nPos = string.find(szPlace, ",");
	local nMapX = tonumber(string.sub(szPlace, 1, nPos - 1));
	nPos = string.find(szPlace, ",");
	local szPlace = string.sub(szPlace, nPos + 1);
	local nMapY = tonumber(szPlace);
	return nMapId, nMapX, nMapY;
end
