local tbPhuDoCoThanh_CaoThu = {};
Boss.PhuDoCoThanh_CaoThu = tbPhuDoCoThanh_CaoThu;

tbPhuDoCoThanh_CaoThu.TASK_GROUP_ID = 4121;		-- Tast Time Long Hon Co Quat

tbPhuDoCoThanh_CaoThu.TASK_USE_TIME = 1;		-- ÿ�ջ���ʹ��ʱ��
tbPhuDoCoThanh_CaoThu.TASK_START_TIME = 2		-- ���һ�λ��꿪��ʱ��
tbPhuDoCoThanh_CaoThu.TASK_BUFF_LEVEL = 3;		-- ����buff�ȼ�
tbPhuDoCoThanh_CaoThu.TASK_BUFF_FRAME = 4;		-- ����buffʣ��ʱ��
tbPhuDoCoThanh_CaoThu.TASK_PROTECT = 5;			-- 崻�����
tbPhuDoCoThanh_CaoThu.TASK_SAVEDATE = 8;
tbPhuDoCoThanh_CaoThu.TASK_REFINE_ITEM = 10;		-- ÿ��ʹ������������Ʒ�ĸ���

tbPhuDoCoThanh_CaoThu.MAX_DAILY_TIME = 120 * 60;	-- ÿ��2Сʱ
tbPhuDoCoThanh_CaoThu.MAX_DAILY_REFINEITEM = 10;	-- ÿ��ʹ������������Ʒ�ĸ���

--tbPhuDoCoThanh_CaoThu.SMALL_BOSS_POS_PATH = "\\setting\\boss\\PhuDoCoThanh_CaoThu\\smallboss_pos.txt";

tbPhuDoCoThanh_CaoThu.tbYemingzhu =				-- ҹ����������ʱ�������ñ���
{
	[1] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	[2] = {0, 0, 0, 0, 0, 0, 1, 1, 3, 5},
	[3] = {0, 0, 0, 0, 0, 1, 1, 3, 9, 15},
	[4] = {0, 0, 0, 1, 1, 1, 2, 6, 18, 30},
	[5] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

if not tbPhuDoCoThanh_CaoThu.tbBoss then	
	tbPhuDoCoThanh_CaoThu.tbBoss = {};			-- {{nTempId, nStep, nDeathCount}}
end

if not tbPhuDoCoThanh_CaoThu.tbPlayerList then
	tbPhuDoCoThanh_CaoThu.tbPlayerList = {}; 	-- {{PlayerId, {MapLevel, StartTime}}}
end

tbPhuDoCoThanh_CaoThu._bOpen = 1;				-- ϵͳ����
tbPhuDoCoThanh_CaoThu.bOpenQinFive = 0;			-- ����㿪��