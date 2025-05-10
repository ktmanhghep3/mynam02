-------------------------------------------------------------------
--File: 	factionbattle_npc.lua
--Author: 	zhengyuhua
--Date: 	2008-1-8 17:38
--Describe:	门派战npc对话逻辑
-------------------------------------------------------------------

-- 门派竞技功能选项对话

function FactionBattle:ChoiceFunc(nFaction)
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if me.GetTask(3118,49) < nDate then
		me.SetTask(3118,49, nDate);
		me.SetTask(3118,50, 0);
	end 
	Dialog:Say("Thi đấu môn phái vào tối thứ 3 hàng tuần: 19h30 sẽ bắt đầu báo danh - 20:00 bắt đầu Thi Đấu\n<color=red>Điểm của mỗi lần thi đấu sẽ được thay đổi ở những lần thi tiếp theo<color>",
		{
			{"Ta muốn tham gia thi đấu môn phái", self.EnterMap, self, nFaction},
			{"<color=yellow>Nhận thưởng", self.ExchangeExp, self, me.nId},
			--{"<color=yellow>Nhận thưởng báo danh<color>", self.NhanthuongBd, self},
		});
end

function FactionBattle:NhanthuongBd()
	local nNeedBag = 3;
	if me.CountFreeBagCell() < nNeedBag then
    local szAnnouce = "Sắp xếp hành trang còn trống "..nNeedBag.." ô";
    Dialog:Say(szAnnouce);
    return 0;
	end

	local nWeek = tonumber(GetLocalDate("%w"));
	if (nWeek ~= 2) and (nWeek ~= 5) then
    Dialog:Say("Hôm nay không diễn ra hoạt động");
    return 0;
	end

	local nCurTime = tonumber(GetLocalDate("%H%M"));
	if nCurTime < 1930 then
		Dialog:Say("Chưa đến thời gian diễn ra hoạt động, quay lại sau 19h30");
		return 0;
	end

	local nBaoDanh = me.GetTask(3118,50)
	if nBaoDanh >= 1 then
    Dialog:Say("Bạn đã nhận thưởng báo danh TDMP rồi");
    return 0;
	end
	me.SetTask(3118,50, nBaoDanh + 1);
    me.AddItem(18,1,114,6);
end

-- 报名参加门派战
function FactionBattle:SignUp(nFaction)
	local tbData = self:GetFactionData(nFaction);
	if not tbData then
		Dialog:Say("Hiện tại không có trận thi đấu môn phái nào！");
		return 0;
	elseif tbData.nState > self.SIGN_UP then
		Dialog:Say("Thi đấu môn phái đã bắt đầu lúc 20:00，hiện tại không thể tiếp nhận đăng ký，mời bạn tham gia những hoạt động khác tại đây");
		return 0;
	end
	if me.nFaction ~= nFaction then
		Dialog:Say("Bạn không phải là đệ tử của môn phái này，không thể tham gia thi đấu!");
		return 0;
	end
	if me.nLevel < self.MIN_LEVEL then
		Dialog:Say("Cấp độ của bạn không đủ"..self.MIN_LEVEL.."Không thể tham gia thi đấu môn phái，nhưng có thể tham gia các hoạt động nhóm khác tại đây");
		return 0;
	end
--	if (Wlls:CheckFactionLimit() == 1 and me.nLevel >= self.MAX_LEVEL) then
--		Dialog:Say("Cấp độ của bạn đã vượt quá，không thể tham gia thi đấu môn phái!");
--		return 0;
--	end
	if tbData:GetAttendPlayuerCount() >= self.MAX_ATTEND_PLAYER then
		Dialog:Say("Số người đăng ký đã đến mức giới hạn 400 người，không thể tiếp nhận đăng ký，mời bạn tham gia các hoạt động khác tại đây");
	else
		local nRet = tbData:AddAttendPlayer(me.nId);
		if nRet == 0 then
			Dialog:Say("Bạn đã đăng ký rồi！");
		else
			Dialog:Say("Đăng ký thành công，hãy đợi để tham gia tại đây，nếu thoát sẽ mất tư cách tham gia thi đấu！<color=yellow>trận đấu sẽ chính thức bắt đầu lúc 19:30");
		end
	end
end

FactionBattle.HONOR_CLASS_MONEY		= 8;	-- 荣誉大类，财富荣誉
FactionBattle.tbHonorLevelInfo	= {
	["money"]	= {
		nHonorId	= FactionBattle.HONOR_CLASS_MONEY,
	},
};

-- 进入门派竞技场地图
function FactionBattle:EnterMap(nFaction)
	local nFlag = self:GetBattleFlag(nFaction);

local GioiHanCaoThu = 8;
local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
	if nLevel_DanhVongST < GioiHanCaoThu then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Cao Thủ Cấp Danh vọng Sát Thần Trên 7, không thể tham gia!<color>"));
	Dialog:Say("<color=yellow>Hoạt động Cao Thủ nguy hiểm giới hạn yêu cầu Cấp Danh vọng Sát Thần Trên 7,\n<color=red>Ngươi đang cấp: "..(nLevel_DanhVongST-1).."<color>, Không thể tham gia!<color>", {"Ta biết rồi"});
	return 0;
	end
	
	 if me.GetTask(4000, 1) < 1 then
			me.NewWorld(2000, 1626, 3187);
			Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
			me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return 0;
	end


	if nFlag ~= 1 then
		Dialog:Say("Trận thi đấu môn phái vào tối thứ 3 lúc 19:30 hàng tuần sẽ bắt đầu nhận đăng ký，20：00 sẽ bắt đầu\nHiện tại vẫn chưa mở");
		return 0;
	end
	
	 if me.nFaction ~= nFaction then
		Dialog:Say("Bạn không phải là đệ tử môn phái này，không thể tham gia thi đấu!");
		return 0;
	end
	
--	if (Wlls:CheckFactionLimit() == 1 and me.nLevel >= self.MAX_LEVEL) then
--		Dialog:Say("Cấp độ của bạn đã vượt quá ，không thể tham gia thi đấu!");
--		return 0;
--	end
	if me.nLevel < self.MIN_LEVEL then
		Dialog:Say("Cấp độ của bạn không đủ"..self.MIN_LEVEL.."không thể tham gia thi đấu。");
		return 0;
	end


	local nPlayerId	= me.nId;
	for szType, tbTypeInfo in pairs(self.tbHonorLevelInfo) do
	local nHonorId		= tbTypeInfo.nHonorId;
	local nHonorValue	= PlayerHonor:GetPlayerHonor(nPlayerId, nHonorId, 0);
	if nHonorValue < 600 then
	Dialog:SendBlackBoardMsg(me, "Bạn không đạt đủ 600 điểm Tài Phú");		-- 黑条
	return 0;
	end
	end

	if LimitTdmp.Tdmp_CheckNumAccount == 1 then
		if LimitTdmp:CheckValidHardware(me) == 0 then
		LimitTdmp:WriteZeroHardWare(me);
		end
		
		local nCheck,nNum,Msg = LimitTdmp:CheckHardWare(me);
		if nCheck ~= 1 then
		Dialog:Say(Msg);
		return;
		end
	end
	self:TrapIn(me);
	-- 记录参加次数
	local nNum = me.GetTask(StatLog.StatTaskGroupId , 2) + 1;
	me.SetTask(StatLog.StatTaskGroupId , 2, nNum);

end

-- 离开门派竞技场对话
function FactionBattle:LeaveMap(nFaction, bConfirm)
	if bConfirm == 1 then
		Npc.tbMenPaiNpc:Transfer(nFaction);
		return 0;
	end
	Dialog:Say("Bạn có chắc muốn thoát không？nếu không có mặt lúc trận đấu bắt đầu，bạn sẽ mất quyền tham gia",
		{
			{"Ta đồng ý", FactionBattle.LeaveMap, FactionBattle, nFaction, 1},
			{"Để ta suy nghĩ lại."}
		}
	);
end

function FactionBattle:CancelSignUp(nFaction, bConfirm)
	if bConfirm == 1 then
		local tbData = self:GetFactionData(nFaction);
		if tbData ~= nil then
			if tbData.nState ~= self.SIGN_UP then
				Dialog:Say("Trận thi đấu đã bắt đầu,không thể hủy tư cách tham gia。");
				return 0;
			end
			tbData:DelAttendPlayer(me.nId)
			Dialog:Say("Bạn đã hủy tư cách tham gia thi đấu。");
		end
		return 0;
	end
	Dialog:Say("Bạn có chắc chắn muốn hủy bỏ đăng ký?",
		{
			{"Đồng ý", FactionBattle.CancelSignUp, FactionBattle, nFaction, 1},
			{"Để ta suy nghĩ lại"}
		}
	);	
end

function FactionBattle:ChampionFlagNpc(pPlayer, pNpc)
	self:ExcuteAwardChampion(pPlayer, pNpc);
end

