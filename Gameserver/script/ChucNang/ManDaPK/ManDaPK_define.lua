SpecialEvent.ManDaPK = SpecialEvent.ManDaPK or {};
local tbManDaPk = SpecialEvent.ManDaPK;

--ko dc edit---------------------
tbManDaPk.nTimerId_BD = 0;
tbManDaPk.nTimerId_End = 0;
tbManDaPk.nTimerId_PK = 0;
tbManDaPk.nStatus = 0; 
tbManDaPk.tbPlayer_List = {};
tbManDaPk.tbResult = {};
tbManDaPk.tbSortPlayer = {};
tbManDaPk.tbSortPlayer2 = {};
---có thể edit-----------------------
tbManDaPk.ISOPEN = 1;-- 0 tat 1 mo
tbManDaPk.TimeBD = 10 * 60 * Env.GAME_FPS;-- thoi gian bao danh su kien
tbManDaPk.TimeEnd = 45 * 60 * Env.GAME_FPS;-- thoi gian sự kiện diễn ra
------------------------------------------
tbManDaPk.nMapId = 2100;

tbManDaPk.Folder = "\\script\\ChucNang\\ManDaPK\\"; 

tbManDaPk.List = "Save_Player.txt"; 
tbManDaPk.ListNT = "Save_NT.txt"; 



tbManDaPk.MapPos_Random =
{
{tbManDaPk.nMapId , 1623,3201},
{tbManDaPk.nMapId , 1677,3254},
{tbManDaPk.nMapId , 1622,3310},
{tbManDaPk.nMapId , 1568,3256},
};
tbManDaPk.RANK_POINT =
{
	[1] = {10, "Mạn Đà Lãng Khách", "white"},
	[2] = {25, "Mạn Đà Lãng Khách", "green"},
	[3] = {40, "Mạn Đà Lãng Khách", "cyan"},
	[4] = {80, "Mạn Đà Lãng Khách", "pink"},
	[5] = {120, "Mạn Đà Lãng Khách", "gold"},
	[6] = {200, "Mạn Đà Lãng Khách", "yellow"},
};
tbManDaPk.ADD_POINT =
{
[1] = 1,
[2] = 1,
[3] = 1,
[4] = 1,
[5] = 1,
[6] = 1,
};

tbManDaPk.Date_DangKy = {-- CAU HINH NGAY Dang Ky
	[0] = 0, -- CN
	[1] = 1,-- T2
	[2] = 0,-- T3	
	[3] = 0,-- T4		
	[4] = 1,-- T5
	[5] = 1,-- T6	
	[6] = 0,-- T7
};

function tbManDaPk:AddPlayer(nPlayerId)
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
function tbManDaPk:FindPlayer(pPlayer)
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
function tbManDaPk:CheckOpenSK()

	if self.ISOPEN == 0 then
		return 0;
	end
	
	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return 0;
	end
	

end

function tbManDaPk:GM_Option()
		local tbOpt = {
			{"<color=green>Bắt Đầu<color>",self.StartEvent_GS,self},
			{"Báo danh",self.GM_Option1,self,1},
			{"Quay Về",self.GM_Option1,self,2},
		};
	Dialog:Say("Hỗ trợ GM hoạt động Công thành",tbOpt);
end
function tbManDaPk:GM_Option1(nValue)
	if nValue == 1 then
		
	elseif nValue == 2 then
		local nMapId, nReliveId  = me.GetRevivePos();
		local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
		me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
		me.SetFightState(0);
	end
end
function tbManDaPk:GetPlayerRank(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nRank or 0;
end
function tbManDaPk:GetPlayerTitle(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nTitle or 1;
end
function tbManDaPk:AddPlayerTitle(pPlayer)
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

function tbManDaPk:RemovePlayerTitle(pPlayer)
	if not pPlayer then
		return 0;
	end
	for i = 1, #self.RANK_POINT do
		local szTitle = string.format("%s",self.RANK_POINT[i][2]);
		pPlayer.RemoveSpeTitle(szTitle);
	end
end
function tbManDaPk:GetPoinByRank(pPlayer)
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


function tbManDaPk:WriteFile()
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local Bonus = tbInfo.nBonus;
		local KillNumber = tbInfo.nKillPlayerNum;
		local Rank = tbInfo.nRank;
		
		local szFile = tbManDaPk.Folder..tbManDaPk.List.."";
		KFile.AppendFile(szFile, ""..Rank.."\t"..szName.."\t"..Bonus.."\t"..KillNumber.."\r\n");	

	end
end

function tbManDaPk:ResetFile()
	local szFile = tbManDaPk.Folder..tbManDaPk.List.."";
	KFile.WriteFile(szFile, "Rank\tName\tBonus\tKillNumber\n");	
	
	local szFile = tbManDaPk.Folder..tbManDaPk.ListNT.."";
	KFile.WriteFile(szFile, "Name\tRank\tszDate\n");	
	
end
--script\ChucNang\ManDaPK\dautruong_define.lua