-------------------------------------------------------
-- �ļ�������baibaoxiang_def.lua
-- �����ߡ���zhangjinpin@kingsoft
-- ����ʱ�䣺2009-04-20 10:14:53
-- �ļ�������
-------------------------------------------------------

Baibaoxiang.TASK_GROUP_ID 			= 2086;	-- �ٱ������������
Baibaoxiang.TASK_BAIBAOXIANG_LEVEL 	= 1;	-- �������ܵȼ�
Baibaoxiang.TASK_BAIBAOXIANG_TIMES 	= 2;	-- ���ת�Ĵ���
Baibaoxiang.TASK_BAIBAOXIANG_TYPE 	= 3;	-- ���ս�������
Baibaoxiang.TASK_BAIBAOXIANG_COIN 	= 4;	-- Ͷע��������
Baibaoxiang.TASK_BAIBAOXIANG_RESULT = 5;	-- ��Ϸ���(1��32λ�����������6�ν��)
Baibaoxiang.TASK_BAIBAOXIANG_OVERFLOW = 6;	-- ������־
Baibaoxiang.TASK_BAIBAOXIANG_CONTINUE = 7;	-- ������־
Baibaoxiang.TASK_BAIBAOXIANG_WEEKEND = 8;	-- ÿ�ܿ����ӱ��
Baibaoxiang.TASK_BAIBAOXIANG_INTERVAL = 9;	-- �ϴε��ʱ��

Baibaoxiang.tbRateStart 	= {};			-- �����ʼ���ʱ�
Baibaoxiang.tbRateNormal 	= {};			-- ������׸��ʱ�

Baibaoxiang.MAX_LEVEL 	= 6;				-- ��߽����ȼ���6��
Baibaoxiang.MAX_EXTRA	= 20000;			-- �ʳؽ������ޣ�2��

Baibaoxiang.COIN_ID		= {18, 1, 325, 1};	-- ������ƷID
Baibaoxiang.BOX_ID		= {18, 1, 324, 1};	-- ������ƷID

Baibaoxiang.bOpen 		= EventManager.IVER_bOpenBaiBaoXiang;

-- ���·��
Baibaoxiang.RATE_START_PATH = "\\setting\\baibaoxiang\\rate_start.txt";
Baibaoxiang.RATE_NORMAL_PATH = "\\setting\\baibaoxiang\\rate_normal.txt";

-- ��������
Baibaoxiang.tbAwardType = 
{
	[1] = "����",
	[2] = "����",
	[3] = "����",
	[4] = "���",
	[5] = "����",
};

-- �������ձ�
Baibaoxiang.tbAwardConType = 
{
	["����"] = 1,
	["����"] = 2,
	["����"] = 3,
	["���"] = 4,
	["����"] = 5,
};

-- rate th??ng
Baibaoxiang.tbAwardValue = 
{
	["����"] = {4, 5, 6, 7, 8, 9},	-- huy?n tinh 6 s? t??ng ?ng 1-6 sao khi quay ???c
	["����"] = {1000, 3000, 6000, 9000, 12000, 15000},	-- tinh ho?t
	["����"] = {10000, 30000, 60000, 90000, 120000, 150000},	-- b?c
	["���"] = {500, 1500, 3000, 6000, 9000, 12000},	-- ??ng kh��a
	["����"] = {1},
	["����"] = {1, 3, 10, 35, 120, 400},	-- s? v? s�� nh?n ???c khi quay
};
