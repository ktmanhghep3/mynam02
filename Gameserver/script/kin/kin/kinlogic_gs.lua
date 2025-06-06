-------------------------------------------------------------------
--File: kinlogic_gs.lua
--Author: lbh
--Date: 2007-6-26 14:57
--Describe: Gameserver家族逻辑
-------------------------------------------------------------------
if not Kin then --调试需要
	Kin = {}
	print(GetLocalDate("%Y/%m/%d/%H/%M/%S").." build ok ..")
else
	if not MODULE_GAMESERVER then
		return
	end
end

Kin.c2sFun = {}
--注册能被客户端直接调用的函数
local function RegC2SFun(szName, fun)
	Kin.c2sFun[szName] = fun
end

function Kin:_CheckMemberCount(nRegular, nSigned, nRetire)
	if nRegular + nSigned >= self.MEMBER_LIMITED then
		return nil
	end
	return 1
end

function Kin:CreateKinApply_GS1(szKinName, nCamp)
	return self:DlgCreateKin(szKinName, nCamp)
end
RegC2SFun("CreateKin", Kin.CreateKinApply_GS1)


if not Kin.aKinCreateApply then
	Kin.aKinCreateApply={}
end

--GS1后缀表示申请逻辑，GS2后缀表示结果逻辑
--以列表的PlayerId创建家族
function Kin:CreateKin_GS1(anPlayerId, anStoredRepute, szKinName, nCamp, nPlayerId)
	if self.aKinCreateApply[nPlayerId] then
		return 0;
	end
	--家族名字合法性检查
	local nLen = GetNameShowLen(szKinName);
	if nLen < 6 or nLen > 12 then
		return -1;
	end
	--是否允许的单词范围
	if KUnify.IsNameWordPass(szKinName) ~= 1 then
		return -2;
	end
	--是否包含敏感字串
	if IsNamePass(szKinName) ~= 1 then
		return -3;
	end
	--检查家族名是否已占用
	if KKin.FindKin(szKinName) ~= nil then
		return -4;
	end
	--检查创建家族的成员是否符合要求
	if self:CanCreateKin(anPlayerId) ~= 1 then
		return -5;
	end
	
	self.aKinCreateApply[nPlayerId] = {anPlayerId, anStoredRepute, szKinName, nCamp};
	return  GCExcute{"Kin:CreateKinApply_GC", nPlayerId, szKinName}
end

function Kin:OnKinNameResult_GS2(nPlayerId, nResult)
	local tbParam = self.aKinCreateApply[nPlayerId]
	if not tbParam then
		return;
	end
	Kin.aKinCreateApply[nPlayerId] = nil;
	
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if (not cPlayer) then
		return 0;
	end
	
	if nResult ~= 1 then
		cPlayer.Msg("Tên gia tộc đã tồn tại, hãy thử tên khác");
		return;
	end
	
	if cPlayer.CostMoney(self.CREATE_KIN_MONEY, Player.emKPAY_CREATEKIN) ~= 1 then
		return 0;
	end
	
	GCExcute{"Kin:CreateKin_GC", unpack(tbParam)}
	
	--解散队伍
	if (cPlayer.nTeamId > 0) then
		KTeam.DisbandTeam(cPlayer.nTeamId);
	end
end

function Kin:CreateKin_GS2(anPlayerId, anStoredRepute, szKinName, nCamp, nCreateTime, tbStock)
	local cKin, nKinId = self:CreateKin(anPlayerId, anStoredRepute, szKinName, nCamp, nCreateTime, tbStock)
	if not cKin then
		return 0
	end
	for i, nPlayerId in ipairs(anPlayerId) do
		KKinGs.UpdateKinInfo(nPlayerId)
		
		-- 创建家族的时候增加师徒成就（加入家族）
		Achievement:FinishAchievement(nPlayerId, Achievement.ENTER_KIN);
	end
	return KKinGs.KinClientExcute(nKinId, {"Kin:CreateKin_C2", szKinName, nCamp})
end

--增加成员
function Kin:MemberAdd_GS1(nKinId, nExcutorId, nPlayerId, bCanJoinKinImmediately)
	if self:CheckSelfRight(nKinId, nExcutorId, 2) ~= 1 then
		return 0
	end
	if self:CheckMemberCanAdd(nKinId, nPlayerId) ~= 1 then
		return 0
	end
	return GCExcute{"Kin:MemberAdd_GC", nKinId, nExcutorId, nPlayerId, bCanJoinKinImmediately}
end

function Kin:MemberAdd_GS2(nDataVer, nKinId, nPlayerId, nMemberId, nJoinTime, nStoredRepute, nPersonalStock, bCanJoinKinImmediately)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then 
		return 0
	end
	local cMember = cKin.AddMember(nMemberId)
	if not cMember then
		return 0
	end
	cMember.SetJoinTime(nJoinTime)
	cMember.SetPlayerId(nPlayerId)
	cMember.SetFigure(self.FIGURE_SIGNED)
	if (bCanJoinKinImmediately == 1) then
		cMember.SetFigure(self.FIGURE_REGULAR);
	end
	cMember.SetPersonalStock(nPersonalStock)
	if nStoredRepute > 0 then
		cKin.AddTotalRepute(nStoredRepute);
	end
	KKinGs.UpdateKinInfo(nPlayerId)
	cKin.SetKinDataVer(nDataVer)
	local szPlayerName = KGCPlayer.GetPlayerName(nPlayerId)
	cKin.AddHistoryPlayerJoin(szPlayerName);
	KKin.DelKinInductee(nKinId, szPlayerName);
	
	-- 加入家族的成就
	Achievement:FinishAchievement(nPlayerId, Achievement.ENTER_KIN);
	
	local nRegular, nSigned, nRetire = cKin.GetMemberCount();
	local nMemberCount = nRegular + nSigned;
	if cKin.GetRecruitmentPublish() == 1 and nMemberCount >= self.MEMBER_LIMITED then
		cKin.SetRecruitmentPublish(0);
		KKin.Msg2Kin(nKinId, "Thành viên gia tộc đã đầy, kết thúc chiêu mộ gia tộc.");
	end
	return KKinGs.KinClientExcute(nKinId, {"Kin:MemberAdd_C2", nDataVer, nPlayerId, 
		nMemberId, nJoinTime, szPlayerName, nStoredRepute})
end

--邀请成员加入
function Kin:InviteAdd_GS1(nPlayerId)
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId)
	if not cPlayer then
		return 0
	end
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin = self:CheckSelfRight(nKinId, nExcutorId, 2)
	if nRet ~= 1 then
		return 0
	end
	if not self:_CheckMemberCount(cKin.GetMemberCount()) then
		me.Msg("Thành viên gia tộc đã đạt mức tối đa!")
		return 0
	end
	if cPlayer.GetCamp() == 0 then
		me.Msg("Người chơi chữ trắng không thể vào gia tộc")
		return 0
	end
	if cPlayer.nLevel < 10 then
		me.Msg("对方未满10级，不能邀请！")
		return 0
	end
--	if me.GetFriendFavor(cPlayer.szName) < self.INVITE_FAVOR then
--		me.Msg("你与对方的亲密度小于2级，不能邀请！")
--		return 0
--	end
	if GetTime() - KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_LEAVE_KIN_TIME) < 24 * 3600 then
		me.Msg("Người chơi vừa rời khỏi gia tộc khác chưa đầy 24 giờ!")
		return 0
	end
	local aInviteEvent = self:GetKinData(nKinId).aInviteEvent
	aInviteEvent[nPlayerId] = 1
	--5分钟后超时（可能造成本次定时器误删下一次同一玩家推荐事件的bug，但影响不大）
	Timer:Register(5*60*18, self.InviteCancel_GS, self, nKinId, nPlayerId)
	return cPlayer.CallClientScript({"Kin:InviteAdd_C2", nKinId, nExcutorId, cKin.GetName(), me.szName})
end
RegC2SFun("InviteAdd", Kin.InviteAdd_GS1)

--时间到取消邀请
function Kin:InviteCancel_GS(nKinId, nPlayerId)
	local aInviteEvent = self:GetKinData(nKinId).aInviteEvent
	aInviteEvent[nPlayerId] = nil
	return 0
end

--回答邀请
function Kin:InviteAddReply_GS1(nKinId, nInvitorId, bAccept)
	local nPlayerId = me.nId
	local aInviteEvent = self:GetKinData(nKinId).aInviteEvent
	if bAccept ~= 1 then
		local cKin = KKin.GetKin(nKinId)
		if not cKin then
			return 0
		end
		local cMember = cKin.GetMember(nInvitorId)
		if not cMember then
			return 0
		end
		local cPlayer = KPlayer.GetPlayerObjById(cMember.GetPlayerId())
		if cPlayer then
			cPlayer.Msg("<color=white>"..me.szName.."<color> từ chối lời mời từ gia tộc bạn!")
		end
		return 0
	end
	if not aInviteEvent[nPlayerId] then
		me.Msg("Thời gian chờ trả lời quá lâu hoặc bên kia không Online!")
		return 0
	end
	aInviteEvent[nPlayerId] = nil
	local bCanJoinKinImmediately = me.CanJoinKinImmediately();	-- 用来判断是否可以立即加入家族并且转正
	return self:MemberAdd_GS1(nKinId, nInvitorId, nPlayerId, bCanJoinKinImmediately)
end
RegC2SFun("InviteAddReply", Kin.InviteAddReply_GS1)

--删除成员，nMethod = 0自己退出，nMethod = 1开除
function Kin:MemberDel_GS1(nKinId, nMemberId, nMethod)
	return GCExcute{"Kin:MemberDel_GC", nKinId, nMemberId, nMethod}
end

function Kin:MemberDel_GS2(nDataVer, nKinId, nMemberId, nPlayerId, nMethod, nReputeLeft, nRepute)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then 
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	if cMember.GetFigure() == self.FIGURE_ASSISTANT then
		cKin.SetAssistant(0)
	end
	--退出时的时间
	KGCPlayer.OptSetTask(nPlayerId, KGCPlayer.TSK_LEAVE_KIN_TIME, GetTime())
	cKin.DelMember(nMemberId)
	cKin.SetKinDataVer(nDataVer)
	cKin.AddTotalRepute(-nRepute)
	KKinGs.PlayerLeaveKin(nPlayerId)
	return KKinGs.KinClientExcute(nKinId, {"Kin:MemberDel_C2", nDataVer, nMemberId, KGCPlayer.GetPlayerName(nPlayerId), nMethod, nRepute})
end

function Kin:MemberLeave_GS1()
	local nKinId, nExcutorId = me.GetKinMember()
	if nKinId == 0 or nExcutorId == 0 then
		return 0
	end
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nExcutorId)
	if not cMember then
		return 0
	end
	local nFigure = cMember.GetFigure()
	if nFigure == self.FIGURE_CAPTAIN then
		me.Msg("Tộc trưởng không thể trực tiếp rời khỏi gia tộc!")
		return 0
	end
	if nFigure ~= self.FIGURE_SIGNED and nFigure > 0 then
		local nTime = cMember.GetLeaveInitTime()
		local bCanLeaveKinImmediately = me.CanLeaveKinImmediately();
		if nTime == 0 then
			if (bCanLeaveKinImmediately == 0) then
				Dialog:Say("Thành viên chính thức muốn tự ý rời khỏi gia tộc, ba ngày sau mới có thể rời, bạn có muốn rời khỏi gia tộc?", {"Rời khỏi", self.LeaveApply_GS1, self, 1}, {"Đóng"})
			elseif (bCanLeaveKinImmediately == 1) then
				Dialog:Say("Bạn chưa là thành viên chính thức, có thể rời khỏi gia tộc ngay bây giờ, bạn có muốn rời khỏi gia tộc?", {"Rời khỏi", self.LeaveApply_GS1, self, 1, 1}, {"Đóng"})
			end
		else
			Dialog:Say("Bạn đã xin rời gia tộc, ba ngày sau vào lúc 18 giờ bạn sẽ chính thức rời khỏi tộc, trước lúc đó bạn có thể hủy xin rút khỏi gia tộc!", {"Hủy bỏ rời khỏi", self.LeaveApply_GS1, self, 0}, {"Đóng"})
		end
		return 1
	end
	return self:MemberDel_GS1(nKinId, nExcutorId, 0)
end
RegC2SFun("MemberLeave", Kin.MemberLeave_GS1)


function Kin:LeaveApply_GS1(bLeave, bCanLeaveKinImmediately)
	local nKinId, nExcutorId = me.GetKinMember()
	if nKinId == 0 or nExcutorId == 0 then
		return 0
	end
	if bLeave == 1 then
		if (not bCanLeaveKinImmediately or bCanLeaveKinImmediately == 0) then
			me.Msg("Bạn đã xin rời gia tộc, ba ngày sau vào lúc 18 giờ bạn sẽ chính thức rời khỏi tộc, trước lúc đó bạn có thể hủy xin rút khỏi gia tộc!")
		elseif (bCanLeaveKinImmediately and bCanLeaveKinImmediately == 1) then
			GCExcute{"Kin:MemberDel_GC", nKinId, nExcutorId, 0}
			me.Msg("Bạn đã chính thức rời khỏi gia tộc.");
		end
	else
		me.Msg("Bạn đã hủy bỏ xin rút khỏi gia tộc!")	
	end
	return GCExcute{"Kin:LeaveApply_GC", nKinId, nExcutorId, bLeave}
end

function Kin:LeaveApply_GS2(nKinId, nExcutorId, nTime)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nExcutorId)
	if not cMember then
		return 0
	end
	cMember.SetLeaveInitTime(nTime)
	return 1
end

--发起开除成员
function Kin:MemberKickInit_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	if nKinId == nMemberId then
		me.Msg("Bạn không thể khai trừ chính mình!")
		return 0
	end
	local nRet, cKin = self:CheckSelfRight(nKinId, nExcutorId, 2)
	if nRet ~= 1 then
		me.Msg("Chỉ có Tộc trưởng hoặc Tộc phó mới có quyền trục xuất!")
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	local nFigure = cMember.GetFigure()
	if nFigure <= self.FIGURE_ASSISTANT then
		me.Msg("Chỉ có Tộc trưởng hoặc Tộc phó mới có quyền khai trừ!")
		return 0
	end
	
	-- 首领不能开除
	local nTongId = cKin.GetBelongTong();
	if Tong:IsPresident(nTongId, nKinId, nMemberId) == 1 then
		me.Msg("Thủ lĩnh không thể trực tiếp khai trừ!")
		return 0;
	end
	
	--记名成员直接开除
	if nFigure == self.FIGURE_SIGNED then
		return self:MemberDel_GS1(nKinId, nMemberId, 1)
	end
	local aThisKickEvent = self:GetKinData(nKinId).aKickEvent
	if aThisKickEvent[nMemberId] then
		me.Msg("Việc khởi xướng trục xuất thành viên chưa được định trước!")
		return 0
	end
	local szName = KGCPlayer.GetPlayerName(cMember.GetPlayerId());
	me.Msg(string.format("Bạn đã tán thành trục xuất \"%s\", trong thời gian 10 phút các thành viên khác trong gia tộc phải đồng ý mới có thể chính thức trục xuất.", szName))
	return GCExcute{"Kin:MemberKickInit_GC", nKinId, nExcutorId, nMemberId}
end
RegC2SFun("MemberKickInit", Kin.MemberKickInit_GS1)

function Kin:MemberKickInit_GS2(nKinId, nExcutorId, nMemberId)
	local aThisKickEvent = self:GetKinData(nKinId).aKickEvent
	aThisKickEvent[nMemberId] = nExcutorId
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return;
	end
	local cMember = cKin.GetMember(nMemberId)
	return KKinGs.KinClientExcute(nKinId, {"Kin:MemberKickInit_C2", nMemberId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

--开除成员的响应
function Kin:MemberKickRespond_GS1(nMemberId, nAccept)
	local nKinId, nExcutorId = me.GetKinMember()
	if self:HaveFigure(nKinId, nExcutorId, 3) ~= 1 then
		me.Msg("Không phải thành viên chính thức không thể bỏ phiếu!")
		return 0
	end
	local aThisKickEvent = self:GetKinData(nKinId).aKickEvent
	if not aThisKickEvent[nMemberId] then
		me.Msg("Thời gian tán thành trục xuất đã quá hạn!")
		return 0
	end
	if nExcutorId == aThisKickEvent[nMemberId] then
		me.Msg("Người khởi xướng bỏ phiếu không hợp lệ!")
		return 0
	end
	if nAccept == 1 then
		me.Msg("Bạn đồng ý trục xuất thành viên gia tộc!")
		return GCExcute{"Kin:MemberKickRespond_GC", nKinId, nExcutorId, nMemberId}
	else
		me.Msg("Bạn không tán thành trục xuất thành viên rời khỏi gia tộc!")
		return 1;
	end
end
RegC2SFun("MemberKickRespond", Kin.MemberKickRespond_GS1)

function Kin:MemberKickRespond_GS2(nKinId, nMemberId, nEventId)
end

function Kin:MemberRetire_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	if not nMemberId then
		nMemberId = nExcutorId
	end
	
	local cKin, cMember
	if nMemberId ~= nExcutorId then
		local nRet
		nRet, cKin = self:CheckSelfRight(nKinId, nExcutorId, 2)
		if nRet ~= 1 then
			return 0
		end
		cMember = cKin.GetMember(nMemberId)
	else
		cKin = KKin.GetKin(nKinId)
		if not cKin then
			return 0
		end
		cMember = cKin.GetMember(nExcutorId)
	end
	if not cMember then
		return 0
	end
	
	local nFigure = cMember.GetFigure()
	if nFigure == self.FIGURE_CAPTAIN then
		me.Msg("Tộc trưởng không thể ẩn danh!")
		return 0
	end
	if cMember.GetFigure() > self.FIGURE_REGULAR then
		me.Msg("Thành viên chính thức ẩn danh!")
		return 0
	end
	
	local n = 0.5;
	if cKin.GetBelongTong() ~= 0 then
		n = 1; 
	end
	
	-- 首领不能退隐
	local nTongId = cKin.GetBelongTong();
	if Tong:IsPresident(nTongId, nKinId, nMemberId) == 1 then
		me.Msg("Thủ lĩnh không thể ẩn danh!");
		return 0;
	end
	
	local nRegular, nSigned, nRetireCount = cKin.GetMemberCount();
	if nRetireCount >= math.floor((nRegular + nSigned) * n) then
		me.Msg("Thời gian ẩn danh đã hết, bạn không thể ẩn danh!")
		return 0;
	end
	return GCExcute{"Kin:MemberRetire_GC", nKinId, nMemberId}
end
RegC2SFun("MemberRetire", Kin.MemberRetire_GS1)

function Kin:MemberRetire_GS2(nKinId, nMemberId, nTime)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	local nFigure = cMember.GetFigure()
	if nFigure == self.FIGURE_ASSISTANT then
		cKin.SetAssistant(0); 			-- 副族长退隐
	end
	cMember.SetFigure(self.FIGURE_RETIRE)
	cMember.SetEnvoyFigure(0);			-- 退隐删除掌令使职位
	cMember.SetBitExcellent(0);			-- 退隐删除精英
	cMember.SetRetireTime(nTime);		-- 记录退隐时间	
	local nPlayerId = cMember.GetPlayerId()
	KKinGs.UpdateKinInfo(nPlayerId)
	return KKinGs.KinClientExcute(nKinId, {"Kin:MemberRetire_C2", nMemberId, KGCPlayer.GetPlayerName(nPlayerId)})
end

-- 取消退隐
function Kin:CancelRetire_GS1()
	local nKinId, nMemberId = me.GetKinMember();
	if nKinId == 0 or nMemberId == 0 then
		me.Msg("Bạn không có gia tộc");
		return 0;
	end
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	local nFigure = cMember.GetFigure()
	if nFigure ~= self.FIGURE_RETIRE then
		me.Msg("Bạn không phải thành viên ẩn danh! Không thể hủy thoái ẩn!");
		return 0;
	end
	if not self:_CheckMemberCount(cKin.GetMemberCount()) then		-- 到达人数上限，取消退隐失败
		me.Msg("Thành viên ẩn danh trong gia tộc đã tối đa! Không thể thêm!");
		return 0;
	end
	if GetTime() - cMember.GetRetireTime() < self.CANCEL_RETIRE_TIME then
		me.Msg("Hủy bỏ ẩn danh phải hơn 7 ngày!");
		return 0;
	end
	GCExcute{"Kin:CancelRetire_GC", nKinId, nMemberId}
end
RegC2SFun("CancelRetire", Kin.CancelRetire_GS1);

function Kin:CancelRetire_GS2(nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if not cMember then
		return 0
	end
	cMember.SetFigure(self.FIGURE_REGULAR);
	local nPlayerId = cMember.GetPlayerId()
	KKinGs.UpdateKinInfo(nPlayerId)
	
	local nRegular, nSign = cKin.GetMemberCount();
	local nMemberCount = nRegular + nSign + 1;
	if cKin.GetRecruitmentPublish() == 1 and nMemberCount >= self.MEMBER_LIMITED then
		cKin.SetRecruitmentPublish(0);
		KKin.Msg2Kin(nKinId, "Gia tộc đã đầy, kết thúc chiêu mộ gia tộc.");
	end
	
	return KKinGs.KinClientExcute(nKinId, {"Kin:CancelRetire_C2", nMemberId, KGCPlayer.GetPlayerName(nPlayerId)});
end

-- 拥有转正资格
function Kin:SetCan2Regular_GS2(nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0;
	end
	cMember.SetCan2Regular(1);
	return 1;
end

-- 试用转正GS1
function Kin:Member2Regular_GS1(nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0;
	end
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	if Kin:HaveFigure(nSelfKinId, nSelfMemberId, Kin.FIGURE_REGULAR) ~= 1 then
		me.Msg("Bạn không có quyền chuyển người chơi thành thành viên chính thức");
		return 0;
	end
	if cMember.GetFigure() ~= self.FIGURE_SIGNED then
		me.Msg("Người chơi đã là thành viên chính thức");
		return 0;
	end
	if cMember.GetCan2Regular() ~= 1 then
		me.Msg("Người chơi chưa vượt qua thời hạn thử thách gia tộc");
		return 0;
	end
	local szName =KGCPlayer.GetPlayerName(cMember.GetPlayerId())
	if me.GetFriendFavor(szName) < self.INVITE_FAVOR then
		me.Msg("Độ thân mật giữa bạn và người này chưa đủ, bạn không thể chuyển người này thành thành viên chính thức");
		return 0;
	end
	return GCExcute{"Kin:Member2Regular_GC", nKinId, nMemberId};
end
RegC2SFun("Member2Regular", Kin.Member2Regular_GS1)

-- 试用转正GS2
function Kin:Member2Regular_GS2(nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	cMember.SetFigure(self.FIGURE_REGULAR)
	return KKinGs.KinClientExcute(nKinId, {"Kin:Member2Regular_C2", nMemberId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

function Kin:AddKinOffer_GS2(nKinId, nMemberId, nOffer)
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	if (not nOffer or nOffer <= 0) then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if (not cMember) then
		return 0;
	end
	
	cKin.AddKinOffer(nOffer);
	cKin.AddWeeklyKinOffer(nOffer);
		
	cMember.AddKinOffer(nOffer);
	cMember.AddWeeklyKinOffer(nOffer);
end

--踢人事件取消
function Kin:MemberKickCancel_GS2(nKinId, nMemberId)
	local aThisKickEvent = self:GetKinData(nKinId).aKickEvent
	aThisKickEvent[nMemberId] = nil
	return 0
end

function Kin:MemberIntroduce_GS1(nPlayerId)
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId)
	if not cPlayer then
		return 0
	end
	local nKinId, nExcutorId = me.GetKinMember()
	local bRet, cKin = self:HaveFigure(nKinId, nExcutorId, 3)
	if bRet ~= 1 then
		me.Msg("Không thể đề cử thành viên chính thức!")
		return 0
	end
	if cPlayer.GetCamp() == 0 then
		me.Msg("Người chơi mới không thể vào gia tộc!")
		return 0
	end
	if cPlayer.nLevel < 10 then
		me.Msg("Người chơi cấp nhỏ hơn 10, không thể vào gia tộc!")
		return 0
	end
	if KKin.GetPlayerKinMember(nPlayerId) ~= 0 then
		me.Msg("Người chơi đã có gia tộc!")
		return 0
	end
	if not self:_CheckMemberCount(cKin.GetMemberCount()) then
		me.Msg("Gia tộc đã đầy!")
		return 0;
	end
	if me.GetFriendFavor(cPlayer.szName) < self.INVITE_FAVOR then
		me.Msg("Thân mật của bạn và người chơi chưa đạt cấp 2, không nên mời!")
		return 0
	end
	if GetTime() - KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_LEAVE_KIN_TIME) < 24 * 3600 then
		me.Msg("Người chơi rời khỏi gia tộc khác chưa đầy 24 giờ!")
		return 0
	end
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	--如果推荐已经发起过，返回
	if aThisIntroEvent[nPlayerId] then
		me.Msg("Người chơi đã được tiến cử bởi thành viên khác, chờ tộc trưởng trả lời!")
		return 0
	end
	--未确认前先设为0
	aThisIntroEvent[nPlayerId] = 0
	--5分钟后删除（可能会造成删除下一个同一nPlayerId事件的bug，但影响很小，忽略）
	Timer:Register(5*60*18, self.IntroduceCancel_GS, self, nKinId, nPlayerId)
	--转发到被推荐人
	cPlayer.CallClientScript({"Kin:MemberIntroduceMe_C2", nKinId, nExcutorId, cKin.GetName(), me.szName})
	--return GCExcute{"Kin:MemberIntroduce_GC", nKinId, nExcutorId, nPlayerId}
end
RegC2SFun("MemberIntroduce", Kin.MemberIntroduce_GS1)

function Kin:MemberIntroduce_GS2(nKinId, nExcutorId, nPlayerId)
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	--若之前未设过删除定时器，设置一个
	if not aThisIntroEvent[nPlayerId] then
		Timer:Register(5*60*18, self.IntroduceCancel_GS, self, nKinId, nPlayerId)
	end
	aThisIntroEvent[nPlayerId] = nExcutorId
	--发送到副族长以上领导层
	return KKinGs.KinClientExcute(nKinId, {"Kin:MemberIntroduce_C2", nExcutorId, nPlayerId, KGCPlayer.GetPlayerName(nPlayerId)}, self.FIGURE_ASSISTANT)
end

--被推荐人确认推荐
function Kin:MemberIntroduceConfirm_GS1(nKinId, nIntroducerId, bAccept)
	local nPlayerId = me.nId
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	--如果推荐事件不存在，返回
	if not aThisIntroEvent[nPlayerId] then
		return 0
	end
	if bAccept ~= 1 then
		aThisIntroEvent[nPlayerId] = nil
		local cKin = KKin.GetKin(nKinId)
		if not cKin then
			return 0
		end
		local cMember = cKin.GetMember(nIntroducerId)
		if not cMember then
			return 0
		end
		local cPlayer = KPlayer.GetPlayerObjById(cMember.GetPlayerId())
		if cPlayer then
			cPlayer.Msg("<color=white>"..me.szName.."<color> từ chối đề nghị vào gia tộc!")
		end
		return 0
	end
	return GCExcute{"Kin:MemberIntroduce_GC", nKinId, nIntroducerId, nPlayerId, me.nPrestige}
end
RegC2SFun("MemberIntroduceConfirm", Kin.MemberIntroduceConfirm_GS1)


--时间到取消推荐事件
function Kin:IntroduceCancel_GS(nKinId, nPlayerId)
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	aThisIntroEvent[nPlayerId] = nil
	return 0
end

--接受或拒绝推荐申请
function Kin:AcceptIntroduce_GS1(nPlayerId, bAccept)
	local nKinId, nExcutorId = me.GetKinMember()
	if self:CheckSelfRight(nKinId, nExcutorId, 2) ~= 1 then
		return 0
	end
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	--如果推荐事件已不存在或未得到被推荐人确认
	if not aThisIntroEvent[nPlayerId] or aThisIntroEvent[nPlayerId] == 0 then
		return 0
	end
	return GCExcute{"Kin:AcceptIntroduce_GC", nKinId, nExcutorId, nPlayerId, bAccept}
end
RegC2SFun("AcceptIntroduce", Kin.AcceptIntroduce_GS1)

function Kin:AcceptIntroduce_GS2(nKinId, nPlayerId)
	local aThisIntroEvent = self:GetKinData(nKinId).aIntroduceEvent
	--如果推荐事件已不存在
	if aThisIntroEvent[nPlayerId] then
		aThisIntroEvent[nPlayerId] = nil
	end
	return 1
end

--更换称号
function Kin:ChangeTitle_GS1(nTitleType, szTitle)
	local nKinId, nExcutorId = me.GetKinMember()
	if self:CheckSelfRight(nKinId, nExcutorId, 2) ~= 1 then
		return 0
	end
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local nLen = #szTitle;
	if nLen > 8 then
		me.Msg("Tiêu đề không quá 4 ký tự");
		return 0
	end
	--称号名字合法性检查
	if KUnify.IsNameWordPass(szTitle) ~= 1 then
		me.Msg("Tiêu đề chỉ chứa các chữ cái và ký tự []!");	
		return 0;
	end	
	--名称过滤
	if IsNamePass(szTitle) ~= 1 then
		me.Msg("Tiêu đề không hợp lệ!");
		return 0;
	end
	--nTitleType + 1即为称号ID
	if cKin.SetBufTask(nTitleType + 1, szTitle) ~= 1 then
		return 0
	end
	return GCExcute{"Kin:ChangeTitle_GC", nKinId, nExcutorId, nTitleType, szTitle}
end
RegC2SFun("ChangeTitle", Kin.ChangeTitle_GS1)

function Kin:ChangeTitle_GS2(nKinId, nTitleType, szTitle)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	--nTitleType + 1即为称号ID
	if cKin.SetBufTask(nTitleType + 1, szTitle) ~= 1 then
		return 0
	end
	if cKin.GetBelongTong() == 0 then
		KKinGs.UpdateKinTitle(nKinId, nTitleType, szTitle)
	end
	return KKinGs.KinClientExcute(nKinId, {"Kin:ChangeTitle_C2", nTitleType, szTitle})
end

--更换阵营
function Kin:ChangeCamp_GS2(nDataVer, nKinId, nCamp, nDate)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local nLastCamp = cKin.GetCamp()
	if cKin.SetCamp(nCamp) ~= 1 then
		return 0
	end
	--更新所有成员阵营
	if nLastCamp ~= nCamp then
		KKinGs.UpdateKinMemberCamp(nKinId, nCamp)
	end
	cKin.SetKinDataVer(nDataVer);
	cKin.SetChangeCampDate(nDate);
	return KKinGs.KinClientExcute(nKinId, {"Kin:ChangeCamp_C2", nDataVer, nCamp})
end

--设置副族长
function Kin:SetAssistant_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin = self:CheckSelfRight(nKinId, nExcutorId, 1)
	if nRet ~= 1 then
		return 0
	end
	if nExcutorId == nMemberId then
		me.Msg("Không thể thực hiện thao tác!")
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	if cMember.GetFigure() ~= self.FIGURE_REGULAR then
		me.Msg("Thành viên chính thức mới có thể được bổ nhiệm!")
		return 0
	end
	local aKinData = self:GetKinData(nKinId)
	if aKinData.nLastSetAssistantTime and GetTime() - aKinData.nLastSetAssistantTime < self.CHANGE_ASSISTANT_TIME then
		me.Msg("Hai lần thay thế Tộc phó phải cách nhau 24 giờ!")
		return 0
	end
	return GCExcute{"Kin:SetAssistant_GC", nKinId, nExcutorId, nMemberId}
end
RegC2SFun("SetAssistant", Kin.SetAssistant_GS1)

function Kin:SetAssistant_GS2(nDataVer, nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	local aKinData = self:GetKinData(nKinId)
	aKinData.nLastSetAssistantTime = GetTime()
	--旧的副族长变为普通成员
	local nOldAssistant = cKin.GetAssistant()
	if nOldAssistant ~= 0 then
		local cOldAssistant = cKin.GetMember(nOldAssistant)
		if cOldAssistant then
			cOldAssistant.SetFigure(self.FIGURE_REGULAR)
			KKinGs.UpdateKinInfo(cOldAssistant.GetPlayerId())
		end
	end
	--设置并更新新副族长信息
	cKin.SetAssistant(nMemberId)
	cMember.SetFigure(self.FIGURE_ASSISTANT)
	KKinGs.UpdateKinInfo(cMember.GetPlayerId())
	cKin.SetKinDataVer(nDataVer)
	return KKinGs.KinClientExcute(nKinId, {"Kin:SetAssistant_C2", nDataVer, nMemberId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

--免除副族长
function Kin:FireAssistant_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin = self:CheckSelfRight(nKinId, nExcutorId, 1)
	if nRet ~= 1 then
		return 0
	end
	if cKin.GetAssistant() ~= nMemberId then
		return 0
	end
	return GCExcute{"Kin:FireAssistant_GC", nKinId, nExcutorId, nMemberId}
end
RegC2SFun("FireAssistant", Kin.FireAssistant_GS1)

function Kin:FireAssistant_GS2(nKinId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	cMember.SetFigure(self.FIGURE_REGULAR)
	KKinGs.UpdateKinInfo(cMember.GetPlayerId())
	cKin.SetAssistant(0)
	return KKinGs.KinClientExcute(nKinId, {"Kin:FireAssistant_C2", nMemberId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

--更换族长
function Kin:ChangeCaptain_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin, cExcutor = self:CheckSelfRight(nKinId, nExcutorId, 1)
	if nRet ~= 1 then
		return 0
	end
	local nPlayerId = cExcutor.GetPlayerId();
	if KGCPlayer.GetPlayerPrestige(nPlayerId) < 10 then
		me.Msg("Uy danh giang hồ phải lớn hơn 10 mới có thể chuyển Tộc trưởng!")
		return 0
	end
	if nExcutorId == nMemberId then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	if cMember.GetFigure() > self.FIGURE_REGULAR then
		me.Msg("Không phải thành viên chính thức không thể chuyển giao!")
		return 0
	end
	return GCExcute{"Kin:ChangeCaptain_GC", nKinId, nExcutorId, nMemberId}
end
RegC2SFun("ChangeCaptain", Kin.ChangeCaptain_GS1)

function Kin:ChangeCaptain_GS2(nDataVer, nKinId, nExcutorId, nMemberId)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nMemberId)
	if not cMember then
		return 0
	end
	if cKin.GetAssistant() == nMemberId then
		cKin.SetAssistant(0)
	end
	local cExcutor = cKin.GetMember(nExcutorId)
	if cExcutor then
		cExcutor.SetFigure(self.FIGURE_REGULAR)
	end
	
	-- 如果族长是帮主，也记录到帮会事件上
	local nTongId = cKin.GetBelongTong();
	local szNewCaptain = KGCPlayer.GetPlayerName(cMember.GetPlayerId());
	local szOldCaptain = KGCPlayer.GetPlayerName(cExcutor.GetPlayerId());
	if nTongId then
		local pTong = KTong.GetTong(nTongId);
		if pTong then
			if pTong.GetMaster() == nKinId then
				pTong.AddAffairChangeMaster(szNewCaptain, szOldCaptain);
			end
		end
	end
	
	cKin.SetCaptain(nMemberId)
	cMember.SetFigure(self.FIGURE_CAPTAIN)

	KKinGs.UpdateKinInfo(cMember.GetPlayerId())
	KKinGs.UpdateKinInfo(cExcutor.GetPlayerId())
	cKin.AddAffairChangeCaptain(szNewCaptain, szOldCaptain);
	cKin.SetKinDataVer(nDataVer)

	return KKinGs.KinClientExcute(nKinId, {"Kin:ChangeCaptain_C2", nDataVer, nMemberId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

--发起罢免族长
function Kin:FireCaptain_Init_GS1()
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin, cExcutor = self:CheckSelfRight(nKinId, nExcutorId, 3)
	if nRet ~= 1 then
		return 0
	end
	local aKinData = self:GetKinData(nKinId)
	if aKinData.eveFireCaptain0 then
		me.Msg("上次罢免族长的申请尚未结束！")
		return 0
	end
	return GCExcute{"Kin:FireCaptain_Init_GC", nKinId, nExcutorId}
end
RegC2SFun("FireCaptainInit", Kin.FireCaptain_Init_GS1)

function Kin:FireCaptain_Init_GS2(nKinId, nExcutorId)
	local aKinData = self:GetKinData(nKinId)
	aKinData.eveFireCaptain0 = nExcutorId
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nExcutorId)
	if not cMember then
		return 0
	end
	return KKinGs.KinClientExcute(nKinId, {"Kin:FireCaptain_Init_C2", nExcutorId, KGCPlayer.GetPlayerName(cMember.GetPlayerId())})
end

function Kin:FireCaptain_Vote_GS1()
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin, cExcutor = self:HaveFigure(nKinId, nExcutorId, 3)
	if nRet ~= 1 then
		return 0
	end
	local aKinData = self:GetKinData(nKinId)
	if not aKinData.eveFireCaptain0 then
		me.Msg("Đơn xin bãi miễn Tộc trưởng đã thu hồi hoặc đã hết hạn!")
		return 0
	end
	--已经表决过
	if aKinData.eveFireCaptain0 == nExcutorId or aKinData.eveFireCaptain1 == nExcutorId then
		return 0
	end
	return GCExcute{"Kin:FireCaptain_Vote_GC", nKinId, nExcutorId}
end
RegC2SFun("FireCaptainVote", Kin.FireCaptain_Vote_GS1)

function Kin:FireCaptain_Cancel_GS2(nKinId)
	local aKinData = self:GetKinData(nKinId)
	aKinData.eveFireCaptain0 = nil
	aKinData.eveFireCaptain1 = nil
end

function Kin:FireCaptain_Vote_GS2(nKinId, nExcutorId, bLock)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cMember = cKin.GetMember(nExcutorId)
	if not cMember then
		return 0
	end
	local aKinData = self:GetKinData(nKinId)
	if bLock and bLock == 1 then
		aKinData.eveFireCaptain0 = nil
		aKinData.eveFireCaptain1 = nil
		cKin.SetCaptainLockState(1)
	else
		aKinData.eveFireCaptain1 = nExcutorId
	end
	return KKinGs.KinClientExcute(nKinId, {"Kin:FireCaptain_Vote_C2", nExcutorId, KGCPlayer.GetPlayerName(cMember.GetPlayerId()), bLock})
end

--编辑公告
function Kin:SetAnnounce_GS1(szAnnounce)
	local nKinId, nExcutorId = me.GetKinMember()
	if self:CheckSelfRight(nKinId, nExcutorId, 2) ~= 1 then
		return 0
	end
	if #szAnnounce > self.ANNOUNCE_MAX_LEN then
		me.Msg("Số lượng từ lớn hơn chiều dài cho phép!")
		return 0;
	end
	return GCExcute{"Kin:SetAnnounce_GC", nKinId, nExcutorId, szAnnounce}
end
RegC2SFun("SetAnnounce", Kin.SetAnnounce_GS1)

function Kin:SetAnnounce_GS2(nDataVer, nKinId, szAnnounce)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	if cKin.SetAnnounce(szAnnounce) ~= 1 then
		return 0
	end
	cKin.SetKinDataVer(nDataVer)
	return KKinGs.KinClientExcute(nKinId, {"Kin:SetAnnounce_C2", nDataVer, szAnnounce})
end

function Kin:StartCaptainVote_GS2(nKinId, nStartTime)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	cKin.SetVoteStartTime(nStartTime)
	KKin.Msg2Kin(nKinId, "Bỏ phiếu Tộc trưởng bắt đầu, thành viên chính thức bỏ phiếu tại giao diện gia tộc!")
	return 1
end

--停止单个家族的竞选
function Kin:StopCaptainVote_GS1(nKinId)
	return GCExcute{"Kin:StopCaptainVote_GC", nKinId}
end

function Kin:StopCaptainVote_GS2(nKinId, nMember, nMaxBallot)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	cKin.SetVoteCounter(0)
	cKin.SetVoteStartTime(0)
	local itor = cKin.GetMemberItor()
	local cMember = itor.GetCurMember()
	while cMember do
		--清空投票数据
		cMember.SetBallot(0)
		cMember.SetVoteState(0)
		cMember.SetVoteJourNum(0)
		
		cMember = itor.NextMember()
	end
	--解除族长锁定状态
	cKin.SetCaptainLockState(0)
	if nMember == 0 or nMaxBallot == 0 then
		KKin.Msg2Kin(nKinId, "Thời gian bỏ phiếu bầu Tộc trưởng kết thúc, không có biểu quyết, chức Tộc trưởng được giữ nguyên!")
		return 1
	end
	local cMemberNewCaptain = cKin.GetMember(nMember)
	if cMemberNewCaptain then
		KKin.Msg2Kin(nKinId, "Thời gian bỏ phiếu bầu Tộc trưởng kết thúc, <color=white>"..KGCPlayer.GetPlayerName(cMemberNewCaptain.GetPlayerId())..
			"<color>以<color=yellow>"..nMaxBallot.."<color> có số phiếu cao nhất được chon làm Tộc trưởng!")
	end
	return 1
end

--族长竞选投票
function Kin:CaptainVoteBallot_GS1(nMemberId)
	local nKinId, nExcutorId = me.GetKinMember()
	local nRet, cKin, cMemberExcutor = self:HaveFigure(nKinId, nExcutorId, 3)
	if nRet ~= 1 then
		return 0
	end
	local nVoteStartTime = cKin.GetVoteStartTime()
	if nVoteStartTime == 0 then
		me.Msg("Không phải thời gian bỏ phiếu bầu Tộc trưởng!")
		return 0
	end
	if cMemberExcutor.GetFigure() > self.FIGURE_REGULAR then
		me.Msg("Thành viên chính thức mới có thể bầu!")
		return 0
	end
	if cMemberExcutor.GetVoteState() == nVoteStartTime then
		me.Msg("Bạn đã bỏ phiếu bầu rồi!")
		return 0
	end
	local nPlayerId = cMemberExcutor.GetPlayerId();
	local nBallot = KGCPlayer.GetPlayerPrestige(nPlayerId);
	if nBallot <= 0 then
		me.Msg("Uy danh giang hồ phải lớn hơn 0 mới có thể bỏ phiếu bầu!")
		return 0
	end
	local cMemberTarget = cKin.GetMember(nMemberId)
	if not cMemberTarget or cMemberTarget.GetFigure() > self.FIGURE_REGULAR then
		me.Msg("Chỉ có thể bầu thành viên chính thức trong gia tộc!")
		return 0
	end
	me.Msg("Bỏ phiếu bầu thành công!")
	cMemberExcutor.SetVoteState(nVoteStartTime)
	return GCExcute{"Kin:CaptainVoteBallot_GC", nKinId, nExcutorId, nMemberId}
end
RegC2SFun("CaptainVoteBallot", Kin.CaptainVoteBallot_GS1)

function Kin:CaptainVoteBallot_GS2(nKinId, nExcutorId, nMemberId, nBallot, nVoteCounter)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local cExcutor = cKin.GetMember(nExcutorId)
	local cMember = cKin.GetMember(nMemberId)
	if not cExcutor or not cMember then
		return 0
	end
	cExcutor.SetVoteState(cKin.GetVoteStartTime())
	cMember.AddBallot(nBallot)
	cMember.SetVoteJourNum(nVoteCounter)
	return KKinGs.KinClientExcute(nKinId, {"Kin:CaptainVoteBallot_C2", nExcutorId, nMemberId, nBallot})
end

function Kin:JoinTong_GS2(nKinId, szTong, nTongId, nCamp)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local nLastCamp = cKin.GetCamp()
	cKin.SetLastCamp(nLastCamp)
	cKin.SetBelongTong(nTongId)
	cKin.SetCamp(nCamp)
	KKinGs.KinAttachTong(nKinId, nTongId)
	cKin.AddHistoryJoinTong(szTong);
	return KKinGs.KinClientExcute(nKinId, {"Kin:JoinTong_C2", szTong})
end

function Kin:ApplyQuiitTong_GS1()
	local nKinId, nExcutorId = me.GetKinMember();
	if self:CheckSelfRight(nKinId, nExcutorId, 1) ~= 1 then
		return 0;
	end
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	if cKin.GetApplyQuitTime() ~= 0 then
		me.Msg("Đã xin rút khỏi bang, không thể hủy bỏ!")
		return 0;
	end
	local nTongId = cKin.GetBelongTong();
	if nTongId == 0 then 
		return 0;
	end
	if cKin.GetTongFigure() == 1 then
		me.Msg("Bang chủ thuộc gia tộc không thể rời khỏi bang!");
		return 0;
	end
	return GCExcute{"Kin:ApplyQuitTong_GC", nTongId, nKinId, nExcutorId};
end
RegC2SFun("LeaveTong", Kin.ApplyQuiitTong_GS1);

function Kin:ApplyQuitTong_GS2(nKinId, nApplyQuitTime)
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return 0;
	end
	cKin.SetApplyQuitTime(nApplyQuitTime);
	return KKinGs.KinClientExcute(nKinId, {"Kin:ApplyQuitTong_C2", nApplyQuitTime});
end

function Kin:QuitTongVote_GS1(nAccept)
	local nKinId, nMemberId = me.GetKinMember();
	local cKin = KKin.GetKin(nKinId);
	if not cKin then 
		return 0;
	end
	if cKin.GetApplyQuitTime() == 0 then
		me.Msg("Không có đề nghị trục xuất gia tộc hoặc việc biểu quyết đã kết thúc");
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if not cMember then 
		return 0;
	end
	if cMember.GetQuitVoteState() ~= 0 then
		me.Msg("Bạn đã biểu quyết");
		return 0;
	end
	return GCExcute{"Kin:QuitTongVote_GC", nKinId, nMemberId, nAccept};
end
RegC2SFun("QuitTongVote", Kin.QuitTongVote_GS1);

function Kin:QuitTongVote_GS2(nKinId, nMemberId, nAccept)
	local cKin = KKin.GetKin(nKinId);
	if not cKin then 
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if not cMember then
		return 0;
	end
	cMember.SetQuitVoteState((nAccept == 1) and 1 or 2);
	local nPlayerId = cMember.GetPlayerId();
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if not pPlayer then
		return 0;
	end
	return pPlayer.CallClientScript({"Kin:QuitTongVote_C2", nAccept});
end

-- 主动取消离开帮会
function Kin:CloseQuitTong_GS1()
	local nKinId, nMemberId = me.GetKinMember() 
	if self:CheckSelfRight(nKinId, nMemberId, 1) ~= 1 then
		me.Msg("Bạn không có quyền trục xuất gia tộc rời khỏi bang");
		return 0;
	end
	return GCExcute{"Kin:CloseQuitTong_GC", nKinId, 2};
end
RegC2SFun("CloseQuitTong", Kin.CloseQuitTong_GS1);

--Đóng退出帮会的投票状态, bSuccess为  0为时间到失败;1表示时间到达成功退出帮会;2为族长取消;3为帮主家族不可退出
function Kin:CloseQuitTong_GS2(nKinId, nSuccess)
	local cKin = KKin.GetKin(nKinId);
	if not cKin then 
		return 0;
	end
	local cMemberItor = cKin.GetMemberItor();
	local cCurMember = cMemberItor.GetCurMember();
	while cCurMember do
		cCurMember.SetQuitVoteState(0);			-- 清空各个成员的投票状态
		cCurMember = cMemberItor.NextMember()
	end
	cKin.SetApplyQuitTime(0);
	return KKinGs.KinClientExcute(nKinId, {"Kin:CloseQuitTong_C2", nSuccess});
end

function Kin:LeaveTong_GS2(nTongId, nKinId, nMethod, nBuildFund, nTotalStock, tbResult, bSync)
	local cKin = KKin.GetKin(nKinId)
	if not cKin then
		return 0
	end
	local pTong = KTong.GetTong(nTongId);
	if pTong then		-- 帮会不存在的话应该是解散了~不用管
		pTong.SetBuildFund(nBuildFund);
		pTong.SetTotalStock(nTotalStock);
	end
--	local nLastCamp = cKin.GetLastCamp()
--	if nLastCamp ~= 0 and cKin.GetCamp() ~= nLastCamp then
--		cKin.SetCamp(nLastCamp)
--		KKinGs.UpdateKinMemberCamp(nKinId, nLastCamp)
--	end
	--清空帮会相关数据
	cKin.SetBelongTong(0)
	cKin.SetTongFigure(0)
	cKin.SetTongVoteBallot(0)
	cKin.SetTongVoteJourNum(0)
	cKin.SetTongVoteState(0)
	if cKin.GetApplyQuitTime() ~= 0 then
		self:CloseQuitTong_GS2(nKinId, 1);
	end
	KKinGs.KinDetachTong(nKinId)
	--清空成员帮会相关数据
	local cMemberItor = cKin.GetMemberItor()
	local cMember = cMemberItor.GetCurMember()
	while cMember do
		cMember.SetTongFlag(0);
		cMember.SetEnvoyFigure(0);
		cMember.SetWageFigure(0);
		cMember.SetWageValue(0);
		local nMember = cMemberItor.GetCurMemberId();
		if tbResult[nMember] then
			cMember.SetPersonalStock(tbResult[nMember]);		-- 同步成员数据
		else
			cMember.SetPersonalStock(0)
		end
		cMember = cMemberItor.NextMember();
	end
	if bSync == 1 then
		return KKinGs.KinClientExcute(nKinId, {"Kin:LeaveTong_C2", nMethod})
	end
	return 1
end

function Kin:SetSelfQuitVoteState(nVoteState)
	local nKinId, nMemberId = me.GetKinMember()
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if not cMember then
		return 0; 
	end
	cMember.SetQuitVoteState(nVoteState);
	return GCExcute{"Kin:SetSelfQuitVoteState_GC", nKinId, nMemberId, nVoteState};
end

function Kin:AddKinTotalRepute_GS2(nKinId, nMemberId, nPlayerId, nRepute, nDataVer)
	local pKin = KKin.GetKin(nKinId);
	if pKin then
		pKin.AddTotalRepute(nRepute);
		pKin.SetKinDataVer(nDataVer);
	end
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if pPlayer then
		pPlayer.Msg(string.format("Bạn nhận được %d Uy danh", nRepute));
	end
end

function Kin: AddHistory(bIsHistory, nType, ...)
	local nKinId, nMemberId = me.GetKinMember();
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return 0;
	end
	cKin.AddKinHistory(bIsHistory, nType, GetTime(), unpack(arg));
end

-- TODO:测试用临时指令，完整的历史功能后删除
function Kin:GetHistoryPage_GS1(nIsHistory, nPage)
	local nKinId, nMemberId = me.GetKinMember();
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return 0;
	end
	local tbHistory = cKin.GetKinHistory(nIsHistory, nPage);
	me.Msg("page"..nPage);
	for i, tbRecord in pairs(tbHistory) do
		local szMsg = self:ParseHistory(tbRecord);
		me.Msg(szMsg);
	end
end

function Kin:AddGuYinBi_GS2(nKinId, nCurGuYinBi, nAddGuYinBi)
	local pKin = KKin.GetKin(nKinId);
	if not pKin then
		return 0;
	end
	pKin.SetKinGuYinBi(nCurGuYinBi);
	return KKinGs.KinClientExcute(nKinId, {"Kin:AddGuYinBi_C2", nAddGuYinBi});
end

-- 检测、设置家族插旗时间和地点
function Kin:CheckBuildFlagOrderTime(nHour, nMin, nPlayerId, nKinId)
	if not nPlayerId then
		return 0;
	end
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if not cPlayer then
		return 0;
	end
	local cSelfNpc = cPlayer.GetNpc();
	local nMapId, nMapX, nMapY = cSelfNpc.GetWorldPos();
	
-- 判断时间是否正确
	local nTime = nHour * 60 + nMin;	
	local nBeginTime = 19 * 60 + 30;	-- 允许使用的开始时间
	local nEndTime = 23 * 60 + 30;	-- 允许使用的结束时间
	if nTime < nBeginTime or nTime > nEndTime then
		--返回界面并通知玩家设置不正确
		cPlayer.Msg("Thời gian không chính xác");
		cPlayer.CallClientScript({"UiManager:OpenWindow", "UI_KINBUILDFLAG"});
		return 0;
 	end
 	
 -- 判断地点是否正确	
	if GetMapType(nMapId) ~= "village" and GetMapType(nMapId) ~= "city" then
		cPlayer.Msg("Thông báo gia tộc chỉ có thể sử dụng ở thành hoặc tân thủ thôn!");
		cPlayer.CallClientScript({"UiManager:OpenWindow", "UI_KINBUILDFLAG"});
		return 0;
	end	
	
-- 扣除掉令牌
	local tbItem = cPlayer.FindItemInBags(18, 1, 47, 1, 0);
	if not tbItem[1] then
		return 0;
	end

	cPlayer.DelItem(tbItem[1].pItem);
	
	return GCExcute{"Kin:SaveBuildFlagSetting_GC", nPlayerId, nKinId, nTime, nMapId, nMapX, nMapY};
end
RegC2SFun("CheckBuildFlagOrderTime", Kin.CheckBuildFlagOrderTime); 
-- 注册客户端到服务器的回调

-- 所有服务器保存插旗的时间，用于客户端显示
function Kin:SaveBuildFlagSetting_GS2(nPlayerId, nKinId, nTime, nMapId, nMapX, nMapY)
		local cKin = KKin.GetKin(nKinId);
		if cKin then			
			-- 记录插旗时间
			cKin.SetKinBuildFlagOrderTime(nTime);
			cKin.SetKinBuildFlagMapId(nMapId);
			cKin.SetKinBuildFlagMapX(nMapX);
			cKin.SetKinBuildFlagMapY(nMapY);
		
			-- 插旗
			local nNowDay = tonumber(os.date("%m%d", GetTime()));
			local nPreDay = cKin.GetTogetherTime(); 
			local cPlayer = KPlayer.GetPlayerObjById(nPlayerId);
			if (nNowDay ~= nPreDay) then
				Kin:KinBuildFlag_GS2(nKinId);
				if cPlayer then
					cPlayer.Msg("Xác định thời gian cắm cờ gia tộc thành công");
				end
			else
				if cPlayer then
					cPlayer.Msg("Xác định thời gian cắm cờ gia tộc thành công, hôm nay đã quá thời gian, ngày mai hoạt động cắm cờ tự động bắt đầu");
				end
			end
		end
		
end

-- 有指定插旗的地图的服务器开始插旗，在所有服务器都公告一次
function Kin:KinBuildFlag_GS2(nKinId)
	local cKin = KKin.GetKin(nKinId);
	if not cKin then
		return 0;
	end
	
	KKin.Msg2Kin(nKinId,"Hoạt động cắm cờ gia tộc bắt đầu, các thành viên gia tộc chú ý tập trung.");
	
	-- 记录今天已经插旗
	local nNowDay = tonumber(os.date("%m%d", GetTime()));
	cKin.SetTogetherTime(nNowDay);
	local nMapId = cKin.GetKinBuildFlagMapId();
	if not nMapId then
		return 0;
	end
	
	if IsMapLoaded(nMapId) then
		local nMapX = cKin.GetKinBuildFlagMapX();
		local nMapY = cKin.GetKinBuildFlagMapY();
		local tbNpc	= Npc:GetClass("jiazulingpainpc");	
		tbNpc:StartToWork(nKinId, nMapId, nMapX, nMapY);
	end
end

-- 修改家族令牌的KinExpstate,使玩家能再领家族令牌
function Kin:ChangeKinExpState_GS2(nPlayerId, nKinId)	
	local cKin = KKin.GetKin(nKinId);
	if cKin then
		local nNowDay = tonumber(os.date("%m%d", GetTime()));
		cKin.SetGainExpState(nNowDay);
		cKin.SetKinBuildFlagOrderTime(0);
	end	
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if  cPlayer then
		cPlayer.Msg("Hoạt động cắm cờ gia tộc bạn đã bị xóa, bạn có thể thiết lập lại thời gian và địa điểm cắm cờ.");
		local cLingPai = cPlayer.AddItemEx(Item.SCRIPTITEM, 1, 47, 1, {bTimeOut = 1});	-- 获得家族令牌
		if cLingPai then
			cPlayer.SetItemTimeout(cLingPai,os.date("%Y/%m/%d/00/00/00", GetTime() + 3600 * 24)); -- 领取当天有效
			cLingPai.Sync();
		end
		cPlayer.Msg("Nhận lệnh bài gia tộc");
		Dbg:WriteLog("Kin","PlayerID:"..cPlayer.nId,"Account:"..cPlayer.szAccount.."Get a JiaZuLingPai");
	end
	return 1;
end

-- 领取家族令牌
function Kin:GetKinLingPai_GS2(nKinId, nPlayerId)
	if not nKinId or not nPlayerId then
		return 0;
	end
	
	local nTime = GetTime();
	local nNowDay = tonumber(os.date("%m%d", nTime));
		
	local cKin = KKin.GetKin(nKinId);	
	cKin.SetGainExpState(nNowDay);	
	
	local cPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if not cPlayer then
		return 0
	end
	local cLingPai = cPlayer.AddItemEx(Item.SCRIPTITEM, 1, 47, 1, {bTimeOut = 1});	-- 获得家族令牌
	if cLingPai then
		cPlayer.SetItemTimeout(cLingPai,os.date("%Y/%m/%d/00/00/00", GetTime() + 3600 * 24)); -- 领取当天有效
		cLingPai.Sync();
	end
	cPlayer.Msg("Nhận lệnh bài gia tộc");
	return 1;
end

-- 帮会频道提示插旗
function Kin:NoticeKinBuildFlag_GS2(nKinId, nLeftTime)
	if not nKinId then
		return 0;
	end
	KKin.Msg2Kin(nKinId, nLeftTime.." phút sau cắm cờ gia tộc");
end
-- 为家族设置周目标(家族ID， 上周贡献度， 上周活动目标， 上周目标等级， 本周随机到的目标)
function Kin:PerKinWeeklyTask_GS2(nKinId, nOffer, nTaskTemp, nTaskLevel, nWeeklyTask)
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	--记录上周贡献度，并把本周贡献度清零
	cKin.SetWeeklyKinOffer(0);
	cKin.SetLastWeekKinOffer(nOffer);
	cKin.SetIsCaptainGetAward(0);
	-- 记录上周活动目标
	cKin.SetLastWeeklyTask(nTaskTemp);
	-- 记录上周目标等级
	cKin.SetLastTaskLevel(nTaskLevel);
	-- 记录本周随机到的目标
	cKin.SetWeeklyTask(nWeeklyTask);
	-- 如果有新的周活动目标等级修改，把新的等级生效
	if (cKin.GetNewTaskLevel() ~= 0) then
		local nNewTaskLevel = cKin.GetNewTaskLevel();
		cKin.SetTaskLevel(nNewTaskLevel);
		cKin.SetNewTaskLevel(0);
	end
	if (cKin.GetTaskLevel() == 0) then
		cKin.SetTaskLevel(Kin.TASK_LEVEL_LOW);
	end
	Kin:PerKinMemberWeeklyTask(cKin);
end

function Kin:SetNewTaskLevel_GS2(nKinId , nTaskLevel)
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	cKin.SetNewTaskLevel(nTaskLevel);
end

function Kin:SetLWKinOffer0_GS2(nKinId, nMemberId, nFigure)
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	if (2 == nFigure and cKin.GetIsCaptainGetAward() == 0) then
		cKin.SetIsCaptainGetAward(1);
	end
	local cMember = cKin.GetMember(nMemberId);
	if (not cMember) then
		return 0;
	end
	cMember.SetLastWeekKinOffer(0);
end

function Kin:ChaXun(nKinId, nMemberId, nChoice)
	local cKin = KKin.GetKin(nKinId);
	if (not cKin) then
		return 0;
	end
	local cMember = cKin.GetMember(nMemberId);
	if (not cMember) then
		return 0;
	end
	if (nChoice < 14 or nChoice > 17) then
		return 0;
	end
	local nResult = 0;
	if (14 == nChoice) then
		nResult = cMember.GetKinOffer();
	elseif (15 == nChoice) then
		nResult = cMember.GetWeeklyTongOffer();
	elseif (16 == nChoice) then
		nResult = cMember.GetWeeklyKinOffer();
	elseif (17 == nChoice) then
		nResult = cMember.GetLastWeekKinOffer();
	end
	return nResult;
end

-- 发布\取消招募
function Kin:RecruitmentPublish_GS1(nPublish, nLevel, nHonour)
	local nKinId, nMemberId = me.GetKinMember();
	local pKin = KKin.GetKin(nKinId);
	if not pKin then
		me.Msg("Bạn không có gia tộc, không thể chiêu mộ.");
		return 0;
	end
	if Kin:CheckSelfRight(nKinId, nMemberId, 2) ~= 1 then
		me.Msg("你没有权限发布/停止招募，要族长或者副族长才能发布/停止招募。");
		return 0;
	end
	if nPublish == 1 and nLevel > Kin.KIN_RECRUITMENT_MAX_LEVEL then
		me.Msg("招募的等级超过范围");
		return 0;
	end
	if nPublish == 1 and nLevel < Kin.KIN_RECRUITMENT_MIN_LEVEL then
		me.Msg("招募的等级最低要求必需在"..Kin.KIN_RECRUITMENT_MIN_LEVEL.."级，小于最低等级则默认为最低等级");
		nLevel = 10;
	end

	local nRegular, nSigned, nRetire = pKin.GetMemberCount();
	local nMemberCount = nRegular + nSigned;
	if nMemberCount >= self.MEMBER_LIMITED then
		me.Msg("你的家族已经满员，不能再招募人员了。");
		return 0;
	end

	return GCExcute{"Kin:RecruitmentPublish_GC", nKinId, nMemberId, nPublish, nLevel, nHonour};
end
RegC2SFun("RecruitmentPublish", Kin.RecruitmentPublish_GS1)

function Kin:RecruitmentPublish_GS2(nKinId, nPublish, nLevel, nHonour)
	local pKin = KKin.GetKin(nKinId);
	if pKin and nPublish then
		pKin.SetRecruitmentPublish(nPublish);
		if nPublish == 1 then
			if nLevel then
				pKin.SetRecruitmentLevel(nLevel);
			end
			if nHonour then
	 			pKin.SetRecruitmentHonour(nHonour);
	 		end
			KKin.Msg2Kin(nKinId, "你的家族招募开始了！");
		else
			KKin.Msg2Kin(nKinId, "你的家族结束了招募！");
		end
		return KKinGs.KinClientExcute(nKinId, {"Kin:ProcessRecruitmentPublish", nPublish, nLevel, nHonour});
	end
end

-- 同意招募
function Kin:RecruitmentAgree_GS1(szName)
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	local pSelfKin = KKin.GetKin(nSelfKinId);
	if not pSelfKin then
		me.Msg("你没有家族，不能进行招募。");
		return 0;
	end
	
	if Kin:CheckSelfRight(nSelfKinId, nSelfMemberId, 2) ~= 1 then
		me.Msg("你没有权限招募人员，要族长或者副族长才能进行招募。");
		return 0;
	end
	local nRegular, nSigned, nRetire = pSelfKin.GetMemberCount();
	local nMemberCount = nRegular + nSigned;
	if nMemberCount >= self.MEMBER_LIMITED then
		me.Msg("你的家族已经满员，不能再招募人员了。");
		return 0;
	end
	local nPlayerId = KGCPlayer.GetPlayerIdByName(szName);
	if not nPlayerId or nPlayerId <= 0 then
		me.Msg("你招募的人员不存在。");
		return 0;
	end
	local nKinId  = KGCPlayer.GetKinId(nPlayerId)
	local pKin = KKin.GetKin(nKinId);
	if pKin then
		me.Msg("该玩家已经加入了其他家族了。");
		return 0;
	end
	if GetTime() - KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_LEAVE_KIN_TIME) < 24 * 3600 then
		me.Msg("对方离开家族未满24小时！")
		return 0
	end

	return GCExcute{"Kin:RecruitmentAgree_GC", nSelfKinId, nSelfMemberId, szName, nKinId};
end
RegC2SFun("RecruitmentAgree", Kin.RecruitmentAgree_GS1)

function Kin:RecruitmentAgree_GS2(nKinId, nSelfMemberId, szName, nPlayerId)
	self:MemberAdd_GS1(nKinId, nSelfMemberId, nPlayerId, 0);
	KKin.DelKinInductee(nKinId, szName);
--	return KKinGs.KinClientExcute(nKinId, {"Kin:ProcessRecruitment"});
end

-- 拒绝招募
function Kin:RecruitmentReject_GS1(szName)
	local nKinId, nMemberId = me.GetKinMember();
	local pKin = KKin.GetKin(nKinId);
	if not pKin then
		me.Msg("你没有家族，不能进行招募");
		return 0;
	end
	if Kin:CheckSelfRight(nKinId, nMemberId, 2) ~= 1 then
		me.Msg("你没有权限拒绝申请人，要族长或者副族长才能拒绝申请人");
		return 0;
	end
	
	return GCExcute{"Kin:RecruitmentReject_GC", szName, nKinId, nMemberId};
end
RegC2SFun("RecruitmentReject", Kin.RecruitmentReject_GS1)

function Kin:RecruitmentReject_GS2(szName, nKinId, nMemberId)
	local pKin = KKin.GetKin(nKinId);
	if pKin then
		KKin.DelKinInductee(nKinId, szName);
		local pMember = pKin.GetMember(nMemberId);
		if pMember then
			local pPlayer = KPlayer.GetPlayerObjById(pMember.GetPlayerId());
			if pPlayer then
				pPlayer.Msg("拒绝了"..szName.."的申请");
			end
			
			local nTagetPlayerId = KGCPlayer.GetPlayerIdByName(szName);
			local pTagetPlayer = KPlayer.GetPlayerObjById(nTagetPlayerId);
			if pTagetPlayer then
				pTagetPlayer.Msg(pKin.GetName().."拒绝了你的加入家族的申请");
			end
		end	
	end
--	return KKinGs.KinClientExcute(nKinId, {"Kin:ProcessRecruitment"});
end

-- 加入招募
function Kin:JoinRecruitment_GS1(nKinId)
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	local pSelfKin = KKin.GetKin(nSelfKinId);
	if pSelfKin then
		me.Msg("你已经有家族了，如果你想加入其他家族必须先退出现在的家族。");
		return 0;
	end
	local pKin = KKin.GetKin(nKinId);
	if not pKin then
		me.Msg("该家族不存在了。");
		return 0;
	end
	if pKin.GetRecruitmentPublish() == 0 then
		me.Msg("对不起，该家族已经结束了招募，请重新申请。");
		return 0;
	end
	local pKin = KKin.GetKin(nKinId);
	if KKin.GetInducteeCount(nKinId) >= self.INDUCTEE_LIMITED then
		me.Msg("该家族的招募榜已满员。");
		return 0;
	end
	local nNeedLevel = pKin.GetRecruitmentLevel();
	local nNeedHonour = pKin.GetRecruitmentHonour();

	if me.nLevel < nNeedLevel then
		me.Msg("你还没到达该家族的招募等级要求。");
		return 0;
	end
	
	local nHonour = PlayerHonor:GetHonorLevel(me, PlayerHonor.HONOR_CLASS_MONEY);
	if nHonour < nNeedHonour then
		me.Msg("你还没到达该家族的招募荣誉等级要求。");
		return 0;
	end
	
	local nJoinTimes = me.GetTask(self.KIN_RECRUITMENT_TASK_GROUP_ID, self.TSK_JOIN_RECRUITMENT_TIMES);
	local nJoinTime = me.GetTask(self.KIN_RECRUITMENT_TASK_GROUP_ID, self.TSK_JOIN_RECRUITMENT_DAY);
	local nJoinDay =  tonumber(os.date("%Y%m%d", nJoinTime));
	local nNowTime = GetTime();
	local nNowDay = tonumber(os.date("%Y%m%d", nNowTime));
	if nJoinTimes >= self.KIN_JOIN_RECRUITMENT_MAXTIMES and nJoinDay == nNowDay then
		me.Msg("一天只有3次加入家族的招募榜的机会。");
		return 0;
	elseif nJoinDay ~= nNowDay then
		nJoinTimes = 0;
	end 

	if KKin.GetKinInducteeJoinTime(nKinId, me.szName) then
		me.Msg("你已经在该家族的招募里了。");
		return 0;
	end 
	me.Msg("你第"..(nJoinTimes + 1).."次加入了家族招募榜，一天只有3次加入家族的招募榜的机会。")
	me.SetTask(self.KIN_RECRUITMENT_TASK_GROUP_ID, self.TSK_JOIN_RECRUITMENT_TIMES, nJoinTimes + 1);
	me.SetTask(self.KIN_RECRUITMENT_TASK_GROUP_ID, self.TSK_JOIN_RECRUITMENT_DAY, nNowTime);

	if KKin.GetInducteeCount(nKinId) >= self.INDUCTEE_LIMITED - 1 then
		KKin.Msg2Kin(nKinId, "你的家族招募榜已满员。");
	end
	return GCExcute{"Kin:JoinRecruitment_GC", nKinId, me.nId};
end
RegC2SFun("JoinRecruitment", Kin.JoinRecruitment_GS1)

function Kin:JoinRecruitment_GS2(nKinId, nPlayerId, nTime, szName)
	local pKin = KKin.GetKin(nKinId);
	if pKin then
		KKin.AddKinInductee(nKinId, nTime, szName);	
		local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
		if pPlayer then
			pPlayer.Msg("你加入了"..pKin.GetName().."家族的招募榜了。");
		end
	end
end

-- 清理已经有家族的应召者
function Kin:KinRecruitmenClean_GS1(nKinId)
	return GCExcute{"Kin:KinInducteeClean_GC", nKinId};
end
RegC2SFun("KinRecruitmenClean", Kin.KinRecruitmenClean_GS1)

function Kin:KinRecruitmenClean_GS2(nKinId, tbDelKinInducteeList)
--	print("KinRecruitmenClean_GS2")
--	Lib:ShowTB(tbDelKinInducteeList)
	for i, szName in ipairs(tbDelKinInducteeList) do		
		KKin.DelKinInductee(nKinId, szName);
	end
--	return KKinGs.KinClientExcute(nKinId, {"Kin:ProcessRecruitment"});
end

-- 申请招募信息：招募状态、要求等级和荣誉
function Kin:ApplyRecruitmentPublishInfo()
		local nKinId, nMemberId = me.GetKinMember();
		local pKin = KKin.GetKin(nKinId);
		if not pKin then
			return 0;
		end
		local nPublish = pKin.GetRecruitmentPublish();
		local nNeedLevel = pKin.GetRecruitmentLevel();
		local nNeedHonour = pKin.GetRecruitmentHonour();
	return KKinGs.KinClientExcute(nKinId, {"Kin:ProcessRecruitmentPublish", nPublish, nNeedLevel, nNeedHonour});
end
RegC2SFun("ApplyRecruitmentPublishInfo", Kin.ApplyRecruitmentPublishInfo)

-- 每周清理家族招募榜
function Kin:CleanKinRecruitmenPublish_GS2(nKinId)
	local pCurKin = KKin.GetKin(nKinId);
	if not pCurKin then
		return;
	end
	pCurKin.SetRecruitmentPublish(0);
	KKin.Msg2Kin(nKinId, "您的家族招募到达了发布期限(七天以后)，家族招募结束了，请重新发布招募。");
end
