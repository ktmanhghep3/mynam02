if not MODULE_GAMESERVER then
    return;
end

--ĐÔNG HẠ LAN SƠN--
KhacDiMon.IdMap_DongHaLanSon = 2105;

KhacDiMon.Id_HoaTru = 8040;

--Vị trí Boss ra
KhacDiMon.ViTriHoaTru_1 =
{
{KhacDiMon.IdMap_DongHaLanSon,1543,2946,},
{KhacDiMon.IdMap_DongHaLanSon,1536,3044,},
{KhacDiMon.IdMap_DongHaLanSon,1604,3064,},
{KhacDiMon.IdMap_DongHaLanSon,1569,3070,},
{KhacDiMon.IdMap_DongHaLanSon,1569,3174,},
}

KhacDiMon.ViTriHoaTru_2 =
{
{KhacDiMon.IdMap_DongHaLanSon,1618,3144,},
{KhacDiMon.IdMap_DongHaLanSon,1609,3258,},
{KhacDiMon.IdMap_DongHaLanSon,1669,3207,},
{KhacDiMon.IdMap_DongHaLanSon,1731,3183,},
{KhacDiMon.IdMap_DongHaLanSon,1693,3137,},
}

KhacDiMon.ViTriHoaTru_3 =
{
{KhacDiMon.IdMap_DongHaLanSon,1647,3068,},
{KhacDiMon.IdMap_DongHaLanSon,1621,3004,},
{KhacDiMon.IdMap_DongHaLanSon,1763,3232,},
{KhacDiMon.IdMap_DongHaLanSon,1804,3303,},
{KhacDiMon.IdMap_DongHaLanSon,1823,3223,},
}

KhacDiMon.ViTriHoaTru_4 =
{
{KhacDiMon.IdMap_DongHaLanSon,1842,3027,},
{KhacDiMon.IdMap_DongHaLanSon,1911,3036,},
{KhacDiMon.IdMap_DongHaLanSon,1879,2963,},
{KhacDiMon.IdMap_DongHaLanSon,1877,2902,},
{KhacDiMon.IdMap_DongHaLanSon,1831,2888,},
}

KhacDiMon.ViTriHoaTru_5 =
{
{KhacDiMon.IdMap_DongHaLanSon,1825,2850,},
{KhacDiMon.IdMap_DongHaLanSon,1778,2816,},
{KhacDiMon.IdMap_DongHaLanSon,1746,2829,},
{KhacDiMon.IdMap_DongHaLanSon,1708,2862,},
{KhacDiMon.IdMap_DongHaLanSon,1718,2916,},
}

KhacDiMon.ViTriHoaTru_6 =
{
{KhacDiMon.IdMap_DongHaLanSon,1825,2850,},
{KhacDiMon.IdMap_DongHaLanSon,1778,2816,},
{KhacDiMon.IdMap_DongHaLanSon,1746,2829,},
{KhacDiMon.IdMap_DongHaLanSon,1708,2862,},
{KhacDiMon.IdMap_DongHaLanSon,1718,2916,},
}

KhacDiMon.ViTriHoaTru_7 =
{
{KhacDiMon.IdMap_DongHaLanSon,1758,2940,},
{KhacDiMon.IdMap_DongHaLanSon,1778,3016,},
{KhacDiMon.IdMap_DongHaLanSon,1801,3075,},
{KhacDiMon.IdMap_DongHaLanSon,1767,3150,},
{KhacDiMon.IdMap_DongHaLanSon,1743,3090,},
}

KhacDiMon.ViTriHoaTru_8 =
{
{KhacDiMon.IdMap_DongHaLanSon,1726,3044,},
{KhacDiMon.IdMap_DongHaLanSon,1701,3002,},
{KhacDiMon.IdMap_DongHaLanSon,1657,2998,},
{KhacDiMon.IdMap_DongHaLanSon,1665,2948,},
{KhacDiMon.IdMap_DongHaLanSon,1613,2880,},
{KhacDiMon.IdMap_DongHaLanSon,1520,2929,},
}




--Add Boss--
function KhacDiMon:Call_ChiNgaoHoaTru()		
    local nMapIndex = SubWorldID2Idx(2105);	-- check ID map
    if nMapIndex < 0 then
        return;
    end
	
local nRand_ViTri1 = MathRandom(1,#self.ViTriHoaTru_1)
local nRand_ViTri2 = MathRandom(1,#self.ViTriHoaTru_2)
local nRand_ViTri3 = MathRandom(1,#self.ViTriHoaTru_3)
local nRand_ViTri4 = MathRandom(1,#self.ViTriHoaTru_4)

local nRand_ViTri5 = MathRandom(1,#self.ViTriHoaTru_5)
local nRand_ViTri6 = MathRandom(1,#self.ViTriHoaTru_6)
local nRand_ViTri7 = MathRandom(1,#self.ViTriHoaTru_7)
local nRand_ViTri8 = MathRandom(1,#self.ViTriHoaTru_8)

local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_1[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_2[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_3[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_4[nRand_ViTri4]));

local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_5[nRand_ViTri5]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_6[nRand_ViTri6]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_7[nRand_ViTri7]));
local pNpc1	= KNpc.Add2(self.Id_HoaTru, 120, -1,unpack(self.ViTriHoaTru_8[nRand_ViTri8]));

local szMsg = "<color=yellow>8 Chi Ngạo Hỏa Trụ đã lần lượt xuất hiện tại các vị trí Ngẫu nhiên ở Đông Hạ Lan Sơn, nhân sĩ hào kiệt nhanh chóng đi tìm đừng bỏ lỡ vận may của mình!<color>";
GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);

end

--Xóa Hỏa Trụ và Boss Trong Đông Hạ Lan Sơn Theo khung giờ: 16h00-18h59-21h00-23h00--
function KhacDiMon:Delete_HoaTru()
    local nMapIndex = SubWorldID2Idx(2105);	-- check ID map
    if nMapIndex < 0 then
        return;
    end

--ResetMapNpc(self.IdMap_DongHaLanSon); --RESET ALL BOSS/NPC ADD = CSRIPT TRONG MAP
ClearMapNpcWithName(self.IdMap_DongHaLanSon, "Chi Ngạo Hỏa Trụ");
end
--ĐÔNG HẠ LAN SƠN--


--LONG HỒN BÍ BẢO--
KhacDiMon.IdMap_LongHonBiBao = 2107;

KhacDiMon.IDRuong_1 = 8043;
KhacDiMon.IDRuong_2 = 8044;
KhacDiMon.IDRuong_3 = 8045;
KhacDiMon.IDRuong_4 = 8046;
KhacDiMon.IDRuong_5 = 8047;

KhacDiMon.ID_Ruong =
{
{KhacDiMon.IDRuong_1},
{KhacDiMon.IDRuong_2},
{KhacDiMon.IDRuong_3},
{KhacDiMon.IDRuong_4},
{KhacDiMon.IDRuong_5},
}

--Vị trí Boss ra
KhacDiMon.ViTriRuong_1 =
{
{KhacDiMon.IdMap_LongHonBiBao,1829,3736,},
{KhacDiMon.IdMap_LongHonBiBao,1783,3708,},
{KhacDiMon.IdMap_LongHonBiBao,1747,3726,},
{KhacDiMon.IdMap_LongHonBiBao,1774,3749,},
{KhacDiMon.IdMap_LongHonBiBao,1750,3792,},
}

KhacDiMon.ViTriRuong_2 =
{
{KhacDiMon.IdMap_LongHonBiBao,1720,3750,},
{KhacDiMon.IdMap_LongHonBiBao,1760,3664,},
{KhacDiMon.IdMap_LongHonBiBao,1831,3676,},
{KhacDiMon.IdMap_LongHonBiBao,1850,3624,},
{KhacDiMon.IdMap_LongHonBiBao,1898,3575,},
}

KhacDiMon.ViTriRuong_3 =
{
{KhacDiMon.IdMap_LongHonBiBao,1918,3570,},
{KhacDiMon.IdMap_LongHonBiBao,1932,3601,},
{KhacDiMon.IdMap_LongHonBiBao,1986,3536,},
{KhacDiMon.IdMap_LongHonBiBao,1975,3503,},
{KhacDiMon.IdMap_LongHonBiBao,1928,3475,},
}

KhacDiMon.ViTriRuong_4 =
{
{KhacDiMon.IdMap_LongHonBiBao,1882,3472,},
{KhacDiMon.IdMap_LongHonBiBao,1837,3444,},
{KhacDiMon.IdMap_LongHonBiBao,1800,3423,},
{KhacDiMon.IdMap_LongHonBiBao,1798,3458,},
{KhacDiMon.IdMap_LongHonBiBao,1786,3470,},
}

KhacDiMon.ViTriRuong_5 =
{
{KhacDiMon.IdMap_LongHonBiBao,1802,3532,},
{KhacDiMon.IdMap_LongHonBiBao,1816,3549,},
{KhacDiMon.IdMap_LongHonBiBao,1802,3573,},
{KhacDiMon.IdMap_LongHonBiBao,1824,3595,},
{KhacDiMon.IdMap_LongHonBiBao,1830,3580,},
}

KhacDiMon.ViTriRuong_6 =
{
{KhacDiMon.IdMap_LongHonBiBao,1776,3613,},
{KhacDiMon.IdMap_LongHonBiBao,1751,3583,},
{KhacDiMon.IdMap_LongHonBiBao,1730,3630,},
{KhacDiMon.IdMap_LongHonBiBao,1714,3658,},
{KhacDiMon.IdMap_LongHonBiBao,1690,3669,},
}

KhacDiMon.ViTriRuong_7 =
{
{KhacDiMon.IdMap_LongHonBiBao,1683,3690,},
{KhacDiMon.IdMap_LongHonBiBao,1678,3721,},
{KhacDiMon.IdMap_LongHonBiBao,1670,3624,},
{KhacDiMon.IdMap_LongHonBiBao,1681,3609,},
{KhacDiMon.IdMap_LongHonBiBao,1678,3594,},
}

KhacDiMon.ViTriRuong_8 =
{
{KhacDiMon.IdMap_LongHonBiBao,1693,3587,},
{KhacDiMon.IdMap_LongHonBiBao,1722,3568,},
{KhacDiMon.IdMap_LongHonBiBao,1666,3605,},
{KhacDiMon.IdMap_LongHonBiBao,1646,3631,},
{KhacDiMon.IdMap_LongHonBiBao,1627,3622,},
}

KhacDiMon.ViTriRuong_9 =
{
{KhacDiMon.IdMap_LongHonBiBao,1632,3593,},
{KhacDiMon.IdMap_LongHonBiBao,1629,3575,},
{KhacDiMon.IdMap_LongHonBiBao,1644,3532,},
{KhacDiMon.IdMap_LongHonBiBao,1677,3540,},
{KhacDiMon.IdMap_LongHonBiBao,1640,3512,},
}

KhacDiMon.ViTriRuong_10 =
{
{KhacDiMon.IdMap_LongHonBiBao,1667,3515,},
{KhacDiMon.IdMap_LongHonBiBao,1679,3489,},
{KhacDiMon.IdMap_LongHonBiBao,1711,3486,},
{KhacDiMon.IdMap_LongHonBiBao,1714,3467,},
{KhacDiMon.IdMap_LongHonBiBao,1734,3493,},
}

KhacDiMon.ViTriRuong_11 =
{
{KhacDiMon.IdMap_LongHonBiBao,1682,3423,},
{KhacDiMon.IdMap_LongHonBiBao,1663,3396,},
{KhacDiMon.IdMap_LongHonBiBao,1704,3362,},
{KhacDiMon.IdMap_LongHonBiBao,1704,3321,},
{KhacDiMon.IdMap_LongHonBiBao,1675,3319,},
}

KhacDiMon.ViTriRuong_12 =
{
{KhacDiMon.IdMap_LongHonBiBao,1684,3336,},
{KhacDiMon.IdMap_LongHonBiBao,1634,3361,},
{KhacDiMon.IdMap_LongHonBiBao,1628,3335,},
{KhacDiMon.IdMap_LongHonBiBao,1645,3371,},
{KhacDiMon.IdMap_LongHonBiBao,1736,3302,},
}

KhacDiMon.ViTriRuong_13 =
{
{KhacDiMon.IdMap_LongHonBiBao,1727,3322,},
{KhacDiMon.IdMap_LongHonBiBao,1745,3323,},
{KhacDiMon.IdMap_LongHonBiBao,1739,3348,},
{KhacDiMon.IdMap_LongHonBiBao,1824,3353,},
{KhacDiMon.IdMap_LongHonBiBao,1810,3320,},
}

KhacDiMon.ViTriRuong_14 =
{
{KhacDiMon.IdMap_LongHonBiBao,1780,3306,},
{KhacDiMon.IdMap_LongHonBiBao,1808,3269,},
{KhacDiMon.IdMap_LongHonBiBao,1796,3272,},
{KhacDiMon.IdMap_LongHonBiBao,1839,3282,},
{KhacDiMon.IdMap_LongHonBiBao,1861,3262,},
}

KhacDiMon.ViTriRuong_15 =
{
{KhacDiMon.IdMap_LongHonBiBao,1860,3290,},
{KhacDiMon.IdMap_LongHonBiBao,1846,3322,},
{KhacDiMon.IdMap_LongHonBiBao,1876,3313,},
{KhacDiMon.IdMap_LongHonBiBao,1776,3220,},
{KhacDiMon.IdMap_LongHonBiBao,1848,3342,},
}

KhacDiMon.ViTriRuong_16 =
{
{KhacDiMon.IdMap_LongHonBiBao,1855,3405,},
{KhacDiMon.IdMap_LongHonBiBao,1835,3387,},
{KhacDiMon.IdMap_LongHonBiBao,1811,3334,},
{KhacDiMon.IdMap_LongHonBiBao,1778,3341,},
{KhacDiMon.IdMap_LongHonBiBao,1756,3374,},
}

KhacDiMon.ViTriRuong_17 =
{
{KhacDiMon.IdMap_LongHonBiBao,1780,3431,},
{KhacDiMon.IdMap_LongHonBiBao,1837,3488,},
{KhacDiMon.IdMap_LongHonBiBao,1847,3575,},
{KhacDiMon.IdMap_LongHonBiBao,1825,3653,},
{KhacDiMon.IdMap_LongHonBiBao,1753,3673,},
}

KhacDiMon.ViTriRuong_18 =
{
{KhacDiMon.IdMap_LongHonBiBao,1730,3737,},
{KhacDiMon.IdMap_LongHonBiBao,1717,3759,},
{KhacDiMon.IdMap_LongHonBiBao,1835,3711,},
{KhacDiMon.IdMap_LongHonBiBao,1838,3752,},
{KhacDiMon.IdMap_LongHonBiBao,1815,3769,},
}

KhacDiMon.ViTriRuong_19 =
{
{KhacDiMon.IdMap_LongHonBiBao,1648,3343,},
{KhacDiMon.IdMap_LongHonBiBao,1712,3347,},
{KhacDiMon.IdMap_LongHonBiBao,1727,3379,},
{KhacDiMon.IdMap_LongHonBiBao,1764,3361,},
{KhacDiMon.IdMap_LongHonBiBao,1796,3379,},
}

KhacDiMon.ViTriRuong_20 =
{
{KhacDiMon.IdMap_LongHonBiBao,1788,3391,},
{KhacDiMon.IdMap_LongHonBiBao,1804,3412,},
{KhacDiMon.IdMap_LongHonBiBao,1812,3407,},
{KhacDiMon.IdMap_LongHonBiBao,1857,3474,},
{KhacDiMon.IdMap_LongHonBiBao,1872,3480,},
}

--Add Boss--
function KhacDiMon:Add_LongHonBiBao()		
	
local nRand_ViTri1 = MathRandom(1,#self.ViTriRuong_1)
local nRand_ViTri2 = MathRandom(1,#self.ViTriRuong_2)
local nRand_ViTri3 = MathRandom(1,#self.ViTriRuong_3)
local nRand_ViTri4 = MathRandom(1,#self.ViTriRuong_4)
local nRand_ViTri5 = MathRandom(1,#self.ViTriRuong_5)
local nRand_ViTri6 = MathRandom(1,#self.ViTriRuong_6)
local nRand_ViTri7 = MathRandom(1,#self.ViTriRuong_7)
local nRand_ViTri8 = MathRandom(1,#self.ViTriRuong_8)
local nRand_ViTri9 = MathRandom(1,#self.ViTriRuong_9)
local nRand_ViTri10 = MathRandom(1,#self.ViTriRuong_10)
local nRand_ViTri11 = MathRandom(1,#self.ViTriRuong_11)
local nRand_ViTri12 = MathRandom(1,#self.ViTriRuong_12)
local nRand_ViTri13 = MathRandom(1,#self.ViTriRuong_13)
local nRand_ViTri14 = MathRandom(1,#self.ViTriRuong_14)
local nRand_ViTri15 = MathRandom(1,#self.ViTriRuong_15)
local nRand_ViTri16 = MathRandom(1,#self.ViTriRuong_16)
local nRand_ViTri17 = MathRandom(1,#self.ViTriRuong_17)
local nRand_ViTri18 = MathRandom(1,#self.ViTriRuong_18)
local nRand_ViTri19 = MathRandom(1,#self.ViTriRuong_19)
local nRand_ViTri20 = MathRandom(1,#self.ViTriRuong_20)

local nRand_ID_Ruong1 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong2 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong3 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong4 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong5 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong6 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong7 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong8 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong9 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong10 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong11 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong12 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong13 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong14 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong15 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong16 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong17 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong18 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong19 = MathRandom(1,#self.ID_Ruong)
local nRand_ID_Ruong20 = MathRandom(1,#self.ID_Ruong)


local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong1]), 120, -1,unpack(self.ViTriRuong_1[nRand_ViTri1]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong2]), 120, -1,unpack(self.ViTriRuong_2[nRand_ViTri2]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong3]), 120, -1,unpack(self.ViTriRuong_3[nRand_ViTri3]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong4]), 120, -1,unpack(self.ViTriRuong_4[nRand_ViTri4]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong5]), 120, -1,unpack(self.ViTriRuong_5[nRand_ViTri5]));

local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong6]), 120, -1,unpack(self.ViTriRuong_6[nRand_ViTri6]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong7]), 120, -1,unpack(self.ViTriRuong_7[nRand_ViTri7]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong8]), 120, -1,unpack(self.ViTriRuong_8[nRand_ViTri8]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong9]), 120, -1,unpack(self.ViTriRuong_9[nRand_ViTri9]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong10]), 120, -1,unpack(self.ViTriRuong_10[nRand_ViTri10]));

local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong11]), 120, -1,unpack(self.ViTriRuong_11[nRand_ViTri11]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong12]), 120, -1,unpack(self.ViTriRuong_12[nRand_ViTri12]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong13]), 120, -1,unpack(self.ViTriRuong_13[nRand_ViTri13]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong14]), 120, -1,unpack(self.ViTriRuong_14[nRand_ViTri14]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong15]), 120, -1,unpack(self.ViTriRuong_15[nRand_ViTri15]));

local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong16]), 120, -1,unpack(self.ViTriRuong_16[nRand_ViTri16]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong17]), 120, -1,unpack(self.ViTriRuong_17[nRand_ViTri17]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong18]), 120, -1,unpack(self.ViTriRuong_18[nRand_ViTri18]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong19]), 120, -1,unpack(self.ViTriRuong_19[nRand_ViTri19]));
local pNpc1	= KNpc.Add2(unpack(self.ID_Ruong[nRand_ID_Ruong20]), 120, -1,unpack(self.ViTriRuong_20[nRand_ViTri20]));

end


--Xóa Bí Bảo-Theo khung giờ: 00h58-01h58-02h58-03h58-04h58-05h58-06h58-07h58-08h58-09h58-10h58-12h58-13h58-14h58-15h58-16h58-17h58-18h58-19h58-20h58-21h58-22h58-23h58--
function KhacDiMon:Xoa_LongHonBiBao()
    local nMapIndex = SubWorldID2Idx(2107);	-- check ID map
    if nMapIndex < 0 then
        return;
    end

--ResetMapNpc(self.IdMap_DongHaLanSon); --RESET ALL BOSS/NPC ADD = CSRIPT TRONG MAP
--ResetMapNpc(2107); --RESET ALL BOSS

ClearMapNpcWithName(self.IdMap_LongHonBiBao, "Long Hồn Bí Bảo");


end
--LONG HỒN BÍ BẢO--



--Reset Task Chung Server--
function KhacDiMon:Reset_TaskChungKDM()
local szHistory = "\\script\\boss\\KhacDiMon\\npc\\Log_AnhHung.txt";
KFile.WriteFile(szHistory, "TenNhanVat\tThoiGian\n");	
local szHistory_THCL = "\\script\\boss\\KhacDiMon\\npc\\Log_TrieuHoi_ThaiHuCoLong.txt";
KFile.WriteFile(szHistory_THCL, "TenNhanVat\tThoiGian\n");	

KGblTask.SCSetDbTaskInt(DBTASD_GIOIHANADDHOATRUKDM, 0);
KGblTask.SCSetDbTaskInt(DBTASD_ADDBOSS_THAIHUCOLONG, 0);
KGblTask.SCSetDbTaskInt(DBTASD_SKINBOSS_THAIHUCOLONG, 0);
KGblTask.SCSetDbTaskInt(DBTASD_TIME_GOI_THAIHUCOLONG, 0);
end
