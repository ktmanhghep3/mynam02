local tbLongHonBiBao = {};
Boss.LongHonBiBao = tbLongHonBiBao;

tbLongHonBiBao.TASK_GROUP_ID = 4092;		-- Tast Time Long Hon Bi Bao

tbLongHonBiBao.TASK_USE_TIME = 1;		-- 每日皇陵使用时间
tbLongHonBiBao.TASK_START_TIME = 2		-- 最后一次皇陵开启时间
tbLongHonBiBao.TASK_BUFF_LEVEL = 3;		-- 正面buff等级
tbLongHonBiBao.TASK_BUFF_FRAME = 4;		-- 正面buff剩余时间
tbLongHonBiBao.TASK_PROTECT = 5;			-- 宕机保护
tbLongHonBiBao.TASK_SAVEDATE = 8;
tbLongHonBiBao.TASK_REFINE_ITEM = 10;		-- 每天使用炼化声望物品的个数

tbLongHonBiBao.MAX_DAILY_TIME = 5 * 60;	-- 每天2小时
tbLongHonBiBao.MAX_DAILY_REFINEITEM = 10;	-- 每天使用炼化声望物品的个数

--tbLongHonBiBao.SMALL_BOSS_POS_PATH = "\\setting\\boss\\LongHonBiBao\\smallboss_pos.txt";

tbLongHonBiBao.tbYemingzhu =				-- 夜明珠需求，暂时不用配置表了
{
	[1] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	[2] = {0, 0, 0, 0, 0, 0, 1, 1, 3, 5},
	[3] = {0, 0, 0, 0, 0, 1, 1, 3, 9, 15},
	[4] = {0, 0, 0, 1, 1, 1, 2, 6, 18, 30},
	[5] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

if not tbLongHonBiBao.tbBoss then	
	tbLongHonBiBao.tbBoss = {};			-- {{nTempId, nStep, nDeathCount}}
end

if not tbLongHonBiBao.tbPlayerList then
	tbLongHonBiBao.tbPlayerList = {}; 	-- {{PlayerId, {MapLevel, StartTime}}}
end

tbLongHonBiBao._bOpen = 1;				-- 系统开关
tbLongHonBiBao.bOpenQinFive = 0;			-- 第五层开关