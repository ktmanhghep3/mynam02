if not MODULE_GC_SERVER then
	return;
end

function SpecialEvent:HoanhThanhPK_GC()
	GlobalExcute{"SpecialEvent.HoanhThanhPK:StartEvent_GS"};
end

function SpecialEvent:HoanhThanhPK_AddBoss()
	GlobalExcute{"SpecialEvent.HoanhThanhPK:Start_Boss"};
end

function SpecialEvent:HoanhThanhPK_DellBoss()
	GlobalExcute{"SpecialEvent.HoanhThanhPK:Dell_Boss"};
end
