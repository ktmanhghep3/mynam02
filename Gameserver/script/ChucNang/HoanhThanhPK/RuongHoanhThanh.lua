local tbNpc = Npc:GetClass("RuongHoanhThanh");

function tbNpc:OnDialog()
	local tbEvent = 
	{
		Player.ProcessBreakEvent.emEVENT_MOVE,
		Player.ProcessBreakEvent.emEVENT_ATTACK,
		Player.ProcessBreakEvent.emEVENT_SITE,
		Player.ProcessBreakEvent.emEVENT_USEITEM,
		Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
		Player.ProcessBreakEvent.emEVENT_DROPITEM,
		Player.ProcessBreakEvent.emEVENT_SENDMAIL,
		Player.ProcessBreakEvent.emEVENT_TRADE,
		Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
		Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
		Player.ProcessBreakEvent.emEVENT_DEATH,
		Player.ProcessBreakEvent.emEVENT_ATTACKED,
	}
    GeneralProcess:StartProcess("<color=green>Đang mở Dị Bảo...<color>", 16 * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local pNpc = KNpc.GetById(nNpcId);
pNpc.Delete();

-- Phần thưởng cố định--
me.AddStackItem(18,1,3941,3,nil,1);--Mảnh Hiệp Khách (Chưa Giám Định)

---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 1000);
	local tbRate = {105,85,55,125,95,78,155,85,22,22,22,22,22,22,22,8,8,25,10,8,4};
	local tbAward = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};

	for i = 1, 21 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
me.AddStackItem(18,1,3006,1,nil,100);--Bí Ẩn Sát Thần
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 100 ~ Bí Ẩn Sát Thần<color><color>");	

	elseif (tbAward[nIndex]==2) then
me.AddStackItem(18,1,3006,2,nil,50);--Chiến Tích Phù Văn
--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 50 ~ Chiến Tích Phù Văn<color><color>");	

	elseif (tbAward[nIndex]==3) then
me.AddStackItem(18,1,3006,3,nil,50);--Hiệp Nghĩa Tửu
--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
local nMapId,nX,nY = me.GetWorldPos();
local szMsg = string.format("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 50 ~ Hiệp Nghĩa Tửu<color><color>");
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 50 ~ Hiệp Nghĩa Tửu<color><color>");	
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
self:BroadCast(szMsg);

	elseif (tbAward[nIndex]==4) then
me.AddStackItem(18,1,3006,4,nil,50);--Thần Binh Phổ
me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 50 ~ Thần Binh Phổ<color><color>");	

	elseif (tbAward[nIndex]==5) then
me.AddStackItem(18,1,1331,3,nil,20);--Tinh Thạch Đoạn Hải
--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 20 ~ Tinh Thạch Đoạn Hải<color><color>");	

	elseif (tbAward[nIndex]==6) then
me.AddStackItem(18,1,1331,4,nil,5);--Tinh Thạch Thánh Hỏa
me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 5 ~ Tinh Thạch Thánh Hỏa<color><color>");	

	elseif (tbAward[nIndex]==7) then
me.AddStackItem(18,1,3001,1,nil,50);--Lệnh Bài Sát Thần PK
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 50 ~ Lệnh Bài Sát Thần PK<color><color>");	

	elseif (tbAward[nIndex]==8) then
me.AddStackItem(18,1,3010,1,nil,4);--Lục bảo
me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 4 ~ Lục bảo<color><color>");	

	elseif (tbAward[nIndex]==9) then
local pItem = me.AddItem(1,24,8,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==10) then
local pItem = me.AddItem(1,24,9,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==11) then
local pItem = me.AddItem(1,24,10,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==12) then
local pItem = me.AddItem(1,24,11,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==13) then
local pItem = me.AddItem(1,24,12,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==14) then
local pItem = me.AddItem(1,24,13,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==15) then
local pItem = me.AddItem(1,24,14,1);--[Chân Nguyên Hoành Thành]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==16) then
local pItem = me.AddItem(1,24,15,1);--Bách Lý Trúc Đan [Nội khí]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==17) then
local pItem = me.AddItem(1,24,16,1);--Bách Lý Cơ Long [Ngoại khí]
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==18) then
local pItem = me.AddItem(18,1,3009,1);--Tuyệt Kỹ Trấn Phái Cấp 2-Vĩnh Viễn
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==19) then
local pItem = me.AddItem(18,1,3019,1);--Tuyệt Kỹ Trấn Phái Cấp 3-Vĩnh Viễn
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==20) then
local pItem = me.AddItem(18,1,3020,1);--Tuyệt Kỹ Trấn Phái Cấp 4-Vĩnh Viễn
local nMapId,nX,nY = me.GetWorldPos();
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==21) then
local pItem = me.AddItem(18,1,3021,1);--Tuyệt Kỹ Trấn Phái Cấp 5-Vĩnh Viễn
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow><color=Turquoise>"..me.szName.."<color> đã mở thành công <color=pink>Rương Dị Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nNhận được phần thưởng ngẫu nhiên<color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	


	end

return 0;
end  