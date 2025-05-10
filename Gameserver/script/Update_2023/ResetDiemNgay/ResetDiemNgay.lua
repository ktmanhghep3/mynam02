if not MODULE_GAMESERVER then
    return;
end

function NewEventKT:Reset_DiemNgay()
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(4000, 2) < nDate then
me.SetTask(4000, 2, nDate);


local nPoint= me.GetTask(4000,1);
me.SetTask(4000,1,nPoint - 1);

end
end
