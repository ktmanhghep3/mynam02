local tbNop_PhongChu = {};
SpecialEvent.Nop_PhongChu = tbNop_PhongChu;

tbNop_PhongChu.TaskGroup_MocNopChu = 4099;	--Task Mốc Nộp Chữ Năm Mới Giáp Thìn 2024
tbNop_PhongChu.TaskID_MocNopChu = 1;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,6),}, 5},--Năm Mới Giáp Thìn 2024
	},

	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,6),}, 10},--Năm Mới Giáp Thìn 2024
	},

	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,6),}, 15},--Năm Mới Giáp Thìn 2024
	},

	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3032,6),}, 20},--Năm Mới Giáp Thìn 2024
	},


};

function tbNop_PhongChu:OnDialog()
local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu);
local szMsg = 
"<color=pink><bclr=0,0,200><color=white>Nộp Phong Chữ - Sự kiện Tết 2024:<color>\n"..
"<color=yellow>Phong Chữ Đã Nộp: <color=cyan>"..SoLanNopChu.."<color>\n"
	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Nộp 5 Phong Chữ", self.LuaChon, self, 1});
	table.insert(tbOpt, 2, {"<color=yellow>Nộp 10 Phong Chữ", self.LuaChon, self, 2});
	table.insert(tbOpt, 3, {"<color=yellow>Nộp 15 Phong Chữ", self.LuaChon, self, 3});
	table.insert(tbOpt, 4, {"<color=yellow>Nộp 20 Phong Chữ", self.LuaChon, self, 4});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbNop_PhongChu:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Nộp Phong Chữ - Sự kiện Tết 2024:<color>";
	if (nValue == 1) then
		szMsg = "<color=yellow>Nộp 5 Phong Chữ:<color>\n<color=green>Đặt vào:\n<color=cyan>- 5: Năm Mới Giáp Thìn 2024.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=yellow>Nộp 10 Phong Chữ:<color>\n<color=green>Đặt vào:\n<color=cyan>- 10: Năm Mới Giáp Thìn 2024.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=yellow>Nộp 15 Phong Chữ:<color>\n<color=green>Đặt vào:\n<color=cyan>- 15: Năm Mới Giáp Thìn 2024.<color>";
	end;
	if (nValue == 4) then
		szMsg = "<color=yellow>Nộp 20 Phong Chữ:<color>\n<color=green>Đặt vào:\n<color=cyan>- 20: Năm Mới Giáp Thìn 2024.<color>";
	end;
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;

function tbNop_PhongChu:OnOpenGiftOk(nValue, tbNop_PhongChuObj)
	local SoLanNopChu = me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu);
	
	local tbNop_PhongChuList	= {};
	for _, pItem in pairs(tbNop_PhongChuObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbNop_PhongChuList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbNop_PhongChuList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbNop_PhongChuObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then
		local nSoLuongNopChu = 5;
		me.SetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu,SoLanNopChu + nSoLuongNopChu);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Nộp thành công <color=red>"..nSoLuongNopChu.."<color> Phong Chữ: Năm Mới Giáp Thìn 2024 của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 2) then
		local nSoLuongNopChu = 10;
		me.SetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu,SoLanNopChu + nSoLuongNopChu);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Nộp thành công <color=red>"..nSoLuongNopChu.."<color> Phong Chữ: Năm Mới Giáp Thìn 2024 của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 3) then
		local nSoLuongNopChu = 15;
		me.SetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu,SoLanNopChu + nSoLuongNopChu);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Nộp thành công <color=red>"..nSoLuongNopChu.."<color> Phong Chữ: Năm Mới Giáp Thìn 2024 của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	if (nValue == 4) then
		local nSoLuongNopChu = 20;
		me.SetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu,SoLanNopChu + nSoLuongNopChu);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Nộp thành công <color=red>"..nSoLuongNopChu.."<color> Phong Chữ: Năm Mới Giáp Thìn 2024 của Sự Kiện Tết 2024 xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	
end;

function tbNop_PhongChu:ChechItem(pItem, tbNop_PhongChuList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbNop_PhongChuList do
		local tbI = tbNop_PhongChuList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;