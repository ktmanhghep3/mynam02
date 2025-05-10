SpecialEvent.HoanhThanhPK = SpecialEvent.HoanhThanhPK or {};
local tbHoanhThanhPK = SpecialEvent.HoanhThanhPK;

--ko dc edit---------------------
tbHoanhThanhPK.nTimerId_BD = 0;
tbHoanhThanhPK.nTimerId_End = 0;
tbHoanhThanhPK.nTimerId_PK = 0;
tbHoanhThanhPK.nStatus = 0; 
tbHoanhThanhPK.tbPlayer_List = {};
tbHoanhThanhPK.tbResult = {};
tbHoanhThanhPK.tbSortPlayer = {};
tbHoanhThanhPK.tbSortPlayer2 = {};
---có thể edit-----------------------
tbHoanhThanhPK.ISOPEN = 1;-- 0 tat 1 mo
tbHoanhThanhPK.TimeBD = 5 * 60 * Env.GAME_FPS;-- thoi gian bao danh su kien
tbHoanhThanhPK.TimeEnd = 45 * 60 * Env.GAME_FPS;-- thoi gian sự kiện diễn ra
------------------------------------------
tbHoanhThanhPK.nMapId = 2103;

tbHoanhThanhPK.Folder = "\\script\\ChucNang\\HoanhThanhPK\\"; 
tbHoanhThanhPK.List = "Save_Player.txt"; 
tbHoanhThanhPK.ListNT = "Save_NT.txt"; 

--Boss--
--ID Boss
tbHoanhThanhPK.Ruong_1 = 7424;
tbHoanhThanhPK.Ruong_2 = 7425;
tbHoanhThanhPK.Ruong_3 = 7426;
tbHoanhThanhPK.Ruong_4 = 7427;
tbHoanhThanhPK.Ruong_5 = 7428;

--ID Boss
tbHoanhThanhPK.IDBoss =
{
{tbHoanhThanhPK.Ruong_1},
{tbHoanhThanhPK.Ruong_2},
{tbHoanhThanhPK.Ruong_3},
{tbHoanhThanhPK.Ruong_4},
{tbHoanhThanhPK.Ruong_5},
}

--Vị trí Boss ra
tbHoanhThanhPK.ViTri_Dong =
{
{tbHoanhThanhPK.nMapId,1672,2920,},
{tbHoanhThanhPK.nMapId,1595,2950,},
{tbHoanhThanhPK.nMapId,1605,3029,},
{tbHoanhThanhPK.nMapId,1644,3077,},
{tbHoanhThanhPK.nMapId,1699,3008,},
{tbHoanhThanhPK.nMapId,1605,3130,},
{tbHoanhThanhPK.nMapId,1593,3076,},
{tbHoanhThanhPK.nMapId,1621,2930,},
{tbHoanhThanhPK.nMapId,1669,2967,},
{tbHoanhThanhPK.nMapId,1688,2979,},
}

tbHoanhThanhPK.ViTri_Tay =
{
{tbHoanhThanhPK.nMapId,1755,2952,},
{tbHoanhThanhPK.nMapId,1807,3004,},
{tbHoanhThanhPK.nMapId,1870,2996,},
{tbHoanhThanhPK.nMapId,1828,2928,},
{tbHoanhThanhPK.nMapId,1873,2901,},
{tbHoanhThanhPK.nMapId,1841,2848,},
{tbHoanhThanhPK.nMapId,1802,2897,},
{tbHoanhThanhPK.nMapId,1840,3039,},
{tbHoanhThanhPK.nMapId,1776,2924,},
{tbHoanhThanhPK.nMapId,1822,2963,},
}

tbHoanhThanhPK.ViTri_Nam =
{
{tbHoanhThanhPK.nMapId,1729,3020,},
{tbHoanhThanhPK.nMapId,1705,3093,},
{tbHoanhThanhPK.nMapId,1738,3114,},
{tbHoanhThanhPK.nMapId,1629,3174,},
{tbHoanhThanhPK.nMapId,1670,3183,},
{tbHoanhThanhPK.nMapId,1778,3059,},
{tbHoanhThanhPK.nMapId,1710,3160,},
{tbHoanhThanhPK.nMapId,1680,3116,},
{tbHoanhThanhPK.nMapId,1767,3095,},
{tbHoanhThanhPK.nMapId,1740,3081,},
}

tbHoanhThanhPK.ViTri_Bac =
{
{tbHoanhThanhPK.nMapId,1759,2838,},
{tbHoanhThanhPK.nMapId,1700,2854,},
{tbHoanhThanhPK.nMapId,1818,2806,},
{tbHoanhThanhPK.nMapId,1756,2753,},
{tbHoanhThanhPK.nMapId,1829,2760,},
{tbHoanhThanhPK.nMapId,1724,2852,},
{tbHoanhThanhPK.nMapId,1774,2876,},
{tbHoanhThanhPK.nMapId,1799,2806,},
{tbHoanhThanhPK.nMapId,1728,2781,},
{tbHoanhThanhPK.nMapId,1671,2874,},
}
--end Boss--


tbHoanhThanhPK.MapPos_Random =
{
{tbHoanhThanhPK.nMapId , 1651,2948},
{tbHoanhThanhPK.nMapId , 1648,3070},
{tbHoanhThanhPK.nMapId , 1804,2994},
{tbHoanhThanhPK.nMapId , 1759,2829},
{tbHoanhThanhPK.nMapId , 1851,2751},
};

tbHoanhThanhPK.RANK_POINT =
{

	[1] = {10, "Hiệp Khách Giang Hồ", "white"},
	[2] = {25, "Hiệp Khách Giang Hồ", "green"},
	[3] = {40, "Hiệp Khách Giang Hồ", "cyan"},
	[4] = {80, "Hiệp Khách Giang Hồ", "pink"},
	[5] = {120, "Hiệp Khách Giang Hồ", "gold"},
	[6] = {200, "Hiệp Khách Giang Hồ", "yellow"},

};

tbHoanhThanhPK.ADD_POINT =
{
[1] = 1,
[2] = 1,
[3] = 1,
[4] = 1,
[5] = 1,
[6] = 1,
};

tbHoanhThanhPK.Date_DangKy = {-- CAU HINH NGAY Dang Ky
	[0] = 0, -- CN
	[1] = 0,-- T2
	[2] = 1,-- T3	
	[3] = 0,-- T4		
	[4] = 1,-- T5
	[5] = 0,-- T6	
	[6] = 0,-- T7
};

function tbHoanhThanhPK:AddPlayer(nPlayerId)
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

function tbHoanhThanhPK:FindPlayer(pPlayer)
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

function tbHoanhThanhPK:CheckOpenSK()

	if self.ISOPEN == 0 then
		return 0;
	end
	
	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return 0;
	end
	

end

function tbHoanhThanhPK:GM_Option()
		local tbOpt = {
			{"<color=green>Bắt Đầu<color>",self.StartEvent_GS,self},
			{"Báo danh",self.GM_Option1,self,1},
			{"Quay Về",self.GM_Option1,self,2},
		};
	Dialog:Say("Hỗ trợ GM hoạt động Công thành",tbOpt);
end

function tbHoanhThanhPK:GM_Option1(nValue)
	if nValue == 1 then
		
	elseif nValue == 2 then
		local nMapId, nReliveId  = me.GetRevivePos();
		local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
		me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
		me.SetFightState(0);
	end
end

function tbHoanhThanhPK:GetPlayerRank(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nRank or 0;
end

function tbHoanhThanhPK:GetPlayerTitle(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nTitle or 1;
end

function tbHoanhThanhPK:AddPlayerTitle(pPlayer)
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

function tbHoanhThanhPK:RemovePlayerTitle(pPlayer)
	if not pPlayer then
		return 0;
	end
	for i = 1, #self.RANK_POINT do
		local szTitle = string.format("%s",self.RANK_POINT[i][2]);
		pPlayer.RemoveSpeTitle(szTitle);
	end
end

function tbHoanhThanhPK:GetPoinByRank(pPlayer)
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

function tbHoanhThanhPK:WriteFile()
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local Bonus = tbInfo.nBonus;
		local KillNumber = tbInfo.nKillPlayerNum;
		local Rank = tbInfo.nRank;
		
		local szFile = tbHoanhThanhPK.Folder..tbHoanhThanhPK.List.."";
		KFile.AppendFile(szFile, ""..Rank.."\t"..szName.."\t"..Bonus.."\t"..KillNumber.."\r\n");	

	end
end
function tbHoanhThanhPK:ResetFile()
	local szFile = tbHoanhThanhPK.Folder..tbHoanhThanhPK.List.."";
	KFile.WriteFile(szFile, "Rank\tName\tBonus\tKillNumber\n");	
	
	local szFile = tbHoanhThanhPK.Folder..tbHoanhThanhPK.ListNT.."";
	KFile.WriteFile(szFile, "Name\tRank\tszDate\n");	
	
end
--script\ChucNang\HoanhThanhPK\dautruong_define.lua