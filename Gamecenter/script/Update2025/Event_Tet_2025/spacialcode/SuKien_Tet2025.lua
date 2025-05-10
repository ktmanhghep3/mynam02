if not MODULE_GC_SERVER then
    return;
end


--Add Boss--
function Event_Tet2025:Add_BanTiecTet()--ScriptFun trong tasklist.ini
    GlobalExcute{"Event_Tet2025:Add_BanTiecPhuongTuong"};--function bên GS KhacDiMon_Active.lua
end


--Xóa Boss--
function Event_Tet2025:Dell_BanTiecTet()--ScriptFun trong tasklist.ini
    GlobalExcute{"Event_Tet2025:Delete_BanTiecPhuongTuong"};--function bên GS KhacDiMon_Active.lua
end
