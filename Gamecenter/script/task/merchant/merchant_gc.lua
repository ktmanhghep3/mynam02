
if not MODULE_GC_SERVER then
	return;
end
-- ��̬ע�ᵽʱ������ϵͳ���Call Boss����
function Merchant:RegisterScheduleTask()
	local nTaskId = KScheduleTask.AddTask("Merchant_Call_Npc", "Merchant", "ScheduleCallOut");
	assert(nTaskId > 0);
	for i=0, 47 do
		-- ʱ��ִ�е�ע��
		local nTime = (math.ceil((i+1)/2) - 1)*100 + math.mod(i,2) * 30;
		KScheduleTask.RegisterTimeTask(nTaskId, nTime, (i+1));
	end
end

function Merchant:ScheduleCallOut()
	GlobalExcute{"Merchant:RandomCallNpc"};
end

Merchant:RegisterScheduleTask();
