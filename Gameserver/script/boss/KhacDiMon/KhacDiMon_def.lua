-------------------------------------------------------
-- �ļ�������KhacDiMon_def.lua
-- �����ߡ���zhangjinpin@kingsoft
-- ����ʱ�䣺2009-06-20 14:20:37
-- �ļ�������
-------------------------------------------------------

local tbKhacDiMon = {};
Boss.KhacDiMon = tbKhacDiMon;

tbKhacDiMon.TASK_GROUP_ID = 4090;		-- ���������

tbKhacDiMon.TASK_USE_TIME = 1;		-- ÿ�ջ���ʹ��ʱ��
tbKhacDiMon.TASK_START_TIME = 2		-- ���һ�λ��꿪��ʱ��
tbKhacDiMon.TASK_BUFF_LEVEL = 3;		-- ����buff�ȼ�
tbKhacDiMon.TASK_BUFF_FRAME = 4;		-- ����buffʣ��ʱ��
tbKhacDiMon.TASK_PROTECT = 5;			-- 崻�����
tbKhacDiMon.TASK_SAVEDATE = 8;
tbKhacDiMon.TASK_REFINE_ITEM = 10;		-- ÿ��ʹ������������Ʒ�ĸ���

tbKhacDiMon.MAX_DAILY_TIME = 180 * 60;	-- T?ng th?i gian trong Ho?t ??ng
tbKhacDiMon.MAX_DAILY_REFINEITEM = 10;	-- ÿ��ʹ������������Ʒ�ĸ���

--tbKhacDiMon.SMALL_BOSS_POS_PATH = "\\setting\\boss\\KhacDiMon\\smallboss_pos.txt";

tbKhacDiMon.tbYemingzhu =				-- ҹ����������ʱ�������ñ���
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

tbKhacDiMon._bOpen = 1;				-- ϵͳ����
tbKhacDiMon.bOpenQinFive = 0;			-- ����㿪��