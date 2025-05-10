if not MODULE_GC_SERVER then
    return;
end
function ResetGioiHan:RemoveListHD()
    GlobalExcute{"ResetGioiHan:DeleteListHD"};
end