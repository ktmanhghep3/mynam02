local tbGhep_TuyetKy_NguLoiThanKiem = {};
SpecialEvent.Ghep_TuyetKy_NguLoiThanKiem = tbGhep_TuyetKy_NguLoiThanKiem;

tbGhep_TuyetKy_NguLoiThanKiem.TaskGroup_MocNopChu = 4099;	--Task Mốc Nộp Chữ Năm Mới Giáp Thìn 2024
tbGhep_TuyetKy_NguLoiThanKiem.TaskID_MocNopChu = 1;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3910,2),}, 120},--Mảnh Thần Kiếm Ngự Lôi Chân Quyết
	},



};

function tbGhep_TuyetKy_NguLoiThanKiem:OnDialog()
local szMsg = "<bclr=0,0,200><color=white>Hoàn chỉnh Tuyệt Thế Giang Hồ:\nThần Kiếm Ngự Lôi Chân Quyết<color>\n"

	local tbOpt = {{"Ta chỉ xem qua!"},};
	table.insert(tbOpt, 1, {"<color=yellow>Tiến hành Ghép", self.LuaChon, self, 1});
	
	Dialog:Say(szMsg, tbOpt);
end


function tbGhep_TuyetKy_NguLoiThanKiem:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Hoàn chỉnh Tuyệt Thế Giang Hồ:\nThần Kiếm Ngự Lôi Chân Quyết<color>";
	if (nValue == 1) then
		szMsg = "<color=yellow>Đặt vào:\n<color=cyan>120 - Mảnh Thần Kiếm Ngự Lôi Chân Quyết<color>";
	end;
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;

function tbGhep_TuyetKy_NguLoiThanKiem:OnOpenGiftOk(nValue, tbGhep_TuyetKy_NguLoiThanKiemObj)
	
	local tbGhep_TuyetKy_NguLoiThanKiemList	= {};
	for _, pItem in pairs(tbGhep_TuyetKy_NguLoiThanKiemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbGhep_TuyetKy_NguLoiThanKiemList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbGhep_TuyetKy_NguLoiThanKiemList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbGhep_TuyetKy_NguLoiThanKiemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--
	if (nValue == 1) then


		local pItem = me.AddItem(18,1,3910,1);
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> thành công hoàn chỉnh <color=red>"..pItem.szName.."<color> xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end

	
end;

function tbGhep_TuyetKy_NguLoiThanKiem:ChechItem(pItem, tbGhep_TuyetKy_NguLoiThanKiemList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbGhep_TuyetKy_NguLoiThanKiemList do
		local tbI = tbGhep_TuyetKy_NguLoiThanKiemList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;