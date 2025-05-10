-- 幸运大转盘
-- 2012/12/6 10:57:16
-- zhouchenfei

SpecialEvent.LuckyfanTrungThu =  SpecialEvent.LuckyfanTrungThu or {};
local LuckyfanTrungThu = SpecialEvent.LuckyfanTrungThu;

LuckyfanTrungThu.TASK_GROUP_ID = 3140;

LuckyfanTrungThu.TASKID_RANDOM_RESULT 		= 1;
LuckyfanTrungThu.TASKID_AWARD_TYPE 			= 2;
LuckyfanTrungThu.TASKID_SQU_LOTTERY_POS_1	= 3;
LuckyfanTrungThu.TASKID_SQU_LOTTERY_POS_2	= 4;	
LuckyfanTrungThu.TASKID_SQU_LOTTERY_POS_3	= 5;
LuckyfanTrungThu.TASKID_AWARD_RESULT_SYNC_1	= 6;
LuckyfanTrungThu.TASKID_AWARD_RESULT_SYNC_2	= 7;
LuckyfanTrungThu.TASKID_AWARD_RESULT_SYNC_3	= 8;
LuckyfanTrungThu.TASKID_LOTTERY_ROUND		= 9;
LuckyfanTrungThu.TASKID_AWARD_FINISH			= 10;
LuckyfanTrungThu.TASKID_DALIY_TOTAL_ROUND	= 11;
LuckyfanTrungThu.TASKID_GAME_STEP 			= 12;
LuckyfanTrungThu.TASKID_SAVE_BIG_RANDOMNUM 	= 13;
LuckyfanTrungThu.TASKID_GET_EX_AWARD_MASK	= 14;
LuckyfanTrungThu.TASKID_GET_EX_AWARD_PAT		= 15;
LuckyfanTrungThu.TASKID_TODAY_GET_ITEM_EVENT	= 17;  -- 活动中获得汤圆
LuckyfanTrungThu.TASKID_GET_AWARD			= 18;

LuckyfanTrungThu.MAX_COUNT_TASK				= 18;

LuckyfanTrungThu.TASKID_LUCKYFAN_VERSION		= 50;


LuckyfanTrungThu.LOTTERY_MAX_ROUND 			= 5;
LuckyfanTrungThu.LOTTERY_MAX_BIG_SEQU		= 25;
LuckyfanTrungThu.LOTTERY_ITEM_NUM			= 6;
LuckyfanTrungThu.LOTTERY_MAX_DALIY_COUNT 	= 400;-- luot quay moi ngay, phai sua lai tbRoundNeedItemNum nếu tăng lên
--script\ChucNang\Event\luckyfantrungthu\luckyfantet_def.lua
LuckyfanTrungThu.DEF_STEP_NOGAME 			= 0;
LuckyfanTrungThu.DEF_STEP_SHOW_BEGIN_CARD	= 1;
LuckyfanTrungThu.DEF_STEP_GET_CARD			= 2;

LuckyfanTrungThu.LUCKYFAN_VERSION			= 4;  -- 幸运碰碰的版本号

LuckyfanTrungThu.tbRoundNeedItemNum = {1, 3, 7, 13, 23, 39}; -- 每轮个数
LuckyfanTrungThu.tbRoundNeedItemNum_NEW = 1;

LuckyfanTrungThu.tbGameJoinItem = {18,1,3338,7};-- ID vat pham dung de xoay

LuckyfanTrungThu.tbAwardValue = {
	 [1] = 3000000,
	 [2] = 1280000,
	 [3] = 640000,
	 [4] = 320000,
	 [5] = 160000,
	 [6] = 80000,
	};

LuckyfanTrungThu.TIME_BEGIN			= 20201201;-- thoi gian bat dau
LuckyfanTrungThu.TIME_END			= 20241231;-- thoi gian ket thuc su kien
LuckyfanTrungThu.MIN_JOIN_LEVEL 		= 60;



LuckyfanTrungThu.tbAwardItemList = {
	[1] = {18,1,3338,1},
	[2] = {18,1,3338,2},
	[3] = {18,1,3338,3},
	[4] = {18,1,3338,4},
	[5] = {18,1,3338,5},
	[6] = {18,1,3338,6},
};

function c2s:ApplyLuckyFanTRUNGTHU_ActiveGameStep()
	SpecialEvent.LuckyfanTrungThu:ApplyLuckyFan_ActiveGameStep();
end

function c2s:ApplyLuckyFanTRUNGTHU_GetOneResultCard(nPos)
	if (type(nPos) ~= "number") then
		return 0;
	end
	SpecialEvent.LuckyfanTrungThu:ApplyLuckyFan_GetOneResultCard(nPos);
end