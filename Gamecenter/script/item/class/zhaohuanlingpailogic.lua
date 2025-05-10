-------------------------------------------------------------------
--File: 	
--Author: 	sunduoliang
--Date: 		2008-4-14
--Describe:	�����ٻ��߼�
-------------------------------------------------------------------


if (not Item.tbZhaoHuanLingPai) then
	Item.tbZhaoHuanLingPai = {};
end

local tb = Item.tbZhaoHuanLingPai;
tb.nTime = 10;
tb.TEMPLET_ITEM_ID = {18,1,87,1}; --�ٻ�ģ������Ʒ.ȡ�ٻ���ͬһ���͵�����һ����Ϊģ��
-- GCѯ�ʸ���Server
--nKind = 1Ϊ�����ٻ���2Ϊ����ٻ���0Ϊ�����ٻ�
function tb:SelectPlayer(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	--�����м����Ա��������
	--print("SelectPlayer",nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	GlobalExcute({"Item.tbZhaoHuanLingPai:SeachPlayer_GS1", nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState});
end

--GS ÿ̨������ɨ������Ա
function tb:SeachPlayer_GS1(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	--print("SeachPlayer_GS1",nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	if tonumber(nKind) == 1 then
		self:KinCallMember(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState);
	elseif tonumber(nKind) == 2 then
		self:TongCallMember(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState);
	end
end
--GS
function tb:KinCallMember(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	--print("KinCallMember",nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	local cKin = KKin.GetKin(nKinTongId);
	if not cKin then
		return 0;
	end
	
	
	local nCanSendIn = Item:IsCallInAtMap(nMapId, unpack(self.TEMPLET_ITEM_ID));
	if (nCanSendIn ~= 1) then
		return 0;
	end	
	
	local itor = cKin.GetMemberItor();
	local cMember = itor.GetCurMember();
	while cMember do
		local nMemberPlayerId = cMember.GetPlayerId()
		local nOnline = KGCPlayer.OptGetTask(nMemberPlayerId, KGCPlayer.TSK_ONLINESERVER);
		if nOnline > 0 then
			if nMemberPlayerId ~= nPlayerId then
				local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
				if (pPlayer) then
					local nCanSendOut = Item:IsCallOutAtMap(pPlayer.nMapId, unpack(self.TEMPLET_ITEM_ID));
					if (nCanSendOut == 1) then
						self:SeachPlayer(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState);
					end
				end
			end
		end
		cMember = itor.NextMember()
	end	
end

function tb:TongCallMember(nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	--print("TongCallMember",nKind, nMapId, nPosX, nPosY, nPlayerId, nKinTongId, szName, nFightState)
	local nTongId = nKinTongId;
	if nTongId == nil or nTongId <= 0 then
		return 0;
	end
	
	local nCanSendIn =  Item:IsCallInAtMap(nMapId, unpack(self.TEMPLET_ITEM_ID));
	if (nCanSendIn ~= 1) then
		return 0;
	end
	
	--�����а���Ա��������
	local cTong = KTong.GetTong(nTongId)
	if not cTong then
		return 0;
	end	
	local cKinItor = cTong.GetKinItor()
	local nKinId = cKinItor.GetCurKinId()
	while nKinId ~= 0 do
		local cKin = KKin.GetKin(nKinId);
		if not cKin then
			return 0;
		end
		local itor = cKin.GetMemberItor();
		local cMember = itor.GetCurMember();
		while cMember do
			local nMemberPlayerId = cMember.GetPlayerId()
			--local szName= KGCPlayer.GetPlayerName(cMember.GetPlayerId());
			local nOnline = KGCPlayer.OptGetTask(nMemberPlayerId, KGCPlayer.TSK_ONLINESERVER);
			if nOnline > 0 then
				if nMemberPlayerId ~= nPlayerId then
					local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
					if (pPlayer) then
						local nSelfKinId, nSelfMemberId = pPlayer.GetKinMember();
						if Tong:HaveFigure(nTongId, nSelfKinId, nSelfMemberId, 0) == 1 then							
							local nCanSendOut = Item:IsCallOutAtMap(pPlayer.nMapId, unpack(self.TEMPLET_ITEM_ID));
							if (nCanSendOut == 1) then
								self:SeachPlayer(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState);
							end
						end	
					end
				end
			end
			cMember = itor.NextMember()
		end
	  nKinId = cKinItor.NextKinId()
	end
end

-- GS ���������������Ƿ���ָ�����
function tb:SeachPlayer(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	--print("SeachPlayer",nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	-- ����ҵ��Ļ����������ҵ�����
	local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
	if (pPlayer) then
		local nCanSendOut = Item:IsCallOutAtMap(pPlayer.nMapId, unpack(self.TEMPLET_ITEM_ID));
		local nCanSendIn  = Item:IsCallInAtMap(nMapId, unpack(self.TEMPLET_ITEM_ID));
		if (nCanSendOut ~= 1) then
			pPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
			return;
		end
		if (nCanSendIn ~= 1) then
			pPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
			return;
		end	
		
		-- ֪ͨȷ��
		GCExcute({"Item.tbZhaoHuanLingPai:Msg2Player4Confirm_GC", nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState});		
	end
end


-- GC ֪ͨȷ��
function tb:Msg2Player4Confirm_GC(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	--print("Msg2Player4Confirm_GC",nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	GlobalExcute({"Item.tbZhaoHuanLingPai:Msg2Player4Confirm_GS", nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState});
end

-- GS ֪ͨȷ��
function tb:Msg2Player4Confirm_GS(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	--print("Msg2Player4Confirm_GS",nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
	if (not pPlayer) then
		return;
	end
	pPlayer.GetTempTable("Item").nZhaoHuanPlayerId = nMemberPlayerId;
	pPlayer.GetTempTable("Item").tbZhaoHuanLingPai = {nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState};
	Setting:SetGlobalObj(pPlayer);
	Player:RegisterTimer(Env.GAME_FPS * 70, self.InvalidRequest, self, nMemberPlayerId);
	
	Setting:RestoreGlobalObj();
	pPlayer.CallClientScript({"Item.tbZhaoHuanLingPai:Msg2Player4Confirm_C", nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState});
end

-- C
function tb:Msg2Player4Confirm_C(nKind, nMapId, nPosX, nPosY, nMemberPlayerId, szName, nFightState)
	CoreEventNotify(
		UiNotify.emCOREEVENT_CONFIRMATION,
		UiNotify.CONFIRMATION_KIN_CONVECTION,
		szName,
		nKind,
		nMapId,
		nPosX,
		nPosY,
		nMemberPlayerId,
		nFightState
	);
end

-- GSȷ�Ϻ�,bAcceptΪ(0.�ܾ���1.ͬ��)
function tb:PlayerAccredit(nMapId, nPosX, nPosY, nMemberPlayerId, nFightState, bAccept)
	if (bAccept ~= 2) then
		return 0;
	end
	local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
	if (not pPlayer) then
		return;
	end
	if pPlayer.GetTempTable("Item").nZhaoHuanPlayerId ~= nMemberPlayerId then
		pPlayer.Msg("���Ĳ�����ʱ�ˡ�");
		return 0;
	end
	
	local nTempKind = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[1];
	local nTempMapId = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[2];
	local nTempPosX = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[3];
	local nTempPosY = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[4];
	local nTempMemberPlayerId = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[5];
	local szTempName = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[6];
	local nTempFightState = pPlayer.GetTempTable("Item").tbZhaoHuanLingPai[7];	
	

	
	local nCanSendOut = Item:IsCallOutAtMap(pPlayer.nMapId, unpack(self.TEMPLET_ITEM_ID));
	local nCanSendIn  = Item:IsCallInAtMap(nTempMapId, unpack(self.TEMPLET_ITEM_ID));
	if (nCanSendOut ~= 1) then
		pPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
		return;
	end
	if (nCanSendIn ~= 1) then
		pPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
		return;
	end	
	local tbEvent	= {						-- ���ж���ʱ���¼�
		Player.ProcessBreakEvent.emEVENT_MOVE,
		Player.ProcessBreakEvent.emEVENT_ATTACK,
		Player.ProcessBreakEvent.emEVENT_SITE,
		Player.ProcessBreakEvent.emEVENT_USEITEM,
		Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
		Player.ProcessBreakEvent.emEVENT_DROPITEM,
		Player.ProcessBreakEvent.emEVENT_SENDMAIL,
		Player.ProcessBreakEvent.emEVENT_TRADE,
		Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
		Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
		Player.ProcessBreakEvent.emEVENT_DEATH,
	};
	if (0 == pPlayer.nFightState) then				-- ����ڷ�ս��״̬�´�������ʱ��������
		self:SendAllMemberSuccess(nTempMapId, nTempPosX, nTempPosY, nTempMemberPlayerId, nTempFightState)
		return 0;
	end
	GeneralProcess:StartProcess("���ڷ����ٻ�����...", self.nTime * Env.GAME_FPS, {self.SendAllMemberSuccess, self, nTempMapId, nTempPosX, nTempPosY, nTempMemberPlayerId, nTempFightState}, nil, tbEvent);	-- ��ս��״̬����ҪnTime�����ʱ
end

function tb:SendAllMemberSuccess(nMapId, nPosX, nPosY, nMemberPlayerId, nFightState)
	--print("SendAllMemberSuccess",nMapId, nPosX, nPosY, nMemberPlayerId, nFightState)
	local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
	if (not pPlayer) then
		return 0;
	end
	local nCanSendOut = Item:IsCallOutAtMap(pPlayer.nMapId, unpack(self.TEMPLET_ITEM_ID));
	local nCanSendIn  = Item:IsCallInAtMap(nMapId, unpack(self.TEMPLET_ITEM_ID));
	if (nCanSendOut ~= 1) then
		pPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
		return;
	end
	if (nCanSendIn ~= 1) then
		pPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
		return;
	end
	local nRet, szMsg = Map:CheckTagServerPlayerCount(nMapId)
	if nRet ~= 1 then
		pPlayer.Msg(szMsg);
		return 0;
	end
	pPlayer.SetFightState(nFightState);
	pPlayer.NewWorld(nMapId, nPosX, nPosY);
end

function tb:InvalidRequest(nMemberPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nMemberPlayerId);
	if (not pPlayer) then
		return 0;
	end
	pPlayer.GetTempTable("Item").nZhaoHuanPlayerId = nil;
	pPlayer.GetTempTable("Item").tbZhaoHuanLingPai = nil;
	return 0;
end

