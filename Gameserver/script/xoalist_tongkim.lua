if not MODULE_GAMESERVER then
return;
end
function XoaList:RemoveList_GS()
if Config.Mission_Battle_CheckNumAccount == 1 then
	Battle:resetHWfile();
end

--[[if GhiTenTk.Tat_Mo_Tinh_Nang == 1 then
	GhiTenTk:resetHWfile();
end]]

local szTong = "\\script\\iDoctor\\CampBattle\\Tong.txt";  
KFile.WriteFile(szTong, "Name\n");
local szKim = "\\script\\iDoctor\\CampBattle\\Kim.txt";  
KFile.WriteFile(szKim, "Name\n");
end
