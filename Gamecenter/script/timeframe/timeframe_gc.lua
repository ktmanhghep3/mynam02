-------------------------------------------------------------------
--File: 	
--Author: sunduoliang
--Date:   2008-6-25
--Describe:	ʱ����
-------------------------------------------------------------------

function TimeFrame:SaveStartServerTime()
	if KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME) == 0 then
		local nDate = tonumber(GetLocalDate("%Y%m%d")) * 10000;
		local nSec = Lib:GetDate2Time(nDate);
		KGblTask.SCSetDbTaskInt(DBTASD_SERVER_STARTTIME, nSec);
	end
end

--�ֶ�����
function TimeFrame:ManuStartGC(szClass)
	if self.tbClass[szClass] == nil then
		print("�Ҳ��������", szClass);
		return;
	end
	self.tbClass[szClass].OpenState = 1;
	Dbg:WriteLog("TimeFrame","�ֶ�����ʱ���Ṧ��","ʱ����Id", self.tbClass[szClass].nId); 
	GlobalExcute({"TimeFrame:SetStateGS", szClass, tbClass.OpenState});
end

--�ֶ��ر�
function TimeFrame:ManuCloseGC(szClass)
	if self.tbClass[szClass] == nil then
		print("�Ҳ��������", szClass);
		return;
	end
	self.tbClass[szClass].OpenState = -1
	Dbg:WriteLog("TimeFrame","�ֶ��ر�ʱ���Ṧ��","ʱ����Id", self.tbClass[szClass].nId); 
	GlobalExcute({"TimeFrame:SetStateGS", szClass, tbClass.OpenState});
end

function TimeFrame:MsgStateGC(szClass)
	if self.tbClass[szClass] == nil then
		print("ʱ����","�Ҳ��������", szClass);
		return;
	end	
	local tbClass = self.tbClass[szClass];
	local nFrameDay  = tbClass.tbFrame.nTimeFrame;
	local nFrameTime = tbClass.tbFrame.nTimeFrameTime;
	local nHour = math.floor(nFrameTime / 100);
	local nMin  = math.mod(nFrameTime,100);	
	local nDate_ServerStart = tonumber(KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME));
	local nSec;
	if nFrameDay == 0 then
		nSec = nDate_ServerStart;
	else
		nSec = nDate_ServerStart + (nFrameDay -1) *86400 + (nHour*3600 + nMin*60);
	end
	local szMsg_Frame = os.date("%c", nSec);
	local szMsg_Now = GetLocalDate("%c");
	local szState = "δ����"
	if self:GetState(szClass) == 1 then
		szState = "�ѿ���"
	elseif self:GetState(szClass) == -1 then
		szState = "���ֶ��ر�";
	end
	local szMsg = "\n����ʱ��: "..szMsg_Frame.."\n����ʱ��: "..szMsg_Now.."\n״̬: "..szState;
	print(szMsg)
	return szMsg;
end
