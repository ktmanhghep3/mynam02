if not MODULE_GC_SERVER then
    return;
end


--Add Boss--
function DuLongGiacNew:Add_DuLong()--ScriptFun trong tasklist.ini
    GlobalExcute{"DuLongGiacNew:Add_DuLongNew"};--function bên GS KhacDiMon_Active.lua
end


--Xóa Boss--
function DuLongGiacNew:Dell_BossTLDuLong()--ScriptFun trong tasklist.ini
    GlobalExcute{"DuLongGiacNew:Dell_BossDuLong"};--function bên GS KhacDiMon_Active.lua
end

