local tbTrangTri_BachKim = {};
SpecialEvent.TrangTri_BachKim = tbTrangTri_BachKim;

tbTrangTri_BachKim.TaskGroup_DiemBachKim = 4510; --Điểm Bạch Kim
tbTrangTri_BachKim.TaskID_DiemBachKim = 1;

tbTrangTri_BachKim.Moc_1 = 10;
tbTrangTri_BachKim.Moc_2 = 20;
tbTrangTri_BachKim.Moc_3 = 30;
tbTrangTri_BachKim.Moc_4 = 50;
tbTrangTri_BachKim.Moc_5 = 100;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3964,1),}, tbTrangTri_BachKim.Moc_1},--Bạch Kim
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3964,1),}, tbTrangTri_BachKim.Moc_2},--Bạch Kim
	},

	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3964,1),}, tbTrangTri_BachKim.Moc_3},--Bạch Kim
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3964,1),}, tbTrangTri_BachKim.Moc_4},--Bạch Kim
	},
	
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3964,1),}, tbTrangTri_BachKim.Moc_5},--Bạch Kim
	},
};

function tbTrangTri_BachKim:OnDialog()
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
local szMsg = 
"<bclr=0,0,200><color=white>Trang trí Bạch Kim - Sự kiện Noel 2024:<color>\n"..
"Bạch Kim đã Trang trí: <color=cyan>"..Diem_BachKim.."<color>\n"
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<bclr=0,0,200><color=white>Trang trí "..self.Moc_1.." Bạch Kim", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<bclr=0,0,200><color=white>Trang trí "..self.Moc_2.." Bạch Kim", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<bclr=0,0,200><color=white>Trang trí "..self.Moc_3.." Bạch Kim", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<bclr=0,0,200><color=white>Trang trí "..self.Moc_4.." Bạch Kim", self.LuaChon, self, 4});
	table.insert(tbOpt, 5, {"<bclr=0,0,200><color=white>Trang trí "..self.Moc_5.." Bạch Kim", self.LuaChon, self, 5});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbTrangTri_BachKim:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Trang trí Bạch Kim - Sự kiện Noel 2024:<color>";
	if (nValue == 1) then
		szMsg = "<bclr=0,0,200><color=white>Trang trí ["..self.Moc_1.."] Bạch Kim<color>";
	end;
	if (nValue == 2) then
		szMsg = "<bclr=0,0,200><color=white>Trang trí ["..self.Moc_2.."] Bạch Kim<color>";
	end;
	if (nValue == 3) then
		szMsg = "<bclr=0,0,200><color=white>Trang trí ["..self.Moc_3.."] Bạch Kim<color>";
	end;
	if (nValue == 4) then
		szMsg = "<bclr=0,0,200><color=white>Trang trí ["..self.Moc_4.."] Bạch Kim<color>";
	end;
	if (nValue == 5) then
		szMsg = "<bclr=0,0,200><color=white>Trang trí ["..self.Moc_5.."] Bạch Kim<color>";
	end;

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;



function tbTrangTri_BachKim:OnOpenGiftOk(nValue, tbTrangTri_BachKimObj)
	local Diem_TrangTri = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);
	
	local tbTrangTri_BachKimList	= {};
	for _, pItem in pairs(tbTrangTri_BachKimObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbTrangTri_BachKimList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbTrangTri_BachKimList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbTrangTri_BachKimObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		me.SetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim,Diem_TrangTri + self.Moc_1);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Trang trí thành công <color=red>"..self.Moc_1.."<color> Bạch Kim của Sự Kiện Noel 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		me.SetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim,Diem_TrangTri + self.Moc_2);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Trang trí thành công <color=red>"..self.Moc_2.."<color> Bạch Kim của Sự Kiện Noel 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		me.SetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim,Diem_TrangTri + self.Moc_3);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Trang trí thành công <color=red>"..self.Moc_3.."<color> Bạch Kim của Sự Kiện Noel 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		me.SetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim,Diem_TrangTri + self.Moc_4);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Trang trí thành công <color=red>"..self.Moc_4.."<color> Bạch Kim của Sự Kiện Noel 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 5) then
		me.SetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim,Diem_TrangTri + self.Moc_5);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Trang trí thành công <color=red>"..self.Moc_5.."<color> Bạch Kim của Sự Kiện Noel 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
end;

function tbTrangTri_BachKim:ChechItem(pItem, tbTrangTri_BachKimList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbTrangTri_BachKimList do
		local tbI = tbTrangTri_BachKimList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;