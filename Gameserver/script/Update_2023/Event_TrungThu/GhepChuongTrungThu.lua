local tbGhepChuongVang = {};
SpecialEvent.GhepChuongEvent = tbGhepChuongVang;


tbGhepChuongVang.TASK_GROUP = 4009;
tbGhepChuongVang.TASK_ID = 1;	--Tính số Chuông đã ghép

tbGhepChuongVang.Task_EventTT = 4010;
tbGhepChuongVang.ID_EventTT = 1;	--Tính số Event Trăng tròn đã dùng(mốc)

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 15},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 5},--Ngôi Sao May Mắn
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 45},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 15},--Ngôi Sao May Mắn
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 75},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 25},--Ngôi Sao May Mắn
	},
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 150},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 50},--Ngôi Sao May Mắn
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 300},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 100},--Ngôi Sao May Mắn
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3004,1),}, 600},--Mảnh Chuông Vàng
		{{string.format("%s,%s,%s,%s", 18,1,3004,2),}, 200},--Ngôi Sao May Mắn
	},

};

function tbGhepChuongVang:OnDialog()
	local szMsg = "<bclr=0,0,200><color=white>Event Trung Thu\nHãy lựa chọn:<color>";
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Ghép 5 Chuông Vàng", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>Ghép 15 Chuông Vàng", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>Ghép 25 Chuông Vàng", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>Ghép 50 Chuông Vàng", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<color=yellow>Ghép 100 Chuông Vàng", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<color=yellow>Ghép 200 Chuông Vàng", self.LuaChon, self, 6});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbGhepChuongVang:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Event Trung Thu:<color>";
	if (nValue == 1) then
		szMsg = "<color=yellow>Ghép 5 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 15 Mảnh Chuông Vàng.\n- 5 Ngôi Sao May Mắn.\n<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=yellow>Ghép 15 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 45 Mảnh Chuông Vàng.\n- 15 Ngôi Sao May Mắn.\n<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=yellow>Ghép 25 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 75 Mảnh Chuông Vàng.\n- 25 Ngôi Sao May Mắn.\n<color>";
	end;
	if (nValue == 4) then
		szMsg = "<color=yellow>Ghép 50 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 150 Mảnh Chuông Vàng.\n- 50 Ngôi Sao May Mắn.\n<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=yellow>Ghép 100 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 300 Mảnh Chuông Vàng.\n- 100 Ngôi Sao May Mắn.\n<color>";
	end;
	if (nValue == 6) then
		szMsg = "<color=yellow>Ghép 200 Chuông Vàng:<color>\n<color=green>Đặt vào:\n<color=lightgreen>- 600 Mảnh Chuông Vàng.\n- 200 Ngôi Sao May Mắn.\n<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbGhepChuongVang:OnOpenGiftOk(nValue, tbGhepChuongVangObj)
	local tbGhepChuongVangList	= {};
	for _, pItem in pairs(tbGhepChuongVangObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbGhepChuongVangList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbGhepChuongVangList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbGhepChuongVangObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nChuong = 5;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local nSoLanSD2 = me.GetTask(self.TASK_GROUP, self.TASK_ID); 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD2.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD2.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		local nChuong = 15;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		local nChuong = 25;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
end

	if (nValue == 4) then
		local nChuong = 50;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
end

	if (nValue == 5) then
		local nChuong = 100;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
end

	if (nValue == 6) then
		local nChuong = 200;
		me.AddStackItem(18,1,3338,7,{bForceBind=1,},nChuong);--Chuông Vàng Trung Thu
		local nSoLanSD = me.GetTask(self.TASK_GROUP, self.TASK_ID);
		me.SetTask(self.TASK_GROUP, self.TASK_ID,nSoLanSD + nChuong);
		
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.MsgToGlobal("<color=yellow><color=green>"..me.szName.."<color> Ghép thành công <color=red>"..nChuong.."<color> Chuông Vàng, tổng số Chuông Vàng đã ghép của Đại hiệp này là: <color=cyan>"..nSoLanSD.."<color> xin chúc mừng<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
end
	
end;

function tbGhepChuongVang:ChechItem(pItem, tbGhepChuongVangList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbGhepChuongVangList do
		local tbI = tbGhepChuongVangList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;