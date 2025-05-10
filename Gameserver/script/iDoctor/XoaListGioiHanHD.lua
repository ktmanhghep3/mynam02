if not MODULE_GAMESERVER then
return;
end
function ResetGioiHan:DeleteListHD()

--Reset BHĐ--
if LimitBHD.MapBoss_CheckNumAccount == 1 then
	LimitBHD:resetHWfile();
end

--Reset CTC--
if Limit_CTC.MapBoss_CheckNumAccount == 1 then
	Limit_CTC:resetHWfile();
end

--Reset Luận Kiếm--
if Limit_LuanKiem.MapBoss_CheckNumAccount == 1 then
	Limit_LuanKiem:resetHWfile();
end

--Reset Loạn Phái--
if LimitTdmp.Tdmp_CheckNumAccount == 1 then
	LimitTdmp:resetHWfile();
end

--Reset TK--
if Config.Mission_Battle_CheckNumAccount == 1 then
	Config:resetHWfile();
end

--local szMsg = "<color=cyan>Ban Điều Hành Kiếm Thế Mảnh Ghép chúc bạn ngày mới Vui vẻ, Thành công và sớm chinh phục tuyệt đỉnh võ học trong thế giới Kiếm Hiệp Mảnh Ghép!<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
