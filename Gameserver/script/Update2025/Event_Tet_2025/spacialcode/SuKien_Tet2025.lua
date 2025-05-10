if not MODULE_GAMESERVER then
    return;
end

--Add Boss--
function Event_Tet2025:Add_BanTiecPhuongTuong()
	
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1760,3536);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1771,3547);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1757,3514);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1773,3495);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1757,3486);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1742,3500);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1728,3516);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1713,3529);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1733,3545);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1785,3585);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1799,3548);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1822,3530);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1835,3511);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1814,3502);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1797,3488);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1783,3470);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1778,3446);--Bàn Tiệc Tân Niên 1
		local pNpc1 = KNpc.Add2(8158, 90, -1,24,1793,3509);--Bàn Tiệc Tân Niên 2
		local pNpc1 = KNpc.Add2(8157, 90, -1,24,1803,3518);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1768,3474);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1771,3512);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1847,3513);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1812,3541);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1799,3530);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1786,3544);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1793,3561);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1764,3562);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1752,3550);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1739,3535);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1724,3529);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1760,3498);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1783,3482);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1828,3477);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1814,3473);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1821,3486);--Bàn Tiệc Tân Niên 2
		local pNpc1= KNpc.Add2(8157, 90, -1,24,1772,3573);--Bàn Tiệc Tân Niên 1
		local pNpc1= KNpc.Add2(8158, 90, -1,24,1744,3477);--Bàn Tiệc Tân Niên 2

		
		local szMsg = "<bclr=0,0,200><color=white>Tiệc Đoàn Viên với nhiều phần thưởng bất ngờ đã chuẩn bị chu toàn ở Phượng Tường, mời các Anh hùng Hảo hữu về tề tựu chúc mừng Tân Niên 2025!";
		GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

end

--Xóa Boss--
function Event_Tet2025:Delete_BanTiecPhuongTuong()

ClearMapNpcWithName(24, "Bàn Tiệc Tân Niên");
end
