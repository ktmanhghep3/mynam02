--script\CTC\define.lua
CTC.ISOPEN = 1;-- 0 tat 1 mo
--------Jie add--------
CTC.CTC_TIME_BD = 10 * 60;-- thoi gian bao danh
CTC.CTC_TIME = 60 * 60; -- 60 *60, thời gian diễn ra sự kiện
CTC.nTimerId = 0;
CTC.nTimerId_BD = 0;
CTC.nTimerId_BD_1 = 0;
CTC.Check_ThongBao_SK = 0;
CTC.Show_Line_BD = 0;
CTC.Show_Line_NT = 0;
CTC.ThanhLong  = "";
CTC.HuyenVu  = "";
CTC.ChuTuoc  = "";
CTC.BachHo  = "";
CTC.NgaiVang = "";
----Jie add task nhan thuong----
CTC.nTask_Group = 3028;
CTC.nTaskId_Day = 19;
CTC.nTaskId_Count = 20;
CTC.nTaskId_Count_TV = 21;
---------------Thời gian-------------
CTC.ENDTIME = 1310;-- cau hinh thoi gian su kien dien ra, sau time này mới có thể nhận thưởng thành viên và bang chủ gs
CTC.WEEKDAY = {
	[0] = 0, -- CN 0 la tat , 1 la mo
	[1] = 1,-- T2 0 la tat , 1 la mo
	[2] = 0,-- T3 0 la tat , 1 la mo	 
	[3] = 1,-- T4 0 la tat , 1 la mo		
	[4] = 0,-- T5 0 la tat , 1 la mo
	[5] = 0,-- T6 0 la tat , 1 la mo	
	[6] = 0,-- T7 0 la tat , 1 la mo
};-- 1 là thứ 2; ngày diễn ra sự kiện gs. Cần đồng bộ gamecenter
-------------------------------------

CTC.MAXTONG = 4;-- giới hạn tối đa 4 bang hội

CTC.MapID = 1832;
CTC.NPCIDLongTru = {{10356,{CTC.MapID, 1577, 3193},0},{10357,{CTC.MapID, 1716, 3315},0},{10358,{CTC.MapID, 1858, 3100},0},{10359,{CTC.MapID, 1700, 3035},0}};

CTC.NPCNgaiVang = {10360,{CTC.MapID, 1705, 3168}};
CTC.MapPos = {{CTC.MapID, 1629, 3258},{CTC.MapID, 1653, 3214},{CTC.MapID, 1795, 3080},{CTC.MapID, 1791, 3035},{CTC.MapID, 1629, 3258},{CTC.MapID, 1653, 3214},{CTC.MapID, 1795, 3080},{CTC.MapID, 1791, 3035}};

CTC.MapPos_Prepare =
{
{1832, 1836,3010},--1
{1832, 1576,3298},--2
}

CTC.NPCLevel = 50;
CTC.TongList = {};
CTC.Point = {30,70,5};-- diem point long tru 30 là trụ bình thường, 70 là ngai vàng, bao ve tru
CTC.PlayerList = {};
CTC.Result = {};
CTC.Winner = 0;
CTC.ReadyTimerId = 0;
CTC.ExpProtect = 5000000;-- kinh nghiệm bảo vệ trụ
CTC.CoinProtect = 20000;-- tiền bảo vệ trụ
CTC.TimeProtectOnDeath = 10;
CTC.ITemAward = {{18, 1, 1,10,{bForceBind = 1},4},{18, 1, 1,9,{bForceBind = 1},4},{18, 1, 1,9,{bForceBind = 1},2},{18, 1, 1,9,{bForceBind = 1},1}};-- phần thưởng kết thúc sự kiện theo xếp hạng
CTC.CoinAward = {50000,40000,30000,20000};-- phần thưởng kết thúc sự kiện theo xếp hạng
CTC.EXPAward = {50000000,40000000,30000000,20000000};-- phần thưởng kết thúc sự kiện theo xếp hạng
--script\CTC\define.lua
CTC.Folder = "\\script\\CTC\\"; -- duong dan folder
CTC.List = "Save_CTC.txt"; -- list name nhan thuong theo rank
CTC.List_HWID = "HWID_CTC.txt"; -- list hwid nhan vat
CTC.Max_HWID = 1 ; -- gioi han 1 HWID 1 may





function CTC:AddAward(pPlayer)
	for i = 1,#CTC.Result do
		if pPlayer.dwTongId == CTC.Result[i][1] then
		--	pPlayer.AddStackItem(unpack(CTC.ITemAward[i]));--Thêm vật phẩm
			pPlayer.Earn(CTC.CoinAward[i],0);
			pPlayer.AddExp(CTC.EXPAward[i]);
			pPlayer.Msg("Bang hội của bạn đạt hạng ".. i .. " nhận được rất nhiều phần thưởng");
			--Jie add
			CTC:WriteFile(pPlayer,i,1);
			--
		end	
	end
end
function CTC:WriteFile_HWID(pPlayer,nCount_HWID,nCheck)
	if not pPlayer then 
		return;
	end	
	local nHardWareId = pPlayer.dwHardWareId;
	if not nHardWareId then 
		return ;
	end	
	local szFile = CTC.Folder..CTC.List_HWID.."";
	local nNewCount_HWID = nCount_HWID + 1;
	if nCheck == 1 then
		--Lib:EditTabFile(szFile,1,""..pPlayer.szName.."",2,""..nNewCount_HWID .."");
		Lib:EditTabFile(szFile,1,""..nHardWareId.."",2,""..nNewCount_HWID .."");
	else
		KFile.AppendFile(szFile, ""..nHardWareId.."\t"..nNewCount_HWID.."\t"..pPlayer.szName.."\r\n");	
	end
end
function CTC:WriteFile(pPlayer,nRank,nCheck)
	if not pPlayer then 
		return;
	end	
	local pTong = KTong.GetTong(pPlayer.dwTongId);
	local szTongName = pTong.GetName();
	local szFile = CTC.Folder..CTC.List.."";
	if not nRank then
		nRank = 0;
	end
	if nCheck == 1 then
		Lib:EditTabFile(szFile,1,""..szTongName.."",2,""..nRank .."");
	else
		KFile.AppendFile(szFile, ""..szTongName.."\t"..nRank.."\t"..pPlayer.szName.."\r\n");	
	end
end
function CTC:ResetFile()
	local szFile = CTC.Folder..CTC.List.."";
	KFile.WriteFile(szFile, "szTongName\tRank\tszName\n");	
	
	local szFile_HWID = CTC.Folder..CTC.List_HWID.."";
	KFile.WriteFile(szFile_HWID, "nHWID\tnNum\tszName\n");	

end
CTC.PhanThuong_BC = {

	[1] = {
		["BacThuong"] = 5 * 10000, -- 5 van
		["Item1"] = {{18,1,3080,1}, 1}, -- item
		},
	[2] = {
		["BacThuong"] = 5 * 10000, -- 5 van
		["Item1"] = {{18,1,3080,2}, 1}, -- item
		},
	[3] = {
		["BacThuong"] = 5 * 10000, -- 5 van
		["Item1"] = {{18,1,3080,3}, 1}, -- item
		},
	[4] = {
		["BacThuong"] = 5 * 10000, -- 5 van
		["Item1"] = {{18,1,3080,4}, 1}, -- item
		},

}
CTC.PhanThuong_TV = {

	[1] = {
		["BacThuong"] = 1 * 50000, -- 1 van
		["Item1"] = {{18,1,1,9}, 2}, -- item
		},
	[2] = {
		["BacThuong"] = 1 * 30000, -- 1 van
		["Item1"] = {{18,1,1,8}, 2}, -- item
		},		
	[3] = {
		["BacThuong"] = 1 * 15000, -- 1 van
		["Item1"] = {{18,1,1,7}, 2}, -- item
		},		
	[4] = {
		["BacThuong"] = 1 * 10000, -- 1 van
		["Item1"] = {{18,1,1,6}, 2}, -- item
		},		
	[5] = {
		["BacThuong"] = 1 * 5000, -- 1 van
		["Item1"] = {{18,1,1,5}, 2}, -- item
		},		
	[6] = {
		["BacThuong"] = 1 * 3000, -- 1 van
		["Item1"] = {{18,1,1,4}, 2}, -- item
		},		
	[7] = {
		["BacThuong"] = 1 * 2000, -- 1 van
		["Item1"] = {{18,1,1,3}, 2}, -- item
		},		
	[8] = {
		["BacThuong"] = 1 * 1000, -- 1 van
		["Item1"] = {{18,1,1,2}, 2}, -- item
		},		

}
