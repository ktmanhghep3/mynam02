-------------------------------------------------------
-- 文件名　：LongHonCoQuatling_1.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-06-09 11:23:12
-- 文件描述：
-------------------------------------------------------


-------------- 定义特定地图回调 ---------------
local tbMap = Map:GetClass(2106);

-- 定义玩家进入事件
function tbMap:OnEnter(szParam)
	
	-- 判断剩余时间
	local nUseTime = me.GetTask(Boss.LongHonCoQuat.TASK_GROUP_ID, Boss.LongHonCoQuat.TASK_USE_TIME);
	
	-- 剩余时间为0
	if nUseTime >= Boss.LongHonCoQuat.MAX_DAILY_TIME then
		me.NewWorld(Boss.LongHonCoQuat:GetLeaveMapPos());
		me.SetFightState(0);
		return;
	end
	
	-- 战斗保护
	Player:AddProtectedState(me, 6);
	
	-- 加入当前地图的列表
	Boss.LongHonCoQuat:AddPlayer(me.nId, 1);
	
	-- 地图对玩家影响
	Boss.LongHonCoQuat:OnMapEffect(me.nId, 1);
end;

-- 定义玩家离开事件
function tbMap:OnLeave(szParam)

	-- 清除地图效果
	Boss.LongHonCoQuat:OnMapLeave(me.nId, 1);
			
	-- 移出当前地图的列表
	Boss.LongHonCoQuat:RemovePlayer(me.nId);
end;

--VỊ TRÍ GIỮA MAP AN TOÀN--
--[[local tbSafeIn1 = tbMap:GetTrapClass("trap_chiendau");
function tbSafeIn1:OnPlayer()

	me.NewWorld(2106, 1622, 3167);--Chiến đấu
	me.SetFightState(1); --Trạng thái Chiến Đấu
	Player:AddProtectedState(me, 3);
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn đã vào khu vực Chiến Đấu!<color>"));
end;


--VỊ TRÍ RA NGOÀI AN TOÀN - CHIẾN ĐẤU--
local tbSafeOut1 = tbMap:GetTrapClass("trap_antoan");

function tbSafeOut1:OnPlayer()
	
	me.NewWorld(2106, 1605, 3153);--An toàn
	me.SetFightState(0); --Trạng thái An Toàn
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Bạn đã vào khu vực An Toàn!<color>"));
end;]]

