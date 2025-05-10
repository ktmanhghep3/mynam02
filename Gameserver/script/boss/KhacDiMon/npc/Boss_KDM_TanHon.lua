local tbBoss = Npc:GetClass("Boss_KDM_TanHon");-- class cua boss

tbBoss.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbBoss.TaskID_TanHonCoLong = 2; 				--2: Tàn Hồn

function tbBoss:OnDeath(pNpcKiller, nFlag)
--Phần thưởng Cá nhân diệt Boss--
--me.AddItem(18,1,3029,1);
me.AddStackItem(18,1,3941,2,nil,10);--Mảnh Cường Nhân (Chưa Giám Định)
me.AddStackItem(18,1,3029,1,{bForceBind=1,},1);
local SoLan_GietTanHon = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_TanHonCoLong);
me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_TanHonCoLong, SoLan_GietTanHon + 1);

	local pPlayer = pNpcKiller.GetPlayer();
	if (pPlayer) then
		local nTeamId	= pPlayer.nTeamId;
		if nTeamId == 0 then
			if nFlag ~= 1 then
			end
		else
			local tbPlayerId, nMemberCount	= KTeam.GetTeamMemberList(nTeamId);
			for i, nPlayerId in pairs(tbPlayerId) do
				local pTeamPlayer = KPlayer.GetPlayerObjById(nPlayerId);
				if (pTeamPlayer and pTeamPlayer.nMapId == him.nMapId) then
					if nFlag ~= 1 then
					--Phần thưởng cả Team--
					pTeamPlayer.AddStackItem(18,1,3029,1,{bForceBind=1,},1);--Rương Tàn Hồn Cổ Long
					pTeamPlayer.AddStackItem(18,1,3941,2,nil,5);--Mảnh Cường Nhân (Chưa Giám Định)
					--pTeamPlayer.AddStackItem(18,1,3000,1,{bForceBind=1,},1);--Rương Tinh Thạch
					--pTeamPlayer.SetItemTimeout(me.AddItem(18,1,3001,1,1), os.date("%Y/%m/%d/%H/%M/00", GetTime() + 720 * 24 * 5));	--Rượu
					--[[local pItem = pTeamPlayer.AddItem(18,1,3029,1);
					pItem.Bind(1);
					pTeamPlayer.SetItemTimeout(pItem, 1*24*60, 0); --1 ngày]]

					end
				end
			end
		end
		local nMapId,nX,nY = me.GetWorldPos();
		local szMsg = " Hảo hữu của bạn ["..pPlayer.szName.."] đã đánh bại {"..him.szName.."} Tại "..GetMapNameFormId(nMapId)..".";
		pPlayer.SendMsgToFriend(szMsg);
		Player:SendMsgToKinOrTong(pPlayer, " đã đánh bại {"..him.szName.."} Tại "..GetMapNameFormId(nMapId)..".", 0);
	end

	local nMapId,nX,nY = me.GetWorldPos();
	--local szMsg = string.format("<color=yellow><color=Turquoise>"..me.szName.."<color> đã đánh bại <color=pink>"..him.szName.."<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nToàn Đội Nhận được:\n<color=cyan>- Rương Tàn Hồn Cổ Long<color><color>");
	KDialog.MsgToGlobal("<color=yellow> <color=Turquoise>"..me.szName.."<color> đã đánh bại <color=pink>"..him.szName.."<color> Tại <color=green>"..GetMapNameFormId(nMapId).."<color>.\nToàn Đội điều nhận được Phần thưởng:\n<color=cyan>- Rương Tàn Hồn Cổ Long<color>\n\n\n<color>");	
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);

end
