
if (not Item.tbShiTuChuanSongFu) then
	Item.tbShiTuChuanSongFu = {};
end

local tb = Item.tbShiTuChuanSongFu;
tb.ITEM_ID = {18,1,65,1};
tb.tbc2sFun = {};

-- GCѯ�ʸ���Serverָ����ͽ���Ƿ�����
function tb:SelectDstPlayerPos(szDstPlayerName, szAppPlayerName)
	GlobalExcute({"Item.tbShiTuChuanSongFu:SeachPlayer", szDstPlayerName, szAppPlayerName});
end


-- GS ���������������Ƿ���ָ�����
function tb:SeachPlayer(szDstPlayerName, szAppPlayerName)
	-- ����ҵ��Ļ����������ҵ�����
	local pDstPlayer = GetPlayerObjFormRoleName(szDstPlayerName);
	if (pDstPlayer) then
		local nMapId, nPosX, nPosY = pDstPlayer.GetWorldPos();
		local nCanSendIn  = Item:IsCallOutAtMap(nMapId, unpack(self.ITEM_ID));
		if (nCanSendIn ~= 1) then
			nMapId = -1;
		end	
		GCExcute({"Item.tbShiTuChuanSongFu:FindDstPlayer", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY});		
	end
end


-- GC �õ�ָ��ͽ����Ϣ��֪ͨʦ��
function tb:FindDstPlayer(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY)
	GlobalExcute({"Item.tbShiTuChuanSongFu:ObtainDstPlayerPos", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY})
end


-- GS ʦ����֪ͽ��λ��
function tb:ObtainDstPlayerPos(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY)

	local pAppPlayer = GetPlayerObjFormRoleName(szAppPlayerName);
	if (not pAppPlayer) then
		return 0;
	end
	if nMapId == -1 then
		pAppPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
		return 0;
	end
	local nCanSendOut = Item:IsCallInAtMap(nMapId, unpack(self.ITEM_ID));
	if (nCanSendOut ~= 1) then
		pAppPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
		return 0;
	end
	
	-- ֪ͨͽ��ȷ��
	GCExcute({"Item.tbShiTuChuanSongFu:Msg2DstPlayer4Confirm_GC", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY});
end


-- GC ֪ͨͽ��ȷ��
function tb:Msg2DstPlayer4Confirm_GC(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY)
	GlobalExcute({"Item.tbShiTuChuanSongFu:Msg2DstPlayer4Confirm_GS", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY});
end

-- GS ֪ͨͽ��ȷ��
function tb:Msg2DstPlayer4Confirm_GS(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY)
	local pDstPlayer = GetPlayerObjFormRoleName(szDstPlayerName);
	if (not pDstPlayer) then
		return;
	end
	
	pDstPlayer.CallClientScript({"Item.tbShiTuChuanSongFu:Msg2DstPlayer4Confirm_C", szDstPlayerName, szAppPlayerName});
end

-- C
function tb:Msg2DstPlayer4Confirm_C(szDstPlayerName, szAppPlayerName)
	CoreEventNotify(UiNotify.emCOREEVENT_CONFIRMATION, UiNotify.CONFIRMATION_TEACHER_CONVECTION, szDstPlayerName, szAppPlayerName);
end

-- GSͽ��ȷ�Ϻ�,bAcceptΪ(0.�ܾ���1.ͬ��)
function tb:DstPlayerAccredit(szDstPlayerName, szAppPlayerName, bAccept)	
	local pStudent = GetPlayerObjFormRoleName(szDstPlayerName);
	if (not pStudent) then
		return;
	end
	if (bAccept ~= 1) then
		Item.tbShiTuChuanSongFu:Msg2Player_GS(szAppPlayerName, "���ͽ�����ڲ���Ҫ�������");
		return;
	end
	
	local nMapId, nPosX, nPosY = pStudent.GetWorldPos();
	local nStudentFightState = pStudent.nFightState;
	local nCanSendIn  = Item:IsCallOutAtMap(nMapId, unpack(Item.tbShiTuChuanSongFu.ITEM_ID));
	if (nCanSendIn ~= 1) then
		nMapId = -1;
	end	
	
	-- ��ʦ��������
	GCExcute({"Item.tbShiTuChuanSongFu:AgreeTeacherComeHere_GC", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY,nStudentFightState});		
end
tb.tbc2sFun["DstPlayerAccredit"] = tb.DstPlayerAccredit;


-- GC��ʦ�����͵�ָ����ͼ
function tb:AgreeTeacherComeHere_GC(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY, nStudentFightState)
	GlobalExcute({"Item.tbShiTuChuanSongFu:AgreeTeacherComeHere_GS", szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY, nStudentFightState});
end


-- GS �յ�ͽ��ȷ�ϴ���ʦ�����Դ���
function tb:AgreeTeacherComeHere_GS(szDstPlayerName, szAppPlayerName, nMapId, nPosX, nPosY, nStudentFightState)
	local pPlayer = GetPlayerObjFormRoleName(szAppPlayerName);
	if (not pPlayer) then
		return;
	end
	local szDestStudent = pPlayer.GetTempTable("Item").szBeComeToSutdentName;
	if (not szDestStudent or szDestStudent ~= szDstPlayerName) then
		self:Msg2Player_GS(szDstPlayerName, "ʦͽ���������Ѿ����ڣ�����Ҫ���´��ͣ������������롣")
		pPlayer.Msg("ʦͽ���������Ѿ����ڣ�����Ҫ���´��ͣ������������롣");
		return;
	else
		pPlayer.GetTempTable("Item").szBeComeToSutdentName = nil;
	end
	if nMapId == -1 then
		pPlayer.Msg("�����Դ��͵�Ŀ���ͼ��");
		return 0;
	end
	local nRet, szMsg = Map:CheckTagServerPlayerCount(nMapId)
	if nRet ~= 1 then
		pPlayer.Msg(szMsg);
		return 0;
	end
	local nCanSendOut = Item:IsCallInAtMap(nMapId, unpack(self.ITEM_ID));
	if (nCanSendOut ~= 1) then
		pPlayer.Msg("��ǰ��ͼ�����Ա����ͣ�");
		return 0;
	end
	pPlayer.SetFightState(nStudentFightState);
	pPlayer.NewWorld(nMapId, nPosX, nPosY);
end

-- GS������Ϣ��ָ�����
function tb:Msg2Player_GS(szPlayerName, szMsg)
	GCExcute({"Item.tbShiTuChuanSongFu:Msg2Player_GC", szPlayerName, szMsg});	
end

-- GC������Ϣ��ָ�����
function tb:Msg2Player_GC(szPlayerName, szMsg)
	GlobalExcute({"Item.tbShiTuChuanSongFu:ReceiveMsg", szPlayerName,szMsg});
end

-- GS�յ����͸�ĳ����ҵ���Ϣ
function tb:ReceiveMsg(szPlayerName, szMsg)
	local pPlayer = GetPlayerObjFormRoleName(szPlayerName);
	if (not pPlayer) then
		return;
	end
	
	pPlayer.Msg(szMsg);
end

