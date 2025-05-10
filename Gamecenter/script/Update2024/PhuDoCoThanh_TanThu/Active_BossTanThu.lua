if not MODULE_GC_SERVER then
    return;
end


--Add Boss--
function BossTanThu:Add_BossTanThu55()--ScriptFun trong tasklist.ini
    GlobalExcute{"BossTanThu:TanThu_AddBoss_55"};--function bên GS KhacDiMon_Active.lua
end
function BossTanThu:Add_BossTanThu75()--ScriptFun trong tasklist.ini
    GlobalExcute{"BossTanThu:TanThu_AddBoss_75"};--function bên GS KhacDiMon_Active.lua
end
function BossTanThu:Add_BossTanThu95()--ScriptFun trong tasklist.ini
    GlobalExcute{"BossTanThu:TanThu_AddBoss_95"};--function bên GS KhacDiMon_Active.lua
end

--Xóa Boss--
function BossTanThu:XoaBoss_TanThu()--ScriptFun trong tasklist.ini
    GlobalExcute{"BossTanThu:Delete_BossTanThu"};--function bên GS KhacDiMon_Active.lua
end
