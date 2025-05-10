CTC.ISOPEN = 1;
---------------Thời gian-------------
CTC.WEEKDAY = {
	[0] = 0, -- CN 0 la tat , 1 la mo
	[1] = 1,-- T2 0 la tat , 1 la mo
	[2] = 0,-- T3 0 la tat , 1 la mo	 
	[3] = 1,-- T4 0 la tat , 1 la mo		
	[4] = 0,-- T5 0 la tat , 1 la mo
	[5] = 0,-- T6 0 la tat , 1 la mo	
	[6] = 0,-- T7 0 la tat , 1 la mo
};-- 1 là thứ 2; ngày diễn ra sự kiện gs. Cần đồng bộ gamecenter

function CTC:CheckTime()
	if CTC.ISOPEN ~= 1 then
		return false;
	end
	local nTime = GetTime();
	local nWeekDay = tonumber(os.date("%w", nTime))
	local nCurTime = tonumber(os.date("%H%M", nTime))
	-- if nWeekDay == CTC.WEEKDAY then
	if CTC.WEEKDAY[nWeekDay] == 1 then
		return true;
	end
	return false;
end
function CTC:Register()
	if CTC:CheckTime() == false then
		return;
	end
		GlobalExcute{"CTC:Register_GS"};

end
function CTC:StartGame()
	if CTC:CheckTime() == false then
		return;
	end
		GlobalExcute{"CTC:StartGame_GS"};

end
function CTC:EndGame()
	if CTC:CheckTime() == false then
		return;
	end
		GlobalExcute{"CTC:EndGame_GS"};

end
