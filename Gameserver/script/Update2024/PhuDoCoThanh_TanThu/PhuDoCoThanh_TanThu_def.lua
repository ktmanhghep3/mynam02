local tbPhuDoCoThanh_TanThu = {};
Boss.PhuDoCoThanh_TanThu = tbPhuDoCoThanh_TanThu;

tbPhuDoCoThanh_TanThu.TASK_GROUP_ID = 4116;		-- Tast Time Long Hon Co Quat

tbPhuDoCoThanh_TanThu.TASK_USE_TIME = 1;		-- ÿ�ջ���ʹ��ʱ��
tbPhuDoCoThanh_TanThu.TASK_START_TIME = 2		-- ���һ�λ��꿪��ʱ��
tbPhuDoCoThanh_TanThu.TASK_BUFF_LEVEL = 3;		-- ����buff�ȼ�
tbPhuDoCoThanh_TanThu.TASK_BUFF_FRAME = 4;		-- ����buffʣ��ʱ��
tbPhuDoCoThanh_TanThu.TASK_PROTECT = 5;			-- 崻�����
tbPhuDoCoThanh_TanThu.TASK_SAVEDATE = 8;
tbPhuDoCoThanh_TanThu.TASK_REFINE_ITEM = 10;		-- ÿ��ʹ������������Ʒ�ĸ���

tbPhuDoCoThanh_TanThu.MAX_DAILY_TIME = 120 * 60;	-- ÿ��2Сʱ
tbPhuDoCoThanh_TanThu.MAX_DAILY_REFINEITEM = 10;	-- ÿ��ʹ������������Ʒ�ĸ���

--tbPhuDoCoThanh_TanThu.SMALL_BOSS_POS_PATH = "\\setting\\boss\\PhuDoCoThanh_TanThu\\smallboss_pos.txt";

tbPhuDoCoThanh_TanThu.tbYemingzhu =				-- ҹ����������ʱ�������ñ���
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

tbPhuDoCoThanh_TanThu._bOpen = 1;				-- ϵͳ����
tbPhuDoCoThanh_TanThu.bOpenQinFive = 0;			-- ����㿪��