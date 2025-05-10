local tbNopDiem_PhatTaiPhatLoc = {};
SpecialEvent.NopDiem_PhatTaiPhatLoc = tbNopDiem_PhatTaiPhatLoc;

tbNopDiem_PhatTaiPhatLoc.TaskGroup_PhatTaiPhatLoc = 4518; --Phát Tài Phát Lộc
tbNopDiem_PhatTaiPhatLoc.TaskID_PhatTaiPhatLoc = 1;

tbNopDiem_PhatTaiPhatLoc.Moc_1 = 10;
tbNopDiem_PhatTaiPhatLoc.Moc_2 = 20;
tbNopDiem_PhatTaiPhatLoc.Moc_3 = 30;
tbNopDiem_PhatTaiPhatLoc.Moc_4 = 50;
tbNopDiem_PhatTaiPhatLoc.Moc_5 = 100;
tbNopDiem_PhatTaiPhatLoc.Moc_6 = 1000;
tbNopDiem_PhatTaiPhatLoc.Moc_7 = 2000;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_1},--Phát Tài Phát Lộc
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_2},--Phát Tài Phát Lộc
	},

	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_3},--Phát Tài Phát Lộc
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_4},--Phát Tài Phát Lộc
	},
	
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_5},--Phát Tài Phát Lộc
	},
	
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_6},--Phát Tài Phát Lộc
	},
	
	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,4026,1),}, tbNopDiem_PhatTaiPhatLoc.Moc_7},--Phát Tài Phát Lộc
	},
	
	
};

function tbNopDiem_PhatTaiPhatLoc:OnDialog()
local Diem_BachKim = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
local szMsg = 
"<bclr=0,0,200><color=white>Sự kiện VIP: Tài Vận Hanh Thông:<color>\n"..
"Phát Tài Phát Lộc đã Nộp: <color=cyan>"..Diem_BachKim.."<color>\n"
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_1.." Phát Tài Phát Lộc", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_2.." Phát Tài Phát Lộc", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_3.." Phát Tài Phát Lộc", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_4.." Phát Tài Phát Lộc", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_5.." Phát Tài Phát Lộc", self.LuaChon, self, 5});
	table.insert(tbOpt, 6, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_6.." Phát Tài Phát Lộc", self.LuaChon, self, 6});
	table.insert(tbOpt, 7, {"<bclr=0,0,200><color=white>Nộp "..self.Moc_7.." Phát Tài Phát Lộc", self.LuaChon, self, 7});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbNopDiem_PhatTaiPhatLoc:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Sự kiện VIP: Tài Vận Hanh Thông:<color>";
	if (nValue == 1) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_1.."] Phát Tài Phát Lộc<color>";
	end;
	if (nValue == 2) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_2.."] Phát Tài Phát Lộc<color>";
	end;
	if (nValue == 3) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_3.."] Phát Tài Phát Lộc<color>";
	end;
	if (nValue == 4) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_4.."] Phát Tài Phát Lộc<color>";
	end;
	if (nValue == 5) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_5.."] Phát Tài Phát Lộc<color>";
	end;

	if (nValue == 6) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_6.."] Phát Tài Phát Lộc<color>";
	end;
	if (nValue == 7) then
		szMsg = "<bclr=0,0,200><color=white>Nộp ["..self.Moc_7.."] Phát Tài Phát Lộc<color>";
	end;

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;



function tbNopDiem_PhatTaiPhatLoc:OnOpenGiftOk(nValue, tbNopDiem_PhatTaiPhatLocObj)
	local Diem_PhatTaiPhatLoc = me.GetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc);
	
	local tbNopDiem_PhatTaiPhatLocList	= {};
	for _, pItem in pairs(tbNopDiem_PhatTaiPhatLocObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbNopDiem_PhatTaiPhatLocList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbNopDiem_PhatTaiPhatLocList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbNopDiem_PhatTaiPhatLocObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_1);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_1.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_2);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_2.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_3);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_3.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_4);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_4.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 5) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_5);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_5.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	
	if (nValue == 6) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_6);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_6.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 7) then
		me.SetTask(self.TaskGroup_PhatTaiPhatLoc,self.TaskID_PhatTaiPhatLoc,Diem_PhatTaiPhatLoc + self.Moc_7);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Chúc Phúc Thành Công <color=red>"..self.Moc_7.."<color> Phát Tài Phát Lộc của Sự Kiện VIP: Tài Vận Hanh Thông xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	
end;

function tbNopDiem_PhatTaiPhatLoc:ChechItem(pItem, tbNopDiem_PhatTaiPhatLocList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbNopDiem_PhatTaiPhatLocList do
		local tbI = tbNopDiem_PhatTaiPhatLocList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;