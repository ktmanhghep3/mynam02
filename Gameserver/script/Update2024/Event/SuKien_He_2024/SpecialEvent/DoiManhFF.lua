local tbDoiManhFF = {};
SpecialEvent.DoiManhFF = tbDoiManhFF;


local REQUIRE_ITEM = 
{ 

[1] = {--Nguyên Liệu 1 Kim
{ {
string.format("%s,%s,%s,%s",18,1,3603,1), --Mảnh Thanh Hạ Vân Chi Kim Vũ
string.format("%s,%s,%s,%s",18,1,3603,6), --Mảnh Thanh Hạ Uyển Chi Kim Vũ
},1},
},

[2] = {--Nguyên Liệu 1 Mộc
{ {
string.format("%s,%s,%s,%s",18,1,3603,2), --Mảnh Thanh Hạ Vân Chi Mộc Vũ
string.format("%s,%s,%s,%s",18,1,3603,7), --Mảnh Thanh Hạ Uyển Chi Mộc Vũ
},1},
},

[3] = {--Nguyên Liệu 1 Thủy
{ {
string.format("%s,%s,%s,%s",18,1,3603,3), --Mảnh Thanh Hạ Vân Chi Thủy Vũ
string.format("%s,%s,%s,%s",18,1,3603,8), --Mảnh Thanh Hạ Uyển Chi Thủy Vũ
},1},
},

[4] = {--Nguyên Liệu 1 Hỏa
{ {
string.format("%s,%s,%s,%s",18,1,3603,4), --Mảnh Thanh Hạ Vân Chi Hỏa Vũ
string.format("%s,%s,%s,%s",18,1,3603,9), --Mảnh Thanh Hạ Uyển Chi Hỏa Vũ
},1},
},

[5] = {--Nguyên Liệu 1 Thổ
{ {
string.format("%s,%s,%s,%s",18,1,3603,5), --Mảnh Thanh Hạ Vân Chi Thổ Vũ
string.format("%s,%s,%s,%s",18,1,3603,10), --Mảnh Thanh Hạ Uyển Chi Thổ Vũ
},1},
},


[6] = {--Nguyên Liệu 5 Kim
{ {
string.format("%s,%s,%s,%s",18,1,3603,1), --Mảnh Thanh Hạ Vân Chi Kim Vũ
string.format("%s,%s,%s,%s",18,1,3603,6), --Mảnh Thanh Hạ Uyển Chi Kim Vũ
},5},
},

[7] = {--Nguyên Liệu 5 Mộc
{ {
string.format("%s,%s,%s,%s",18,1,3603,2), --Mảnh Thanh Hạ Vân Chi Mộc Vũ
string.format("%s,%s,%s,%s",18,1,3603,7), --Mảnh Thanh Hạ Uyển Chi Mộc Vũ
},5},
},

[8] = {--Nguyên Liệu 5 Thủy
{ {
string.format("%s,%s,%s,%s",18,1,3603,3), --Mảnh Thanh Hạ Vân Chi Thủy Vũ
string.format("%s,%s,%s,%s",18,1,3603,8), --Mảnh Thanh Hạ Uyển Chi Thủy Vũ
},5},
},

[9] = {--Nguyên Liệu 5 Hỏa
{ {
string.format("%s,%s,%s,%s",18,1,3603,4), --Mảnh Thanh Hạ Vân Chi Hỏa Vũ
string.format("%s,%s,%s,%s",18,1,3603,9), --Mảnh Thanh Hạ Uyển Chi Hỏa Vũ
},5},
},

[10] = {--Nguyên Liệu 5 Thổ
{ {
string.format("%s,%s,%s,%s",18,1,3603,5), --Mảnh Thanh Hạ Vân Chi Thổ Vũ
string.format("%s,%s,%s,%s",18,1,3603,10), --Mảnh Thanh Hạ Uyển Chi Thổ Vũ
},5},
},

};

function tbDoiManhFF:OnDialog_1()
	local szMsg = "<color=cyan>Hệ thống Đổi Mảnh Phi Phong<color>";
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<color=yellow>Đổi 1 Mảnh Phi Phong Kim", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<color=yellow>Đổi 1 Mảnh Phi Phong Mộc", self.LuaChon, self,2});
	table.insert(tbOpt,3,{"<color=yellow>Đổi 1 Mảnh Phi Phong Thủy", self.LuaChon, self,3});
	table.insert(tbOpt,4,{"<color=yellow>Đổi 1 Mảnh Phi Phong Hỏa", self.LuaChon, self,4});
	table.insert(tbOpt,5,{"<color=yellow>Đổi 1 Mảnh Phi Phong Thổ", self.LuaChon, self,5});
	table.insert(tbOpt,6,{"<color=yellow>Đổi 5 Mảnh Phi Phong Kim", self.LuaChon, self,6});
	table.insert(tbOpt,7,{"<color=yellow>Đổi 5 Mảnh Phi Phong Mộc", self.LuaChon, self,7});
	table.insert(tbOpt,8,{"<color=yellow>Đổi 5 Mảnh Phi Phong Thủy", self.LuaChon, self,8});
	table.insert(tbOpt,9,{"<color=yellow>Đổi 5 Mảnh Phi Phong Hỏa", self.LuaChon, self,9});
	table.insert(tbOpt,10,{"<color=yellow>Đổi 5 Mảnh Phi Phong Thổ", self.LuaChon, self,10});

	Dialog:Say(szMsg, tbOpt);
end


function tbDoiManhFF:LuaChon(nValue)
	local szMsg = "<color=cyan>Hệ thống Dung luyện VIP\nCần Đạt Mốc Phúc Lợi Tích Lũy 1000 điểm để sử dụng chức năng này!<color>";
	local szMsg;
		
	
	if (nValue == 1) then
		szMsg = "<color=yellow>Đổi: 1 Mảnh Phi Phong Kim<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 1: Mảnh Thanh Hạ Vân Chi Kim Vũ.\n 1: Mảnh Thanh Hạ Uyển Chi Kim Vũ.<color>";
	end;
	if (nValue == 2) then
		szMsg = "<color=green>Đổi: 1 Mảnh Phi Phong Mộc<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 1: Mảnh Thanh Hạ Vân Chi Mộc Vũ.\n 1: Mảnh Thanh Hạ Uyển Chi Mộc Vũ.<color>";
	end;
	if (nValue == 3) then
		szMsg = "<color=blue>Đổi: 1 Mảnh Phi Phong Thủy<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 1: Mảnh Thanh Hạ Vân Chi Thủy Vũ.\n 1: Mảnh Thanh Hạ Uyển Chi Thủy Vũ.<color>";
	end;
	if (nValue == 4) then
		szMsg = "<color=red>Đổi: 1 Mảnh Phi Phong Hỏa<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 1: Mảnh Thanh Hạ Vân Chi Hỏa Vũ.\n 1: Mảnh Thanh Hạ Uyển Chi Hỏa Vũ.<color>";
	end;
	if (nValue == 5) then
		szMsg = "<color=violet>Đổi: 1 Mảnh Phi Phong Thổ<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 1: Mảnh Thanh Hạ Vân Chi Thổ Vũ.\n 1: Mảnh Thanh Hạ Uyển Chi Thổ Vũ.<color>";
	end;


	if (nValue == 6) then
		szMsg = "<color=yellow>Đổi: 5 Mảnh Phi Phong Kim<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 5: Mảnh Thanh Hạ Vân Chi Kim Vũ.\n 5: Mảnh Thanh Hạ Uyển Chi Kim Vũ.<color>";
	end;
	if (nValue == 7) then
		szMsg = "<color=green>Đổi: 5 Mảnh Phi Phong Mộc<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 5: Mảnh Thanh Hạ Vân Chi Mộc Vũ.\n 5: Mảnh Thanh Hạ Uyển Chi Mộc Vũ.<color>";
	end;
	if (nValue == 8) then
		szMsg = "<color=blue>Đổi: 5 Mảnh Phi Phong Thủy<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 5: Mảnh Thanh Hạ Vân Chi Thủy Vũ.\n 5: Mảnh Thanh Hạ Uyển Chi Thủy Vũ.<color>";
	end;
	if (nValue == 9) then
		szMsg = "<color=red>Đổi: 5 Mảnh Phi Phong Hỏa<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 5: Mảnh Thanh Hạ Vân Chi Hỏa Vũ.\n 5: Mảnh Thanh Hạ Uyển Chi Hỏa Vũ.<color>";
	end;
	if (nValue == 10) then
		szMsg = "<color=violet>Đổi: 5 Mảnh Phi Phong Thổ<color>\n<color=lightgreen>Đặt vào 1 trong 2 loại với Số lượng:<color=cyan>\n 5: Mảnh Thanh Hạ Vân Chi Thổ Vũ.\n 5: Mảnh Thanh Hạ Uyển Chi Thổ Vũ.<color>";
	end;








	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiManhFF:OnOpenGiftOk(nValue, tbItemObj)
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbItemList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
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
		Dialog:Say("\nNguyên Liệu đặt vào không đúng số lượng hoặc nhiều hơn 1 loại, hãy xem lại!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
--add thưởng--
	if (nValue == 1) then
		local nSoLuongFF = 1;
		me.AddStackItem(18,1,3610,1,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Kim 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Kim  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 2) then
		local nSoLuongFF = 1;
		me.AddStackItem(18,1,3610,2,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Mộc 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Mộc  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 3) then
		local nSoLuongFF = 1;
		me.AddStackItem(18,1,3610,3,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Thủy 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Thủy  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 4) then
		local nSoLuongFF = 1;
		me.AddStackItem(18,1,3610,4,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Hỏa 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Hỏa  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 5) then
		local nSoLuongFF = 1;
		me.AddStackItem(18,1,3610,5,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Thổ 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Thổ  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end



	if (nValue == 6) then
		local nSoLuongFF = 5;
		me.AddStackItem(18,1,3610,1,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Kim 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Kim  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 7) then
		local nSoLuongFF = 5;
		me.AddStackItem(18,1,3610,2,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Mộc 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Mộc  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 8) then
		local nSoLuongFF = 5;
		me.AddStackItem(18,1,3610,3,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Thủy 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Thủy  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 9) then
		local nSoLuongFF = 5;
		me.AddStackItem(18,1,3610,4,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Hỏa 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Hỏa  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end
	if (nValue == 10) then
		local nSoLuongFF = 5;
		me.AddStackItem(18,1,3610,5,{bForceBind=1,},nSoLuongFF);--Mảnh Thanh Hạ Phi Phong Thổ 
		local szMsg = string.format("<color=yellow><color=green>"..me.szName.."<color> Đổi thành công <color=red>"..nSoLuongFF.."<color> Mảnh Thanh Hạ Phi Phong Thổ  của Sự kiện Hè 2024, xin chúc mừng!!!<color>");
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		self:BroadCast(szMsg);
	end





end;

function tbDoiManhFF:ChechItem(pItem, tbItemList, tbCountList)
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