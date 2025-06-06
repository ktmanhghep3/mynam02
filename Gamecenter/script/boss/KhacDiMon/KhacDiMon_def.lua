-------------------------------------------------------
-- 文件名　：KhacDiMon_def.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-06-20 14:20:37
-- 文件描述：
-------------------------------------------------------

local tbKhacDiMon = {};
Boss.KhacDiMon = tbKhacDiMon;

tbKhacDiMon.TASK_GROUP_ID = 4090;		-- 任务变量组

tbKhacDiMon.TASK_USE_TIME = 1;		-- 每日皇陵使用时间
tbKhacDiMon.TASK_START_TIME = 2		-- 最后一次皇陵开启时间
tbKhacDiMon.TASK_BUFF_LEVEL = 3;		-- 正面buff等级
tbKhacDiMon.TASK_BUFF_FRAME = 4;		-- 正面buff剩余时间
tbKhacDiMon.TASK_PROTECT = 5;			-- 宕机保护
tbKhacDiMon.TASK_SAVEDATE = 8;
tbKhacDiMon.TASK_REFINE_ITEM = 10;		-- 每天使用炼化声望物品的个数

tbKhacDiMon.MAX_DAILY_TIME = 180 * 60;	-- 每天2小时
tbKhacDiMon.MAX_DAILY_REFINEITEM = 10;	-- 每天使用炼化声望物品的个数

--tbKhacDiMon.SMALL_BOSS_POS_PATH = "\\setting\\boss\\KhacDiMon\\smallboss_pos.txt";

tbKhacDiMon.tbYemingzhu =				-- 夜明珠需求，暂时不用配置表了
{
	[1] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	[2] = {0, 0, 0, 0, 0, 0, 1, 1, 3, 5},
	[3] = {0, 0, 0, 0, 0, 1, 1, 3, 9, 15},
	[4] = {0, 0, 0, 1, 1, 1, 2, 6, 18, 30},
	[5] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

if not tbKhacDiMon.tbBoss then	
	tbKhacDiMon.tbBoss = {};			-- {{nTempId, nStep, nDeathCount}}
end

if not tbKhacDiMon.tbPlayerList then
	tbKhacDiMon.tbPlayerList = {}; 	-- {{PlayerId, {MapLevel, StartTime}}}
end

tbKhacDiMon._bOpen = 1;				-- 系统开关
tbKhacDiMon.bOpenQinFive = 0;			-- 第五层开关