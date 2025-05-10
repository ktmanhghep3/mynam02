-------------------------------------------------------
-- 文件名　：KhacDiMon_gc.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-06-20 14:31:21
-- 文件描述：
-------------------------------------------------------

Require("\\script\\boss\\KhacDiMon\\KhacDiMon_def.lua");

if (not MODULE_GC_SERVER) then
	return 0;
end

local tbKhacDiMon = Boss.KhacDiMon;

--[[function Boss:OutPlayer()
	GlobalExcute{"Boss.KhacDiMon:Out_Player"};
end]]

--[[function Boss:CloseQinFive()
	GlobalExcute{"Boss.KhacDiMon:DoCloseQinFive"};
end

function Boss:CloseQinSystem()
	GlobalExcute{"Boss.KhacDiMon:_CloseSystem"};
end

function Boss:OpenQinSystem()
	GlobalExcute{"Boss.KhacDiMon:_OpenSystem"};
end]]


GCEvent:RegisterGCServerStartFunc(Boss.KhacDiMon.LoadSmallBossPos, Boss.KhacDiMon);
