SpecialEvent.LamNguyetCocPK = SpecialEvent.LamNguyetCocPK or {}
local tbLamNguyetCocPK = SpecialEvent.LamNguyetCocPK

--ko dc edit---------------------
tbLamNguyetCocPK.nTimerId_BD = 0;
tbLamNguyetCocPK.nTimerId_End = 0;
tbLamNguyetCocPK.nTimerId_PK = 0;
tbLamNguyetCocPK.nStatus = 0; 
tbLamNguyetCocPK.tbPlayer_List = {};
tbLamNguyetCocPK.tbResult = {};
tbLamNguyetCocPK.tbSortPlayer = {};
tbLamNguyetCocPK.tbSortPlayer2 = {};
tbLamNguyetCocPK.nBossCallCount = 0 -- Đếm số lần gọi Boss

-- Có thể chỉnh sửa
tbLamNguyetCocPK.ISOPEN = 1 -- 0: Tắt, 1: Mở
tbLamNguyetCocPK.TimeBD = 10 * 60 * Env.GAME_FPS -- Thời gian báo danh sự kiện
tbLamNguyetCocPK.TimeEnd = 55 * 60 * Env.GAME_FPS -- Thời gian sự kiện diễn ra
tbLamNguyetCocPK.TimeCallBoss = 1 * 60 * Env.GAME_FPS -- Thời gian gọi Boss sau mỗi lần
tbLamNguyetCocPK.TimeDelayDeleteBoss = 2 * 60 * Env.GAME_FPS -- Thời gian chờ trước khi xóa Boss lần thứ 5
tbLamNguyetCocPK.NumBossCallBeforeDelete = 5 -- Số lần gọi Boss trước khi xóa Boss
tbLamNguyetCocPK.nMapId = 2102

tbLamNguyetCocPK.Folder = "\\script\\ChucNang\\LamNguyetCocPK\\"; 
tbLamNguyetCocPK.List = "Save_Player.txt"; 
tbLamNguyetCocPK.ListNT = "Save_NT.txt"; 

tbLamNguyetCocPK.TaskGroup_TuCachAnhHung = 4537 -- ID TaskGroup
tbLamNguyetCocPK.TaskID_TuCachAnhHung = 1 -- ID Task

--Boss
-- Danh sách Boss và Điểm giết Boss
tbLamNguyetCocPK.tbBoss = {
    {id = 7419, name = "Thanh Mộc", points = 30},
    {id = 7420, name = "Xích Hỏa", points = 40},
    {id = 7421, name = "Tây Kim", points = 50},
    {id = 7422, name = "Huyền Thủy", points = 80},
    {id = 7423, name = "Hoàng Thổ", points = 100},
}

-- Vị trí Boss xuất hiện
tbLamNguyetCocPK.tbBossPositions = {
    {1730, 3266}, {1764, 3306}, {1729, 3347}, {1754, 3376},
    {1727, 3399}, {1688, 3398}, {1675, 3438}, {1647, 3405},
    {1639, 3329}, {1690, 3301}, {1431, 3268}, {1490, 3367},
    {1448, 3461}, {1432, 3513}, {1405, 3486}, {1352, 3439},
    {1313, 3400}, {1366, 3385}, {1328, 3349}, {1361, 3314},
    {1564, 3400}, {1650, 3491}, {1640, 3580}, {1604, 3618},
    {1552, 3637}, {1516, 3599}, {1566, 3578}, {1556, 3507},
    {1488, 3497}, {1457, 3543}, {1466, 3299}, {1531, 3366},
    {1592, 3307}, {1619, 3261}, {1569, 3242}, {1526, 3263},
    {1536, 3203}, {1483, 3206}, {1529, 3159}, {1592, 3127},
}
--end Boss--

-- Thêm biến để đếm số lượng Boss bị tiêu diệt và tổng điểm
tbLamNguyetCocPK.tbBossKillStats = {
    ["Thanh Mộc"] = {count = 0, totalPoints = 0},
    ["Xích Hỏa"] = {count = 0, totalPoints = 0},
    ["Tây Kim"] = {count = 0, totalPoints = 0},
    ["Huyền Thủy"] = {count = 0, totalPoints = 0},
    ["Hoàng Thổ"] = {count = 0, totalPoints = 0},
}

tbLamNguyetCocPK.MapPos_Random =
{
{tbLamNguyetCocPK.nMapId , 1673,3071},
{tbLamNguyetCocPK.nMapId , 1764,3111},
{tbLamNguyetCocPK.nMapId , 1804,3133},
{tbLamNguyetCocPK.nMapId , 1826,3233},
};

tbLamNguyetCocPK.RANK_POINT =
{

	[1] = {10, "Hiệp Khách Giang Hồ", "white"},
	[2] = {25, "Hiệp Khách Giang Hồ", "green"},
	[3] = {40, "Hiệp Khách Giang Hồ", "cyan"},
	[4] = {80, "Hiệp Khách Giang Hồ", "pink"},
	[5] = {120, "Hiệp Khách Giang Hồ", "gold"},
	[6] = {200, "Hiệp Khách Giang Hồ", "yellow"},

};

tbLamNguyetCocPK.ADD_POINT =
{
[1] = 1,
[2] = 1,
[3] = 1,
[4] = 1,
[5] = 1,
[6] = 1,
};

tbLamNguyetCocPK.Date_DangKy = {-- CAU HINH NGAY Dang Ky
	[0] = 0, -- CN
	[1] = 1,-- T2
	[2] = 1,-- T3	
	[3] = 0,-- T4		
	[4] = 1,-- T5
	[5] = 1,-- T6	
	[6] = 0,-- T7
};

function tbLamNguyetCocPK:AddPlayer(nPlayerId)
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
function tbLamNguyetCocPK:FindPlayer(pPlayer)
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
function tbLamNguyetCocPK:CheckOpenSK()

	if self.ISOPEN == 0 then
		return 0;
	end
	
	local nMapIndex = SubWorldID2Idx(self.nMapId);
	if nMapIndex < 0 then
		return 0;
	end
	

end

function tbLamNguyetCocPK:GM_Option()
		local tbOpt = {
			{"<color=green>Báo Danh<color>",self.StartEvent_GS,self},
			{"<color=green>Đánh<color>",self.StartGame_GS,self},
			{"<color=green>Kết thúc<color>",self.EndGame_GS,self},
			--{"Báo danh",self.GM_Option1,self,1},
			--{"Quay Về",self.GM_Option1,self,2},
		};
	Dialog:Say("Hỗ trợ GM hoạt động Công thành",tbOpt);
end
function tbLamNguyetCocPK:GM_Option1(nValue)
	if nValue == 1 then
		
	elseif nValue == 2 then
		local nMapId, nReliveId  = me.GetRevivePos();
		local nReliveX, nReliveY = RevID2WXY(nMapId, nReliveId);
		me.NewWorld(nMapId, nReliveX / 32, nReliveY / 32);
		me.SetFightState(0);
	end
end
function tbLamNguyetCocPK:GetPlayerRank(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nRank or 0;
end
function tbLamNguyetCocPK:GetPlayerTitle(nPlayerId)
	return self.tbPlayer_List[nPlayerId].nTitle or 1;
end
function tbLamNguyetCocPK:AddPlayerTitle(pPlayer)
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

function tbLamNguyetCocPK:RemovePlayerTitle(pPlayer)
	if not pPlayer then
		return 0;
	end
	for i = 1, #self.RANK_POINT do
		local szTitle = string.format("%s",self.RANK_POINT[i][2]);
		pPlayer.RemoveSpeTitle(szTitle);
	end
end
function tbLamNguyetCocPK:GetPoinByRank(pPlayer)
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
function tbLamNguyetCocPK:WriteFile()
	for nPlayerId, tbInfo in pairs(self.tbPlayer_List) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local Bonus = tbInfo.nBonus;
		local KillNumber = tbInfo.nKillPlayerNum;
		local Rank = tbInfo.nRank;
		
		local szFile = tbLamNguyetCocPK.Folder..tbLamNguyetCocPK.List.."";
		KFile.AppendFile(szFile, ""..Rank.."\t"..szName.."\t"..Bonus.."\t"..KillNumber.."\r\n");	

	end
end
function tbLamNguyetCocPK:ResetFile()
	local szFile = tbLamNguyetCocPK.Folder..tbLamNguyetCocPK.List.."";
	KFile.WriteFile(szFile, "Rank\tName\tBonus\tKillNumber\n");	
	
	local szFile = tbLamNguyetCocPK.Folder..tbLamNguyetCocPK.ListNT.."";
	KFile.WriteFile(szFile, "Name\tRank\tszDate\n");	
	
end
--script\ChucNang\LamNguyetCocPK\dautruong_define.lua