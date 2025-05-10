-------------------------------------------------------
-- 文件名　：LongHonCoQuat_def.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-06-20 14:20:37
-- 文件描述：
-------------------------------------------------------

local tbLongHonCoQuat = {};
Boss.LongHonCoQuat = tbLongHonCoQuat;

tbLongHonCoQuat.TASK_GROUP_ID = 4091;		-- Tast Time Long Hon Co Quat

tbLongHonCoQuat.TASK_USE_TIME = 1;		-- 每日皇陵使用时间
tbLongHonCoQuat.TASK_START_TIME = 2		-- 最后一次皇陵开启时间
tbLongHonCoQuat.TASK_BUFF_LEVEL = 3;		-- 正面buff等级
tbLongHonCoQuat.TASK_BUFF_FRAME = 4;		-- 正面buff剩余时间
tbLongHonCoQuat.TASK_PROTECT = 5;			-- 宕机保护
tbLongHonCoQuat.TASK_SAVEDATE = 8;
tbLongHonCoQuat.TASK_REFINE_ITEM = 10;		-- 每天使用炼化声望物品的个数

tbLongHonCoQuat.MAX_DAILY_TIME = 60 * 60;	-- 每天2小时
tbLongHonCoQuat.MAX_DAILY_REFINEITEM = 10;	-- 每天使用炼化声望物品的个数

--tbLongHonCoQuat.SMALL_BOSS_POS_PATH = "\\setting\\boss\\LongHonCoQuat\\smallboss_pos.txt";

tbLongHonCoQuat.tbYemingzhu =				-- 夜明珠需求，暂时不用配置表了
{
	[1] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	[2] = {0, 0, 0, 0, 0, 0, 1, 1, 3, 5},
	[3] = {0, 0, 0, 0, 0, 1, 1, 3, 9, 15},
	[4] = {0, 0, 0, 1, 1, 1, 2, 6, 18, 30},
	[5] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

if not tbLongHonCoQuat.tbBoss then	
	tbLongHonCoQuat.tbBoss = {};			-- {{nTempId, nStep, nDeathCount}}
end

if not tbLongHonCoQuat.tbPlayerList then
	tbLongHonCoQuat.tbPlayerList = {}; 	-- {{PlayerId, {MapLevel, StartTime}}}
end

tbLongHonCoQuat._bOpen = 1;				-- 系统开关
tbLongHonCoQuat.bOpenQinFive = 0;			-- 第五层开关