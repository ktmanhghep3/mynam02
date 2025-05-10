local tbSystem = Npc:GetClass("DoiTrangBiVoCuc");

local REQUIRE_ITEM = 
{ 
[1] = {--
{ {
string.format("%s,%s,%s,%s",4,9,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,3,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,8,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,7,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,10,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,5,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,4,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,11,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,6,3000,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,9,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,3,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,8,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,10,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,7,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,5,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,4,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,11,3001,10),--Hoàng Kim Hiệp Lữ
string.format("%s,%s,%s,%s",4,6,3001,10),--Hoàng Kim Hiệp Lữ
},1},
{{string.format("%s,%s,%s,%s", 18,1,3100,2),}, 185}, 	--Khóa Vô Cực
},

[2] = {--
{ {
string.format("%s,%s,%s,%s",4,9,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,3,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,8,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,7,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,10,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,5,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,4,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,11,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,6,3002,10),--Độc Lãng Tiêu Dao
string.format("%s,%s,%s,%s",4,9,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,3,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,8,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,10,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,7,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,5,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,4,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,11,3003,10),--Hiệp Độc Tiêu Dao
string.format("%s,%s,%s,%s",4,6,3003,10),--Hiệp Độc Tiêu Dao
},1},
{{string.format("%s,%s,%s,%s", 18,1,3100,2),}, 185}, 	--Khóa Vô Cực
},

[3] = {--
{ {
string.format("%s,%s,%s,%s",4,9,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,3,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,8,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,7,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,10,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,5,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,4,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,11,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,6,3004,10),--Bạch Hiệp
string.format("%s,%s,%s,%s",4,9,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,3,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,8,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,10,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,7,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,5,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,4,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,11,3005,10),--Băng Thanh
string.format("%s,%s,%s,%s",4,6,3005,10),--Băng Thanh
},1},
{{string.format("%s,%s,%s,%s", 18,1,3100,2),}, 185}, 	--Khóa Vô Cực
},

[4] = {--
{ {
string.format("%s,%s,%s,%s",4,9,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,3,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,8,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,7,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,10,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,5,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,4,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,11,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,6,3006,10),--Lưu Viêm
string.format("%s,%s,%s,%s",4,9,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,3,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,8,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,10,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,7,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,5,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,4,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,11,3007,10),--Xích Vũ
string.format("%s,%s,%s,%s",4,6,3007,10),--Xích Vũ
},1},
{{string.format("%s,%s,%s,%s", 18,1,3100,2),}, 185}, 	--Khóa Vô Cực
},


[5] = {--
{ {
string.format("%s,%s,%s,%s",4,9,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,3,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,8,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,7,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,10,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,5,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,4,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,11,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,6,3008,10),--Sương Ngạo Giang Sơn
string.format("%s,%s,%s,%s",4,9,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,3,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,8,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,10,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,7,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,5,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,4,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,11,3009,10),--Hồi Phong Phất Liễu
string.format("%s,%s,%s,%s",4,6,3009,10),--Hồi Phong Phất Liễu
},1},
{{string.format("%s,%s,%s,%s", 18,1,3100,2),}, 185}, 	--Khóa Vô Cực
},
};


function tbSystem:OnDialog_1()
	local szMsg = "<color=cyan>Hệ thống đổi Đổi Trang Bị Vô Cực - Sơ Thành Trùng Lặp<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Ta muốn đổi Trang bị Hệ Kim<color>", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<color=green>Ta muốn đổi Trang bị Hệ Mộc<color>", self.LuaChon, self,2});
	table.insert(tbOpt,3,{"<color=cyan>Ta muốn đổi Trang bị Hệ Thủy<color>", self.LuaChon, self,3});
	table.insert(tbOpt,4,{"<color=red>Ta muốn đổi Trang bị Hệ Hỏa<color>", self.LuaChon, self,4});
	table.insert(tbOpt,5,{"<color=gray>Ta muốn đổi Trang bị Hệ Thổ<color>", self.LuaChon, self,5});

	Dialog:Say(szMsg, tbOpt);
end


function tbSystem:LuaChon(nValue)	
	local szMsg = "<color=cyan>Hệ thống đổi Đổi Trang Bị Vô Cực - Sơ Thành Trùng Lặp<color>";
	local szMsg;
	
	if nValue == 1 then	
	szMsg = "<color=yellow>Cần đặt vào:\n- 1 món Trang bị Vô Cực - Kim Sơ Thành.\n- 185 Khóa Vô Cực.\nTa sẽ giúp đổi sang 1 Món Trang bị khác cùng hệ cho ngươi!<color>";
	end;

	if nValue == 2 then	
	szMsg = "<color=green>Cần đặt vào:\n- 1 món Trang bị Vô Cực - Mộc Sơ Thành.\n- 185 Khóa Vô Cực.\nTa sẽ giúp đổi sang 1 Món Trang bị khác cùng hệ cho ngươi!<color>";
	end;

	if nValue == 3 then	
	szMsg = "<color=cyan>Cần đặt vào:\n- 1 món Trang bị Vô Cực - Thủy Sơ Thành.\n- 185 Khóa Vô Cực.\nTa sẽ giúp đổi sang 1 Món Trang bị khác cùng hệ cho ngươi!<color>";
	end;

	if nValue == 4 then	
	szMsg = "<color=red>Cần đặt vào:\n- 1 món Trang bị Vô Cực - Hỏa Sơ Thành.\n- 185 Khóa Vô Cực.\nTa sẽ giúp đổi sang 1 Món Trang bị khác cùng hệ cho ngươi!<color>";
	end;

	if nValue == 5 then	
	szMsg = "<color=gray>Cần đặt vào:\n- 1 món Trang bị Vô Cực - Thổ Sơ Thành.\n- 185 Khóa Vô Cực.\nTa sẽ giúp đổi sang 1 Món Trang bị khác cùng hệ cho ngươi!<color>";
	end;

Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbSystem:OnOpenGiftOk(nValue, tbItemObj)
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbItemList) ~= 1) then
			Dialog:Say("<color=red>Vật phẩm không đúng yêu cầu!<color>",tbOpt);
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
		Dialog:Say("<color=red>Vật phẩm không đúng yêu cầu!<color>",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
--add thưởng--
	if (nValue == 1) then
	local tbNpc = Npc:GetClass("NhanRandomTrangBi");
	tbNpc:OnDialog_HeKim()
	end

	if (nValue == 2) then
	local tbNpc = Npc:GetClass("NhanRandomTrangBi");
	tbNpc:OnDialog_HeMoc()
	end

	if (nValue == 3) then
	local tbNpc = Npc:GetClass("NhanRandomTrangBi");
	tbNpc:OnDialog_HeThuy()
	end

	if (nValue == 4) then
	local tbNpc = Npc:GetClass("NhanRandomTrangBi");
	tbNpc:OnDialog_HeHoa()
	end

	if (nValue == 5) then
	local tbNpc = Npc:GetClass("NhanRandomTrangBi");
	tbNpc:OnDialog_HeTho()
	end


end




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