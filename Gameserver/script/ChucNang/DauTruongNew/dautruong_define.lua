
SpecialEvent.DauTruongNew = SpecialEvent.DauTruongNew or {};
local tbDauTruong = SpecialEvent.DauTruongNew;

--ko dc edit---------------------
tbDauTruong.nTimerId_BD = 0;
tbDauTruong.nTimerId_End = 0;
tbDauTruong.nTimerId_PK = 0;
tbDauTruong.nStatus = 0; 
tbDauTruong.tbPlayer_List = {};
tbDauTruong.tbResult = {};
tbDauTruong.tbSortPlayer = {};
tbDauTruong.tbSortPlayer2 = {};
---có thể edit-----------------------
tbDauTruong.ISOPEN = 1;-- 0 tat 1 mo
tbDauTruong.TimeBD = 10 * 60 * Env.GAME_FPS;-- thoi gian bao danh su kien
tbDauTruong.TimeEnd = 60 * 60 * Env.GAME_FPS;-- thoi gian sự kiện diễn ra
------------------------------------------
tbDauTruong.nMapId = 2345;

tbDauTruong.Folder = "\\script\\ChucNang\\DauTruongNew\\"; 
tbDauTruong.List = "Save_Player.txt"; 
tbDauTruong.ListNT = "Save_NT.txt"; 

tbDauTruong.MapPos_Random =
{
{tbDauTruong.nMapId , 1592,3160},
{tbDauTruong.nMapId , 1607,3148},
{tbDauTruong.nMapId , 1621,3161},
{tbDauTruong.nMapId , 1628,3176},
{tbDauTruong.nMapId , 1625,3199},
{tbDauTruong.nMapId , 1615,3212},
{tbDauTruong.nMapId , 1597,3213},
{tbDauTruong.nMapId , 1591,3197},
{tbDauTruong.nMapId , 1607,3173},
{tbDauTruong.nMapId , 1621,3176},
{tbDauTruong.nMapId , 1608,3196},
{tbDauTruong.nMapId , 1607,3180},
};
tbDauTruong.RANK_POINT =
{
	[1] = {1000, "Lãng Kiếm Khách", "white"},
	[2] = {2000, "Duy Ngã Độc Tôn", "green"},
	[3] = {3000, "Võ Lâm Thiên Kiêu", "cyan"},
	[4] = {5000, "Phong Khởi Quần Hùng", "pink"},
	[5] = {8000, "Thiên Hạ Vô Song", "gold"},
	[6] = {13000, "Độc Cô Cầu Bại", "yellow"},
};
tbDauTruong.ADD_POINT =
{
[1] = 100,
[2] = 200,
[3] = 300,
[4] = 400,
[5] = 500,
[6] = 600,
};

tbDauTruong.Date_DangKy = {-- CAU HINH NGAY Dang Ky
	[0] = 0, -- CN
	[1] = 0,-- T2
	[2] = 1,-- T3	
	[3] = 0,-- T4		
	[4] = 0,-- T5
	[5] = 1,-- T6	
	[6] = 0,-- T7
};

function tbDauTruong:AddPlayer(nPlayerId)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if not pPlayer then
		return;
	end
	
	if self:FindPlayer(pPlayer) == 1 then
		return;
	end
	
	self.tbPlayer_List[nPlayerId] = {};
	self.tbPlayer_List[nPlayerId].nKillPlayerNum = 0;
	self.tbPlayer_List[nPlayerId].nBonus = 0;
	self.tbPlayer_List[nPlayerId].nRank = 0;
end
function tbDauTruong:FindPlayer(pPlayer)
	if not pPlayer then
		return 0;
	end
	for nPlayerId, tbPlayerMap in pairs(self.tbPlayer_List) do
		if pPlayer.nId == nPlayerId then
			return 1;
		end
	end
	return 0;
end
function tbDauTruong:CheckOpenSK()

	if self.ISOPEN == 0 then
		return 0;
	end
	
	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return 0;
	end
	

end

function tbDauTruong:GM_Option()
		local tbOpt = {
			{"<color=green>Bắt Đầu<color>",self.StartEvent_GS,self},
			{"Báo danh",self.GM_Option1,self,1},
			{"Quay Về",self.GM_Option1,self,2},
		};
	Dialog:Say("Hỗ trợ GM hoạt động Công thành",tbOpt);
end
function tbDauTruong:GM_Option1(nValue)
	if nValue == 1 then
		
	elseif nValue == 2 then
		local nMapId, nReliveId  = me.GetRevivePos();
		local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
		me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
		me.SetFightState(0);
	end
end
function tbDauTruong:GetPlayerRank(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nRank or 0;
end
function tbDauTruong:GetPlayerTitle(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nTitle or 1;
end
function tbDauTruong:AddPlayerTitle(pPlayer)
	if not pPlayer then
		return 0;
	end
	
	
	local nLevel = 1;
	local nBonus = self.tbPlayer_List[pPlayer.nId].nBonus;
	
	
	for i = #self.RANK_POINT, 1, -1 do
		if (nBonus >= self.RANK_POINT[i][1] and -1 ~= self.RANK_POINT[i][1]) then
			nLevel = i;
			break;
		end
	end
	
	if nLevel > #self.RANK_POINT then
		nLevel = #self.RANK_POINT;
	end
	local szTitle = string.format("%s", self.RANK_POINT[nLevel][2]);
	pPlayer.AddSpeTitle(szTitle, GetTime() + 60 * 60 * 24, self.RANK_POINT[nLevel][3]);
end

function tbDauTruong:RemovePlayerTitle(pPlayer)
	if not pPlayer then
		return 0;
	end
	for i = 1, #self.RANK_POINT do
		local szTitle = string.format("%s",self.RANK_POINT[i][2]);
		pPlayer.RemoveSpeTitle(szTitle);
	end
end
function tbDauTruong:GetPoinByRank(pPlayer)
	if not pPlayer then
		return 0;
	end
	
	local nPoint = self.ADD_POINT[1];
	
	local nBonus = self.tbPlayer_List[pPlayer.nId].nBonus;
	
	for i = #self.RANK_POINT, 1, -1 do
		if (nBonus >= self.RANK_POINT[i][1] and -1 ~= self.RANK_POINT[i][1]) then
			nPoint = self.ADD_POINT[i];
			break;
		end
	end
	
	return nPoint;
end
function tbDauTruong:WriteFile()
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local Bonus = tbInfo.nBonus;
		local KillNumber = tbInfo.nKillPlayerNum;
		local Rank = tbInfo.nRank;
		
		local szFile = tbDauTruong.Folder..tbDauTruong.List.."";
		KFile.AppendFile(szFile, ""..Rank.."\t"..szName.."\t"..Bonus.."\t"..KillNumber.."\r\n");	

	end
end
function tbDauTruong:ResetFile()
	local szFile = tbDauTruong.Folder..tbDauTruong.List.."";
	KFile.WriteFile(szFile, "Rank\tName\tBonus\tKillNumber\n");	
	
	local szFile = tbDauTruong.Folder..tbDauTruong.ListNT.."";
	KFile.WriteFile(szFile, "Name\tRank\tszDate\n");	
	
end
--script\ChucNang\DauTruongNew\dautruong_define.lua