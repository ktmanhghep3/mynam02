local tbPhuDoCoThanh_TanThu = {};
Boss.PhuDoCoThanh_TanThu = tbPhuDoCoThanh_TanThu;

tbPhuDoCoThanh_TanThu.TASK_GROUP_ID = 4116;		-- Tast Time Long Hon Co Quat

tbPhuDoCoThanh_TanThu.TASK_USE_TIME = 1;		-- 每日皇陵使用时间
tbPhuDoCoThanh_TanThu.TASK_START_TIME = 2		-- 最后一次皇陵开启时间
tbPhuDoCoThanh_TanThu.TASK_BUFF_LEVEL = 3;		-- 正面buff等级
tbPhuDoCoThanh_TanThu.TASK_BUFF_FRAME = 4;		-- 正面buff剩余时间
tbPhuDoCoThanh_TanThu.TASK_PROTECT = 5;			-- 宕机保护
tbPhuDoCoThanh_TanThu.TASK_SAVEDATE = 8;
tbPhuDoCoThanh_TanThu.TASK_REFINE_ITEM = 10;		-- 每天使用炼化声望物品的个数

tbPhuDoCoThanh_TanThu.MAX_DAILY_TIME = 120 * 60;	-- 每天2小时
tbPhuDoCoThanh_TanThu.MAX_DAILY_REFINEITEM = 10;	-- 每天使用炼化声望物品的个数

--tbPhuDoCoThanh_TanThu.SMALL_BOSS_POS_PATH = "\\setting\\boss\\PhuDoCoThanh_TanThu\\smallboss_pos.txt";

tbPhuDoCoThanh_TanThu.tbYemingzhu =				-- 夜明珠需求，暂时不用配置表了
{
	[1] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	[2] = {0, 0, 0, 0, 0, 0, 1, 1, 3, 5},
	[3] = {0, 0, 0, 0, 0, 1, 1, 3, 9, 15},
	[4] = {0, 0, 0, 1, 1, 1, 2, 6, 18, 30},
	[5] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

if not tbPhuDoCoThanh_TanThu.tbBoss then	
	tbPhuDoCoThanh_TanThu.tbBoss = {};			-- {{nTempId, nStep, nDeathCount}}
end

if not tbPhuDoCoThanh_TanThu.tbPlayerList then
	tbPhuDoCoThanh_TanThu.tbPlayerList = {}; 	-- {{PlayerId, {MapLevel, StartTime}}}
end

tbPhuDoCoThanh_TanThu._bOpen = 1;				-- 系统开关
tbPhuDoCoThanh_TanThu.bOpenQinFive = 0;			-- 第五层开关