local tbLongHonBiBao = {};
Boss.LongHonBiBao = tbLongHonBiBao;

tbLongHonBiBao.TASK_GROUP_ID = 4092;		-- Tast Time Long Hon Bi Bao

tbLongHonBiBao.TASK_USE_TIME = 1;		-- ÿ�ջ���ʹ��ʱ��
tbLongHonBiBao.TASK_START_TIME = 2		-- ���һ�λ��꿪��ʱ��
tbLongHonBiBao.TASK_BUFF_LEVEL = 3;		-- ����buff�ȼ�
tbLongHonBiBao.TASK_BUFF_FRAME = 4;		-- ����buffʣ��ʱ��
tbLongHonBiBao.TASK_PROTECT = 5;			-- 崻�����
tbLongHonBiBao.TASK_SAVEDATE = 8;
tbLongHonBiBao.TASK_REFINE_ITEM = 10;		-- ÿ��ʹ������������Ʒ�ĸ���

tbLongHonBiBao.MAX_DAILY_TIME = 5 * 60;	-- ÿ��2Сʱ
tbLongHonBiBao.MAX_DAILY_REFINEITEM = 10;	-- ÿ��ʹ������������Ʒ�ĸ���

--tbLongHonBiBao.SMALL_BOSS_POS_PATH = "\\setting\\boss\\LongHonBiBao\\smallboss_pos.txt";

tbLongHonBiBao.tbYemingzhu =				-- ҹ����������ʱ�������ñ���
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

tbLongHonBiBao._bOpen = 1;				-- ϵͳ����
tbLongHonBiBao.bOpenQinFive = 0;			-- ����㿪��