local tbSystem = Npc:GetClass("KichHoatVoCuc");

tbSystem.TaskGroup_KichHoatVoCuc = 4200;	--KÍCH HOẠT VÔ CỰC 
tbSystem.TaskId_KichHoatVoCuc   = 1;		--KÍCH HOẠT VÔ CỰC 

local REQUIRE_ITEM = 
{ 
[1] = {
{{string.format("%s,%s,%s,%s", 4,9,3000,10),}, 1},--Nón Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,3,3000,10),}, 1},--Áo Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,8,3000,10),}, 1},--Lưng Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,7,3000,10),}, 1},--Giày Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,10,3000,10),}, 1},--Tay Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,5,3000,10),}, 1},--Liên Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,4,3000,10),}, 1},--Nhẫn Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,11,3000,10),}, 1},--Bội Cấp 1- Nam - Kim
{{string.format("%s,%s,%s,%s", 4,6,3000,10),}, 1},--Phù Cấp 1- Nam - Kim
	},
	
[2] = {
{{string.format("%s,%s,%s,%s", 4,9,3001,10),}, 1},--Nón Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,3,3001,10),}, 1},--Áo Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,8,3001,10),}, 1},--Lưng Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,10,3001,10),}, 1},--Tay Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,7,3001,10),}, 1},--Giày Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,5,3001,10),}, 1},--Liên Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,4,3001,10),}, 1},--Nhẫn Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,11,3001,10),}, 1},--Bội Cấp 1- Nữ - Kim
{{string.format("%s,%s,%s,%s", 4,6,3001,10),}, 1},--Phù Cấp 1- Nữ - Kim
	},

[3] = {
{{string.format("%s,%s,%s,%s", 4,9,3002,10),}, 1},--Nón Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,3,3002,10),}, 1},--Áo Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,8,3002,10),}, 1},--Lưng Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,7,3002,10),}, 1},--Tay Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,10,3002,10),}, 1},--Giày Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,5,3002,10),}, 1},--Liên Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,4,3002,10),}, 1},--Nhẫn Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,11,3002,10),}, 1},--Bội Cấp 1- Nam - Mộc
{{string.format("%s,%s,%s,%s", 4,6,3002,10),}, 1},--Phù Cấp 1- Nam - Mộc
	},
	
[4] = {
{{string.format("%s,%s,%s,%s", 4,9,3003,10),}, 1},--Nón Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,3,3003,10),}, 1},--Áo Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,8,3003,10),}, 1},--Lưng Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,10,3003,10),}, 1},--Tay Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,7,3003,10),}, 1},--Giày Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,5,3003,10),}, 1},--Liên Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,4,3003,10),}, 1},--Nhẫn Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,11,3003,10),}, 1},--Bội Cấp 1- Nữ - Mộc
{{string.format("%s,%s,%s,%s", 4,6,3003,10),}, 1},--Phù Cấp 1- Nữ - Mộc
	},

[5] = {
{{string.format("%s,%s,%s,%s", 4,9,3004,10),}, 1},--Nón Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,3,3004,10),}, 1},--Áo Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,8,3004,10),}, 1},--Lưng Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,7,3004,10),}, 1},--Tay Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,10,3004,10),}, 1},--Giày Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,5,3004,10),}, 1},--Liên Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,4,3004,10),}, 1},--Nhẫn Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,11,3004,10),}, 1},--Bội Cấp 1- Nam - Thủy
{{string.format("%s,%s,%s,%s", 4,6,3004,10),}, 1},--Phù Cấp 1- Nam - Thủy
	},
	
[6] = {
{{string.format("%s,%s,%s,%s", 4,9,3005,10),}, 1},--Nón Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,3,3005,10),}, 1},--Áo Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,8,3005,10),}, 1},--Lưng Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,10,3005,10),}, 1},--Tay Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,7,3005,10),}, 1},--Giày Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,5,3005,10),}, 1},--Liên Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,4,3005,10),}, 1},--Nhẫn Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,11,3005,10),}, 1},--Bội Cấp 1- Nữ - Thủy
{{string.format("%s,%s,%s,%s", 4,6,3005,10),}, 1},--Phù Cấp 1- Nữ - Thủy
	},

[7] = {
{{string.format("%s,%s,%s,%s", 4,9,3006,10),}, 1},--Nón Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,3,3006,10),}, 1},--Áo Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,8,3006,10),}, 1},--Lưng Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,7,3006,10),}, 1},--Tay Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,10,3006,10),}, 1},--Giày Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,5,3006,10),}, 1},--Liên Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,4,3006,10),}, 1},--Nhẫn Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,11,3006,10),}, 1},--Bội Cấp 1- Nam - Hỏa
{{string.format("%s,%s,%s,%s", 4,6,3006,10),}, 1},--Phù Cấp 1- Nam - Hỏa
	},
	
[8] = {
{{string.format("%s,%s,%s,%s", 4,9,3007,10),}, 1},--Nón Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,3,3007,10),}, 1},--Áo Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,8,3007,10),}, 1},--Lưng Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,10,3007,10),}, 1},--Tay Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,7,3007,10),}, 1},--Giày Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,5,3007,10),}, 1},--Liên Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,4,3007,10),}, 1},--Nhẫn Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,11,3007,10),}, 1},--Bội Cấp 1- Nữ - Hỏa
{{string.format("%s,%s,%s,%s", 4,6,3007,10),}, 1},--Phù Cấp 1- Nữ - Hỏa
	},

[9] = {
{{string.format("%s,%s,%s,%s", 4,9,3008,10),}, 1},--Nón Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,3,3008,10),}, 1},--Áo Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,8,3008,10),}, 1},--Lưng Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,7,3008,10),}, 1},--Tay Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,10,3008,10),}, 1},--Giày Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,5,3008,10),}, 1},--Liên Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,4,3008,10),}, 1},--Nhẫn Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,11,3008,10),}, 1},--Bội Cấp 1- Nam - Thổ
{{string.format("%s,%s,%s,%s", 4,6,3008,10),}, 1},--Phù Cấp 1- Nam - Thổ
	},
	
[10] = {
{{string.format("%s,%s,%s,%s", 4,9,3009,10),}, 1},--Nón Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,3,3009,10),}, 1},--Áo Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,8,3009,10),}, 1},--Lưng Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,10,3009,10),}, 1},--Tay Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,7,3009,10),}, 1},--Giày Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,5,3009,10),}, 1},--Liên Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,4,3009,10),}, 1},--Nhẫn Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,11,3009,10),}, 1},--Bội Cấp 1- Nữ - Thổ
{{string.format("%s,%s,%s,%s", 4,6,3009,10),}, 1},--Phù Cấp 1- Nữ - Thổ
	},
};

function tbSystem:OnDialog_1()
	local KichHoatVoCuc = me.GetTask(self.TaskGroup_KichHoatVoCuc,self.TaskId_KichHoatVoCuc);--KÍCH HOẠT VÔ CỰC
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Kích Hoạt Vô Cực:\nTình trạng Kích hoạt: " .. KichHoatVoCuc .. "/1\nĐặt vào 9 món Trang bị cùng 1 hệ.\nSau khi Kích hoạt Trang bị sẽ không mất.\nTùy chọn hệ đang có:<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Sơ Thành-Nam Kim<color>", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<color=yellow>Sơ Thành-Nữ Kim<color>", self.LuaChon, self,2});

	table.insert(tbOpt,3,{"<color=green>Sơ Thành-Nam Mộc<color>", self.LuaChon, self,3});
	table.insert(tbOpt,4,{"<color=green>Sơ Thành-Nữ Mộc<color>", self.LuaChon, self,4});

	table.insert(tbOpt,5,{"<color=cyan>Sơ Thành-Nam Thủy<color>", self.LuaChon, self,5});
	table.insert(tbOpt,6,{"<color=cyan>Sơ Thành-Nữ Thủy<color>", self.LuaChon, self,6});

	table.insert(tbOpt,7,{"<color=red>Sơ Thành-Nam Hỏa<color>", self.LuaChon, self,7});
	table.insert(tbOpt,8,{"<color=red>Sơ Thành-Nữ Hỏa<color>", self.LuaChon, self,8});

	table.insert(tbOpt,9,{"<color=gray>Sơ Thành-Nam Thổ<color>", self.LuaChon, self,9});
	table.insert(tbOpt,10,{"<color=gray>Sơ Thành-Nữ Thổ<color>", self.LuaChon, self,10});

	Dialog:Say(szMsg, tbOpt);
end


function tbSystem:LuaChon(nValue)
	local KichHoatVoCuc = me.GetTask(self.TaskGroup_KichHoatVoCuc,self.TaskId_KichHoatVoCuc);--KÍCH HOẠT VÔ CỰC
	local szMsg = "<bclr=0,0,200><color=white>Hệ thống Kích Hoạt Vô Cực.\nĐặt vào 9 món Trang bị cùng 1 hệ.\nSau khi Kích hoạt Trang bị sẽ không mất.\nCần đặt vào:<color>";
	
	if KichHoatVoCuc >= 1 then
	Dialog:Say(string.format("<color=yellow>Ngươi đã Kích Hoạt Vô Cực, không cần kích hoạt thêm nữa!<color>"));
	return 0;
	end



	if nValue == 1 then	
	szMsg = "<color=yellow>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Kim Sơ Thành Nam cùng hệ!<color>";
	end;
	if nValue == 2 then	
	szMsg = "<color=yellow>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Kim Sơ Thành Nữ cùng hệ!<color>";
	end;

	if nValue == 3 then	
	szMsg = "<color=green>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Mộc Sơ Thành Nam cùng hệ!<color>";
	end;
	if nValue == 4 then	
	szMsg = "<color=green>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Mộc Sơ Thành Nữ cùng hệ!<color>";
	end;

	if nValue == 5 then	
	szMsg = "<color=cyan>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Thủy Sơ Thành Nam cùng hệ!<color>";
	end;
	if nValue == 6 then	
	szMsg = "<color=cyan>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Thủy Sơ Thành Nữ cùng hệ!<color>";
	end;

	if nValue == 7 then	
	szMsg = "<color=red>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Hỏa Sơ Thành Nam cùng hệ!<color>";
	end;
	if nValue == 8 then	
	szMsg = "<color=red>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Hỏa Sơ Thành Nữ cùng hệ!<color>";
	end;

	if nValue == 9 then	
	szMsg = "<color=gray>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Thổ Sơ Thành Nam cùng hệ!<color>";
	end;
	if nValue == 10 then	
	szMsg = "<color=gray>Cần đặt vào:\n- 9 món Trang bị Vô Cực - Thổ Sơ Thành Nữ cùng hệ!<color>";
	end;


	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbSystem:OnOpenGiftOk(nValue, tbItemObj)
local KichHoatVoCuc = me.GetTask(self.TaskGroup_KichHoatVoCuc,self.TaskId_KichHoatVoCuc);--KÍCH HOẠT VÔ CỰC
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbItemList) ~= 1) then
			Dialog:Say("<color=red>Vật phẩm không đúng yêu cầu!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbItemList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("<color=red>Số lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	
	--for _, pItem in pairs(tbItemObj) do
		--if me.DelItem(pItem[1]) ~= 1 then
			--return 0;
		--end;
	--end
	
--add thưởng--
	if (nValue == 1) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	if (nValue == 2) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	
	if (nValue == 3) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	if (nValue == 4) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	
	if (nValue == 5) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	if (nValue == 6) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	
	if (nValue == 7) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	if (nValue == 8) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	
	if (nValue == 9) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	if (nValue == 10) then
	me.SetTask(self.TaskGroup_KichHoatVoCuc, self.TaskId_KichHoatVoCuc, 1);
	end
	
	

local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> Kích hoạt thành công hệ thống Vô Cực, Kinh thiên động địa!<color>";
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Kích hoạt thành công hệ thống Vô Cực!<color>"));
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
KDialog.MsgToGlobal(szMsg);	
end;

function tbSystem:ChechItem(pItem, tbItemList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbItemList do
		local tbI = tbItemList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;