-- ??

if not MODULE_GAMESERVER then
	return;
end


-- ????
function Battle:RoundStart_GS(nBattleId, nBattleLevel, tbMapId, szMapName, nRuleType, nMapNpcNumType, nSeqNum)
	if (not tbMapId) then
		assert(tbMapId);
		return;
	end
	local szMsg = string.format("Tống kim đại chiến hết sức căng thẳng, hiện nay đang bước vào giai đoạn báo danh chính, người chơi muốn tham gia chiến trường mau chóng đến mộ binh quan chiến trường tại 7 thành thị lớn, hoặc sử dụng Tống kim chiến thư đến trước điểm báo danh chiến trường để đăng ký, thời gian báo danh còn lại :%d phút. Ðiều kiện tham chiến: đẳng cấp không nhỏ hơn %d cấp", self.TIMER_SIGNUP / (Env.GAME_FPS * 60), self.LEVEL_LIMIT[1]);
	KDialog.NewsMsg(0, Env.NEWSMSG_NORMAL, szMsg);
	local szBattleTime = GetLocalDate("%y%m%d%H");
	
	local nOpenCount = #tbMapId;
	
	if (nSeqNum == 1 and nOpenCount > 1) then -- ???????????,???????
		nOpenCount = 1;
	else
		nOpenCount = self:GetOpenCount(nBattleLevel, #tbMapId);
	end
	
	for i=1, nOpenCount do
		local nMapId = tbMapId[i];
		Battle:OpenBattle(nBattleId, nBattleLevel, nMapId, szMapName, nRuleType, nMapNpcNumType, nSeqNum, i, szBattleTime);
	end
	--Battle:RoundEnd_GS(nBattleId, nBattleLevel, MathRandom(0, 1));
end


--???????????????:
--?????99??,??????????????????
--?????150??,??????????????
--?????150??150???,??????????????

function Battle:GetOpenCount(nBattleLevel, nCount)
	
	if GLOBAL_AGENT then
		return 1;
	end
	
	local nOpenCount = nCount;	
	if (nBattleLevel == 1) then
		if (TimeFrame:GetStateGS("OpenLevel150") == 1) then
			nOpenCount = 1;
		elseif (TimeFrame:GetStateGS("OpenLevel99") == 1) then
			nOpenCount = 2;
		end
	elseif (nBattleLevel == 2) then
		if (TimeFrame:GetStateGS("OpenOneFengXiangBattle") == 1) then
			nOpenCount = 1;
		end
		if (SpecialEvent.HundredKin:CheckEventTime("songjin") == 1) then
			nOpenCount = 2;
		end
	end	
	return nOpenCount;
end

-- ????
-- nSongResult ??:Battle.RESULT_XXX
function Battle:RoundEnd_GS(nBattleId, nBattleLevel, nSongResult, tbPlayerList)
	GCExcute({"Battle:RoundEnd_GC", nBattleId, nBattleLevel, nSongResult, tbPlayerList});
end

function Battle:ReceiveGongRank_GS(tbPlayerGongRank)
	self.tbGongRank = tbPlayerGongRank;
end

function Battle:GetPlayerRankInfo(pPlayer)
	if (not self.tbGongRank) then
		self.tbGongRank = {};
	end
	return self.tbGongRank[pPlayer.szName];
end

