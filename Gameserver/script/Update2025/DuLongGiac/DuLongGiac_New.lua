if not MODULE_GAMESERVER then
    return;
end

--Add Boss--
function DuLongGiacNew:Add_DuLongNew()
	
		local pNpc1 = KNpc.Add2(8181, 120, 1,1538,1727,3445);--Boss 1		
		local pNpc1 = KNpc.Add2(8182, 120, 2,1538,1727,3433);--Boss 2
		local pNpc1 = KNpc.Add2(8183, 120, 3,1538,1727,3457);--Boss 3
		local pNpc1 = KNpc.Add2(8184, 120, 4,1538,1715,3445);--Boss 4
		local pNpc1 = KNpc.Add2(8185, 120, 5,1538,1738,3445);--Boss 5

		
		local szMsg = "<bclr=0,0,200><color=white>Thiên tượng dị biến. Tần Lăng 3 đã xuất hiện Ngũ Hành Hộ Vệ:\nKim Hộ Vệ\nMộc Hộ Vệ\nThủy Hộ Vệ\nHỏa Hộ Vệ\nThổ Hộ Vệ\nTrận chiến khuynh đảo sắp bắt đầu!";
		GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

end

--Xóa Boss--
function DuLongGiacNew:Dell_BossDuLong()

ClearMapNpcWithName(1538, "Kim Hộ Vệ");
ClearMapNpcWithName(1538, "Mộc Hộ Vệ");
ClearMapNpcWithName(1538, "Thủy Hộ Vệ");
ClearMapNpcWithName(1538, "Hỏa Hộ Vệ");
ClearMapNpcWithName(1538, "Thổ Hộ Vệ");

ClearMapNpcWithName(1538, "Cô Ảnh Tần Vương");
ClearMapNpcWithName(1538, "Thiên Cổ Tần Vương");
end
