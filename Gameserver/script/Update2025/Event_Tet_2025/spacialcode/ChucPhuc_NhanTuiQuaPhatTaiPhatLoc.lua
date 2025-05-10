local tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc = {};
SpecialEvent.ChucPhuc_NhanTuiQuaPhatTaiPhatLoc = tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc;

tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.TaskGroup_PhatTaiPhatLoc = 4518; --Phát Tài Phát Lộc
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.TaskID_PhatTaiPhatLoc = 1;

tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_1 = 10;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_2 = 20;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_3 = 30;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_4 = 50;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_5 = 100;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_6 = 1000;
tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_7 = 2000;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_1},--Tài Lộc
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_2},--Tài Lộc
	},

	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_3},--Tài Lộc
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_4},--Tài Lộc
	},
	
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_5},--Tài Lộc
	},
	
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_6},--Tài Lộc
	},
	
	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,4029,1),}, tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc.Moc_7},--Tài Lộc
	},
	
	
	
};

function tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc:OnDialog()
local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local szMsg = 
"<bclr=0,0,200><color=white>Sự kiện Chúc Phúc VIP: Tài Vận Hanh Thông:<color>\n"..
"Điểm Tài Lộc đã Nộp: <color=cyan>"..Diem_PhatTaiPhatLoc.."<color>\n"..
"Hãy Chuẩn bị kỹ Hành trang trước khi Chúc Phúc!<color>\n"
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_1.." Tài Lộc", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_2.." Tài Lộc", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_3.." Tài Lộc", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_4.." Tài Lộc", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_5.." Tài Lộc", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_6.." Tài Lộc", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<bclr=0,0,200><color=white>Chúc Phúc "..self.Moc_7.." Tài Lộc", self.LuaChon, self, 7});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Sự kiện Chúc Phúc VIP: Tài Vận Hanh Thông:<color>";
	if (nValue == 1) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_1.."] Tài Lộc<color>";
	end;
	if (nValue == 2) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_2.."] Tài Lộc<color>";
	end;
	if (nValue == 3) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_3.."] Tài Lộc<color>";
	end;
	if (nValue == 4) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_4.."] Tài Lộc<color>";
	end;
	if (nValue == 5) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_5.."] Tài Lộc<color>";
	end;
	if (nValue == 6) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_6.."] Tài Lộc<color>";
	end;
	if (nValue == 7) then
		szMsg = "<bclr=0,0,200><color=white>Đặt vào ["..self.Moc_7.."] Tài Lộc<color>";
	end;

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;



function tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc:OnOpenGiftOk(nValue, tbChucPhuc_NhanTuiQuaPhatTaiPhatLocObj)
	local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
	
	local tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList	= {};
	for _, pItem in pairs(tbChucPhuc_NhanTuiQuaPhatTaiPhatLocObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbChucPhuc_NhanTuiQuaPhatTaiPhatLocObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_1);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_1);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_1.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_2);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_2);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_2.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_3);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_3);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_3.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_4);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_4);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_4.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 5) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_5);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_5);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_5.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	
	if (nValue == 6) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_6);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_5);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_6.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 7) then
		me.AddStackItem(18,1,4018,6,{bForceBind=1,},self.Moc_7);
		--me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_5);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_7.."<color> Tài Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	
end;

function tbChucPhuc_NhanTuiQuaPhatTaiPhatLoc:ChechItem(pItem, tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList do
		local tbI = tbChucPhuc_NhanTuiQuaPhatTaiPhatLocList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;