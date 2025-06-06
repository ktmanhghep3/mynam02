-------------------------------------------------------
-- 文件名　：wldh_songjin.lua
-- 创建者　：zhangjinpin@kingsoft
-- 创建时间：2009-10-15 09:49:03
-- 文件描述：
-------------------------------------------------------

Require("\\script\\globalserverbattle\\wldh\\battle\\wldh_battle_def.lua");

local tbNpc = Npc:GetClass("wldh_songjin");

function tbNpc:OnDialog()
	
	local tbOpt	= 	
	{
		{"Tham Gia<color=orange> Phe<color> T峄憂g", self.OnJoin, self, 1},
		{"Tham Gia<color=pink> Phe<color> Kim", self.OnJoin, self, 2},
		--{"椎軜英褯蘸", self.OnLeaveHere, self},
		{"K岷縯 Th煤c 膼峄慽 Tho岷"},
	};

	Dialog:Say("Ta S岷� 膼瓢a Ng瓢啤i 膼岷縩 N啤i C岷 膼岷縩 ...!", tbOpt);
end

function tbNpc:OnJoin(nCamp)
	
	local tbMapId = 
	{
		[1] = 182,
		[2] = 185,
	};
	
	local tbNpc	= Npc:GetClass("mubingxiaowei");
	local tbNpcBase = tbNpc.tbMapNpc[tbMapId[nCamp]];
	
	tbNpcBase:OnDialog();
end

function tbNpc:OnLeaveHere()
	
	local nGateWay = Transfer:GetTransferGateway();
	if not Wldh.Battle.tbLeagueName[nGateWay] then
		me.NewWorld(1609, 1648, 3377);
		return;
	end
	
	local nMapId = Wldh.Battle.tbLeagueName[nGateWay][2];
	if nMapId then
		me.NewWorld(nMapId, 1648, 3377);
	end
end