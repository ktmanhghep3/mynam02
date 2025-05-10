if not MODULE_GC_SERVER then
    return;
end


--Add Linh Lung Kỳ Lân--
function LinhLungKyLan:Add_LinhLungKyLan()--ScriptFun trong tasklist.ini
    GlobalExcute{"LinhLungKyLan:Call_LinhLungKyLan"};--function bên GS KhacDiMon_Active.lua
end

--Xóa Linh Lung Kỳ Lân--
function LinhLungKyLan:Dell_LinhLungKyLan()--ScriptFun trong tasklist.ini
    GlobalExcute{"LinhLungKyLan:Del_LinhLungKyLan"};--function bên GS KhacDiMon_Active.lua
end
