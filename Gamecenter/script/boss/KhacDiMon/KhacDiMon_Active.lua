if not MODULE_GC_SERVER then
    return;
end


--Reset Task Chung Server--
function KhacDiMon:ResetTaskChungKDM()--ScriptFun trong tasklist.ini
    GlobalExcute{"KhacDiMon:Reset_TaskChungKDM"};--function bên GS KhacDiMon_Active.lua
end

--Add Hỏa Trụ-Theo khung giờ: 15h00-18h00-19h00-22h00--
function KhacDiMon:ChiNgaoHoaTru()--ScriptFun trong tasklist.ini
    GlobalExcute{"KhacDiMon:Call_ChiNgaoHoaTru"};--function bên GS KhacDiMon_Active.lua
end

--Xóa Hỏa Trụ và Boss Trong Đông Hạ Lan Sơn Theo khung giờ: 16h00-18h59-21h00-23h00--
function KhacDiMon:DeleteHoaTru()--ScriptFun trong tasklist.ini
    GlobalExcute{"KhacDiMon:Delete_HoaTru"};--function bên GS KhacDiMon_Active.lua
end

--Add Bí Bảo-Theo khung giờ: 00h00-01h00-02h00-03h00-04h00-05h00-06h00-07h00-08h00-09h00-10h00-11h00-12h00-13h00-14h00-15h00-16h00-17h00-18h00-19h00-20h00-21h00-22h00-23h00--
function KhacDiMon:AddLongHonBiBao()--ScriptFun trong tasklist.ini
    GlobalExcute{"KhacDiMon:Add_LongHonBiBao"};--function bên GS KhacDiMon_Active.lua
end

--Xóa Bí Bảo-Theo khung giờ: 00h58-01h58-02h58-03h58-04h58-05h58-06h58-07h58-08h58-09h58-10h58-12h58-13h58-14h58-15h58-16h58-17h58-18h58-19h58-20h58-21h58-22h58-23h58--
function KhacDiMon:XoaLongHonBiBao()--ScriptFun trong tasklist.ini
    GlobalExcute{"KhacDiMon:Xoa_LongHonBiBao"};--function bên GS KhacDiMon_Active.lua
end

