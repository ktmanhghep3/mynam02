-------------------------------------------------------
-- �ļ�������LongHonCoQuat_def.lua
-- �����ߡ���zhangjinpin@kingsoft
-- ����ʱ�䣺2009-06-20 14:20:37
-- �ļ�������
-------------------------------------------------------

local tbLongHonCoQuat = {};
Boss.LongHonCoQuat = tbLongHonCoQuat;

tbLongHonCoQuat.TASK_GROUP_ID = 4091;		-- Tast Time Long Hon Co Quat

tbLongHonCoQuat.TASK_USE_TIME = 1;		-- ÿ�ջ���ʹ��ʱ��
tbLongHonCoQuat.TASK_START_TIME = 2		-- ���һ�λ��꿪��ʱ��
tbLongHonCoQuat.TASK_BUFF_LEVEL = 3;		-- ����buff�ȼ�
tbLongHonCoQuat.TASK_BUFF_FRAME = 4;		-- ����buffʣ��ʱ��
tbLongHonCoQuat.TASK_PROTECT = 5;			-- 崻�����
tbLongHonCoQuat.TASK_SAVEDATE = 8;
tbLongHonCoQuat.TASK_REFINE_ITEM = 10;		-- ÿ��ʹ������������Ʒ�ĸ���

tbLongHonCoQuat.MAX_DAILY_TIME = 60 * 60;	-- ÿ��2Сʱ
tbLongHonCoQuat.MAX_DAILY_REFINEITEM = 10;	-- ÿ��ʹ������������Ʒ�ĸ���

--tbLongHonCoQuat.SMALL_BOSS_POS_PATH = "\\setting\\boss\\LongHonCoQuat\\smallboss_pos.txt";

tbLongHonCoQuat.tbYemingzhu =				-- ҹ����������ʱ�������ñ���
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

tbLongHonCoQuat._bOpen = 1;				-- ϵͳ����
tbLongHonCoQuat.bOpenQinFive = 0;			-- ����㿪��