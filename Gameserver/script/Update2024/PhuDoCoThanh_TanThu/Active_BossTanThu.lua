if not MODULE_GAMESERVER then
    return;
end

--Add Boss--
BossTanThu.IdMap_TanThu = 2109;

BossTanThu.IDBoss_1 = 8101;--Boss Tân Thủ 55 
BossTanThu.IDBoss_2 = 8102;--Boss Tân Thủ 55 
BossTanThu.IDBoss_3 = 8103;--Boss Tân Thủ 55 
BossTanThu.IDBoss_4 = 8104;--Boss Tân Thủ 55 
BossTanThu.IDBoss_5 = 8105;--Boss Tân Thủ 55 
BossTanThu.IDBoss_6 = 8106;--Boss Tân Thủ 75
BossTanThu.IDBoss_7 = 8107;--Boss Tân Thủ 75
BossTanThu.IDBoss_8 = 8108;--Boss Tân Thủ 75
BossTanThu.IDBoss_9 = 8109;--Boss Tân Thủ 75
BossTanThu.IDBoss_10 = 8110;--Boss Tân Thủ 75
BossTanThu.IDBoss_11 = 8111;--Boss Tân Thủ 95
BossTanThu.IDBoss_12 = 8112;--Boss Tân Thủ 95
BossTanThu.IDBoss_13 = 8113;--Boss Tân Thủ 95
BossTanThu.IDBoss_14 = 8114;--Boss Tân Thủ 95
BossTanThu.IDBoss_15 = 8115;--Boss Tân Thủ 95



--Vị trí Boss ra
BossTanThu.ViTriBoss_1 =
{
{BossTanThu.IdMap_TanThu,1702,3331,},
{BossTanThu.IdMap_TanThu,1828,3317,},
{BossTanThu.IdMap_TanThu,1679,3248,},
{BossTanThu.IdMap_TanThu,1739,3354,},
{BossTanThu.IdMap_TanThu,1759,3608,},
{BossTanThu.IdMap_TanThu,1944,3536,},

}

BossTanThu.ViTriBoss_2 =
{
{BossTanThu.IdMap_TanThu,1585,3526,},
{BossTanThu.IdMap_TanThu,1820,3392,},
{BossTanThu.IdMap_TanThu,1831,3211,},
{BossTanThu.IdMap_TanThu,1654,3199,},
{BossTanThu.IdMap_TanThu,1952,3269,},
{BossTanThu.IdMap_TanThu,1685,3491,},
}

BossTanThu.ViTriBoss_3 =
{
{BossTanThu.IdMap_TanThu,1870,3388,},
{BossTanThu.IdMap_TanThu,1901,3263,},
{BossTanThu.IdMap_TanThu,1581,3290,},
{BossTanThu.IdMap_TanThu,1777,3198,},
{BossTanThu.IdMap_TanThu,1833,3491,},
{BossTanThu.IdMap_TanThu,1703,3457,},
}

BossTanThu.ViTriBoss_4 =
{
{BossTanThu.IdMap_TanThu,1958,3358,},
{BossTanThu.IdMap_TanThu,1937,3692,},
{BossTanThu.IdMap_TanThu,1593,3381,},
{BossTanThu.IdMap_TanThu,1621,3467,},
{BossTanThu.IdMap_TanThu,1975,3458,},
{BossTanThu.IdMap_TanThu,1883,3590,},
{BossTanThu.IdMap_TanThu,1862,3465,},
}


BossTanThu.ViTriBoss_5 =
{
{BossTanThu.IdMap_TanThu,1873,3219,},
{BossTanThu.IdMap_TanThu,1655,3560,},
{BossTanThu.IdMap_TanThu,1808,3721,},
{BossTanThu.IdMap_TanThu,1711,3394,},
{BossTanThu.IdMap_TanThu,1808,3511,},
{BossTanThu.IdMap_TanThu,1912,3423,},
{BossTanThu.IdMap_TanThu,1774,3258,},
}


--Add Boss--
function BossTanThu:TanThu_AddBoss_55()		
	
local nRand_ViTri1 = MathRandom(1,#self.ViTriBoss_1)--Boss Tân Thủ 55 
local nRand_ViTri2 = MathRandom(1,#self.ViTriBoss_2)--Boss Tân Thủ 55 
local nRand_ViTri3 = MathRandom(1,#self.ViTriBoss_3)--Boss Tân Thủ 55 
local nRand_ViTri4 = MathRandom(1,#self.ViTriBoss_4)--Boss Tân Thủ 55 
local nRand_ViTri5 = MathRandom(1,#self.ViTriBoss_5)--Boss Tân Thủ 55 


local pNpc1	= KNpc.Add2(self.IDBoss_1, 120, -1,unpack(self.ViTriBoss_1[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(self.IDBoss_2, 120, -1,unpack(self.ViTriBoss_2[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(self.IDBoss_3, 120, -1,unpack(self.ViTriBoss_3[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(self.IDBoss_4, 120, -1,unpack(self.ViTriBoss_4[nRand_ViTri4]));
local pNpc1	= KNpc.Add2(self.IDBoss_5, 120, -1,unpack(self.ViTriBoss_5[nRand_ViTri5]));

local szMsg = "<color=yellow><color=cyan>Phù Đồ Cổ Thành-Tân Thủ<color> xuất hiện Võ Lâm Cao Thủ:\n<color=green>Hình Bổ Đầu\nVạn Lão Điên\nCao Sĩ Hiền\nThác Bạt Sơn Uyên\nDương Liễu<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function BossTanThu:TanThu_AddBoss_75()		
	
local nRand_ViTri1 = MathRandom(1,#self.ViTriBoss_1)--Boss Tân Thủ 55 
local nRand_ViTri2 = MathRandom(1,#self.ViTriBoss_2)--Boss Tân Thủ 55 
local nRand_ViTri3 = MathRandom(1,#self.ViTriBoss_3)--Boss Tân Thủ 55 
local nRand_ViTri4 = MathRandom(1,#self.ViTriBoss_4)--Boss Tân Thủ 55 
local nRand_ViTri5 = MathRandom(1,#self.ViTriBoss_5)--Boss Tân Thủ 55 


local pNpc1	= KNpc.Add2(self.IDBoss_6, 120, -1,unpack(self.ViTriBoss_1[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(self.IDBoss_7, 120, -1,unpack(self.ViTriBoss_2[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(self.IDBoss_8, 120, -1,unpack(self.ViTriBoss_3[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(self.IDBoss_9, 120, -1,unpack(self.ViTriBoss_4[nRand_ViTri4]));
local pNpc1	= KNpc.Add2(self.IDBoss_10, 120, -1,unpack(self.ViTriBoss_5[nRand_ViTri5]));

local szMsg = "<color=yellow><color=cyan>Phù Đồ Cổ Thành-Tân Thủ<color> xuất hiện Võ Lâm Cao Thủ:\n<color=green>Thần Thương Phương Vãn\nTriệu Ứng Tiên\nHương Ngọc Tiên\nMan Tăng Bất Giới Hòa Thượng\nNam Quách Nho<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function BossTanThu:TanThu_AddBoss_95()		
	
local nRand_ViTri1 = MathRandom(1,#self.ViTriBoss_1)--Boss Tân Thủ 55 
local nRand_ViTri2 = MathRandom(1,#self.ViTriBoss_2)--Boss Tân Thủ 55 
local nRand_ViTri3 = MathRandom(1,#self.ViTriBoss_3)--Boss Tân Thủ 55 
local nRand_ViTri4 = MathRandom(1,#self.ViTriBoss_4)--Boss Tân Thủ 55 
local nRand_ViTri5 = MathRandom(1,#self.ViTriBoss_5)--Boss Tân Thủ 55 


local pNpc1	= KNpc.Add2(self.IDBoss_11, 120, -1,unpack(self.ViTriBoss_1[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(self.IDBoss_12, 120, -1,unpack(self.ViTriBoss_2[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(self.IDBoss_13, 120, -1,unpack(self.ViTriBoss_3[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(self.IDBoss_14, 120, -1,unpack(self.ViTriBoss_4[nRand_ViTri4]));
local pNpc1	= KNpc.Add2(self.IDBoss_15, 120, -1,unpack(self.ViTriBoss_5[nRand_ViTri5]));

local szMsg = "<color=yellow><color=cyan>Phù Đồ Cổ Thành-Tân Thủ<color> xuất hiện Võ Lâm Cao Thủ:\n<color=green>Như Tiểu Thúy\nTrương Thiện Đức\nGiả Dật Sơn\nÔ Sơn Thành\nTrần Vô Mệnh<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Xóa Boss--
function BossTanThu:Delete_BossTanThu()

ClearMapNpcWithName(self.IdMap_TanThu, "Hình Bổ Đầu");
ClearMapNpcWithName(self.IdMap_TanThu, "Vạn Lão Điên");
ClearMapNpcWithName(self.IdMap_TanThu, "Cao Sĩ Hiền");
ClearMapNpcWithName(self.IdMap_TanThu, "Thác Bạt Sơn Uyên");
ClearMapNpcWithName(self.IdMap_TanThu, "Dương Liễu");
ClearMapNpcWithName(self.IdMap_TanThu, "Thần Thương Phương Vãn");
ClearMapNpcWithName(self.IdMap_TanThu, "Triệu Ứng Tiên");
ClearMapNpcWithName(self.IdMap_TanThu, "Hương Ngọc Tiên");
ClearMapNpcWithName(self.IdMap_TanThu, "Man Tăng Bất Giới Hòa Thượng");
ClearMapNpcWithName(self.IdMap_TanThu, "Nam Quách Nho");
ClearMapNpcWithName(self.IdMap_TanThu, "Như Tiểu Thúy");
ClearMapNpcWithName(self.IdMap_TanThu, "Trương Thiện Đức");
ClearMapNpcWithName(self.IdMap_TanThu, "Giả Dật Sơn");
ClearMapNpcWithName(self.IdMap_TanThu, "Ô Sơn Thành");
ClearMapNpcWithName(self.IdMap_TanThu, "Trần Vô Mệnh");
end
