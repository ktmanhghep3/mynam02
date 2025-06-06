-- 文件名　：jieyinren.lua
-- 创建者　：jiazhenwei
-- 创建时间：2009-12-7
-- 描  述  ：
local tbNpc = Npc:GetClass("dataosha_city");

function tbNpc:OnDialog()
	local tbOpt = {};
	local szMsg = "膼瓢a b岷 v脿o m峄檛 lo岷 c谩c c芒u tr岷� l峄漣 b铆 岷﹏ c峄 Ki岷縨 Th岷�";	
	tbOpt = {
				{"Nh矛n nh峄痭g g矛 chi岷縩 膽岷 峄� 膽芒y", self.Apply, self},
				{"膼i theo 膽峄檌 tr瓢峄g", self.OnEnter, self, me.nId},
				--{"脕p d峄g cho cu峄檆 phi锚u l瓢u Gia T峄檆",self.ApplyKinTong, self, 2, me.nId},
				--{"V脿o cu峄檆 phi锚u l瓢u Gia T峄檆", self.OnEnterKinTong, self, 2, me.nId},
				--{"脕p d峄g cho cu峄檆 phi锚u l瓢u Bang h峄檌",self.ApplyKinTong, self, 3, me.nId},
				--{"V脿o cu峄檆 phi锚u l瓢u Bang h峄檌", self.OnEnterKinTong, self, 3, me.nId},
				--{"M峄� cu峄檆 h脿nh tr矛nh", self.Open, self},
				{"T么i ch峄� 膽i xem!"},
			};
	Dialog:Say(szMsg, tbOpt);
	return;
end
function tbNpc:Open()
	local szMsg = "";
	local tbOpt ={{"H峄"},};
	if not CFuben.FubenData[me.nId] then
		szMsg = "B岷 c贸 th峄� ch峄峮 m峄檛 n啤i n脿o 膽贸 膽峄� 膽i";
		Dialog:Say(szMsg, tbOpt);
		return;
	end
	local nTempMapId = CFuben.FubenData[me.nId][1];
	local nDyMapId = CFuben.FubenData[me.nId][2];
	if CFuben.tbMapList[nTempMapId][nDyMapId].IsOpen == 0 then
		CFuben.tbMapList[nTempMapId][nDyMapId].IsOpen = 1;
		CFuben:GameStart(me.nId, CFuben.FubenData[me.nId][2]);
		szMsg = "M峄� th脿nh c么ng";
	else
		szMsg = "膼茫 膽瓢峄 m峄�";		
	end
	Dialog:Say(szMsg, tbOpt);
	return;
end
function tbNpc:OnEnter(nPlayerId)	
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if pPlayer then	
		if pPlayer.nTeamId ~= 0 then
			local tbPlayerList = KTeam.GetTeamMemberList(pPlayer.nTeamId);
			if CFuben:IsSatisfy(pPlayer.nId, tbPlayerList[1]) == 0 then
				return;
			end
			CFuben:JoinGame(pPlayer.nId, tbPlayerList[1]);
		else
			pPlayer.Msg("Kh么ng c贸 m峄檛 膽峄檌 ng农");
			return;
		end
	end
end

function tbNpc:Apply()	
	local tbOpt = {
					{"H峄 b峄�"},
				};
	local szMsg = "B铆 岷﹏ n啤i b岷 mu峄憂 膽i";
	if me.nTeamId ~= 0 then
		for nType, tbFuBen in pairs (CFuben.FUBEN) do
			local nTime = tonumber(KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME));
			local nNowTime = Lib:GetDate2Time(tonumber(GetLocalDate("%Y%m%d"))*10000);
			if tbFuBen.nFlag == 1 and nNowTime - nTime >= tbFuBen.nTime * 24 * 3600 then			
				table.insert(tbOpt,1,{tbFuBen.szName,self.ApplyEx,self, tbFuBen, nType});
			end
		end
	else
		szMsg = "B岷 kh么ng ph岷 膽峄檌 tr瓢峄g k th峄� d岷玭 膽峄搉g 膽峄檌 b岷 膽i";
	end	
	Dialog:Say(szMsg, tbOpt);
	return;
end

function tbNpc:ApplyEx(tbFuBen, nType)	
	local tbOpt = {
					{"H峄 b峄�"},
				};
	local szMsg = "Mu峄憂 膽岷縩 n啤i 膽岷穋 bi峄噒 膽贸";	
	local nTime = tonumber(KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME));
	local nNowTime = Lib:GetDate2Time(tonumber(GetLocalDate("%Y%m%d"))*10000);	
	for nId, tbFuBenEx in pairs (tbFuBen) do
		if type(tbFuBenEx) == "table" then
			if nNowTime - nTime >= tbFuBenEx.nTime * 24 * 3600 then
				table.insert(tbOpt,1,{tbFuBenEx.szName,self.Apply_Ex,self, nId, nType});
			end
		end
	end	
	Dialog:Say(szMsg, tbOpt);
	return;
end

function tbNpc:Apply_Ex(nId, nType)
	CFuben:ApplyFuBenEx(nType, nId, me.nId);	--Ph贸 b岷 峄﹏g d峄g
	return;
end

function tbNpc:ApplyKinTong(nFlag, nPlayerId)
	local tbOpt = {
					{"H峄 b峄�"},
				};
	local szMsg = "B岷 c贸 th峄� ch峄峮 m峄檛 n啤i 膽峄� xem";	
	local nTime = tonumber(KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME));
	local nNowTime = Lib:GetDate2Time(tonumber(GetLocalDate("%Y%m%d"))*10000);	
	for nType, tbFuBen in pairs (CFuben.FUBEN) do
		for nId, tbFuBenEx in pairs (tbFuBen) do
			if type(tbFuBenEx) == "table" then
				if nNowTime - nTime >= tbFuBenEx.nTime * 24 * 3600 and tbFuBenEx.nGroupModel == nFlag then
					table.insert(tbOpt,1,{tbFuBenEx.szName,self.ApplyKinTongEx,self, nType, nId, nFlag, nPlayerId});
				end
			end
		end
	end
	Dialog:Say(szMsg, tbOpt);
	return;
end

function tbNpc:ApplyKinTongEx(nType, nId, nFlag, nPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if pPlayer then		
		local nKinId, nExcutorId = pPlayer.GetKinMember();
		if nKinId == 0 or nExcutorId == 0 then
			pPlayer.Msg("B岷 kh么ng c贸 s峄� cho ph茅p c峄 T峄檆 tr瓢峄g");
			return 0;
		end
		local cKin = KKin.GetKin(nKinId)
		if not cKin then 
			return 0
		end
		local cMember = cKin.GetMember(nExcutorId);
		if not cMember then
			return 0;
		end
		if nFlag == 2 then
			local nFigure = cMember.GetFigure();
			if nFigure ~= 1 then
				pPlayer.Msg("B岷 kh么ng c贸 Bang H峄檌");
				return 0;
			end
			print(nType,nId,nPlayerId)
			CFuben:ApplyFuBenEx(nType, nId, nPlayerId);
		else
			local nTongId = pPlayer.dwTongId;
			if pTong == 0 then
				Dialog:Say("B岷 kh么ng ph岷 th脿nh vi锚n ch铆nh th峄ヽ");
				return 0;
			end
			local nSelfKinId, nSelfMemberId = pPlayer.GetKinMember();
			if Tong:CheckSelfRight(nTongId, nSelfKinId, nSelfMemberId, 32) ~= 1 then
				pPlayer.Msg("B岷 kh么ng ph岷 th脿nh vi锚n ch铆nh th峄ヽ");
				return 0;
			end
			CFuben:ApplyFuBenEx(nType, nId, nPlayerId);
		end
	end
end

function tbNpc:OnEnterKinTong(nFlag, nPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if pPlayer then		
		if nFlag == 2 then
			local nKinId = pPlayer.dwKinId;
			if nKinId == 0 then
				pPlayer.Msg("Kh么ng c贸 Gia t峄檆");
				return;
			end
			local nFlagEx , nPlayerIdEx =  CFuben:FindFunben(nFlag,nKinId);
			if nFlagEx== 0 then
				pPlayer.Msg("Gia T峄檆 c峄 b岷 膽茫 kh么ng 谩p d峄g cho ph贸 b岷");
				return;
			else
				if CFuben:IsSatisfy(me.nId, nPlayerIdEx) == 0 then
					return;
				end
				CFuben:JoinGame(me.nId, nPlayerIdEx);
			end
		else
			local nTongId = pPlayer.dwTongId;
			if nTongId == 0 then
				pPlayer.Msg("B岷 kh么ng c贸 m峄檛 Bang h峄檌");
				return;
			end
			local nFlagEx , nPlayerIdEx =  CFuben:FindFunben(nFlag,nTongId);
			if nFlagEx== 0 then
				pPlayer.Msg("Bang h峄檌 c峄 b岷 膽茫 kh么ng 谩p d峄g cho ph贸 b岷");
				return;
			else
				if CFuben:IsSatisfy(me.nId, nPlayerIdEx) == 0 then
					return;
				end
				CFuben:JoinGame(me.nId, nPlayerIdEx);
			end
		end
	end
end
