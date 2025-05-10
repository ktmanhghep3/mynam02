local tbThienGia_Kiem = Npc:GetClass("ThienGia_Thuong");


tbThienGia_Kiem.nSkill = 1442;				--Skill Thiên Gia

tbThienGia_Kiem.NhanCap_1 = 1;				--Cấp Skill nhận được 1
tbThienGia_Kiem.NhanCap_2 = 2;				--Cấp Skill nhận được 2
tbThienGia_Kiem.NhanCap_3 = 3;				--Cấp Skill nhận được 3
tbThienGia_Kiem.NhanCap_4 = 4;				--Cấp Skill nhận được 4
tbThienGia_Kiem.NhanCap_5 = 5;				--Cấp Skill nhận được 5
tbThienGia_Kiem.NhanCap_6 = 6;				--Cấp Skill nhận được 6
tbThienGia_Kiem.NhanCap_7 = 7;				--Cấp Skill nhận được 7
tbThienGia_Kiem.NhanCap_8 = 8;				--Cấp Skill nhận được 8
tbThienGia_Kiem.NhanCap_9 = 9;				--Cấp Skill nhận được 9
tbThienGia_Kiem.NhanCap_10 = 10;				--Cấp Skill nhận được 10
tbThienGia_Kiem.NhanCap_11 = 11;				--Cấp Skill nhận được 11
tbThienGia_Kiem.NhanCap_12 = 12;				--Cấp Skill nhận được 12
tbThienGia_Kiem.NhanCap_13 = 13;				--Cấp Skill nhận được 13
tbThienGia_Kiem.NhanCap_14 = 14;				--Cấp Skill nhận được 14
tbThienGia_Kiem.NhanCap_15 = 15;				--Cấp Skill nhận được 15


local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 100},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 25},	--Lệnh Bài Sát Thần PK
	},
	
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 300},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 45},	--Lệnh Bài Sát Thần PK
	},
	
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 500},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 65},	--Lệnh Bài Sát Thần PK
	},
	
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 700},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 85},	--Lệnh Bài Sát Thần PK
	},
	
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 900},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 105},	--Lệnh Bài Sát Thần PK
	},
	
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1100},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 125},	--Lệnh Bài Sát Thần PK
	},
	
	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1300},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 145},	--Lệnh Bài Sát Thần PK
	},
	
	[8] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1500},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 165},	--Lệnh Bài Sát Thần PK
	},
	
	[9] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1700},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 185},	--Lệnh Bài Sát Thần PK
	},
	
	[10] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 1900},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 205},	--Lệnh Bài Sát Thần PK
	},
	
	[11] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 2100},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 225},	--Lệnh Bài Sát Thần PK
	},
	
	[12] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 2300},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 245},	--Lệnh Bài Sát Thần PK
	},
	
	[13] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 2500},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 265},	--Lệnh Bài Sát Thần PK
	},
	
	[14] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 2700},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 285},	--Lệnh Bài Sát Thần PK
	},
	
	[15] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,4),}, 2900},	--Thần Binh Phổ
		{{string.format("%s,%s,%s,%s", 18,1,3001,1),}, 305},	--Lệnh Bài Sát Thần PK
	},

};


function tbThienGia_Kiem:OnDialog()
local nLevel = me.GetSkillLevel(self.nSkill);
local szMsg = "<color=gold>[Hệ Thống Thiên Gia]<color>";
if nLevel < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Cần Kích hoạt Thiên Gia trước để Sử dụng tính năng này!<color>"));
return 0;
end

local tbOpt = {{"Kết thúc đối thoại..."},};
table.insert(tbOpt, 1, {"<color=yellow>Tiến Cấp Thiên Gia Thương Lv: <color=cyan>"..(nLevel+1).."<color><color>", self.LuaChon, self, nLevel+1});
	
	
Dialog:Say(szMsg, tbOpt);
end

function tbThienGia_Kiem:LuaChon(nValue)
local szMsg = "<color=gold>[Hệ Thống Thiên Gia]<color>";
local nLevel = me.GetSkillLevel(self.nSkill);	--Thiên Gia Thương
	
	if (nValue == 1) then	
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>1<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 100 Cái\n- Lệnh Bài Sát Thần PK: 25 Cái\n- Tỷ lệ thành công: 100%<color>";
	end;
	
	if (nValue == 2) then
	local nThienGiaSkill = self.NhanCap_1;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>2<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 300 Cái\n- Lệnh Bài Sát Thần PK: 45 Cái\n- Tỷ lệ thành công: 70%<color>";
	end;
	
	if (nValue == 3) then
	local nThienGiaSkill = self.NhanCap_2;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>3<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 500 Cái\n- Lệnh Bài Sát Thần PK: 65 Cái\n- Tỷ lệ thành công: 68%<color>";
	end;
	
	if (nValue == 4) then
	local nThienGiaSkill = self.NhanCap_3;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>4<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 700 Cái\n- Lệnh Bài Sát Thần PK: 85 Cái\n- Tỷ lệ thành công: 66%<color>";
	end;

	if (nValue == 5) then
	local nThienGiaSkill = self.NhanCap_4;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>5<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 900 Cái\n- Lệnh Bài Sát Thần PK: 105 Cái\n- Tỷ lệ thành công: 64%<color>";
	end;

	if (nValue == 6) then
	local nThienGiaSkill = self.NhanCap_5;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>6<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 1100 Cái\n- Lệnh Bài Sát Thần PK: 125 Cái\n- Tỷ lệ thành công: 50%<color>";
	end;
	
	if (nValue == 7) then
	local nThienGiaSkill = self.NhanCap_6;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>7<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 1300 Cái\n- Lệnh Bài Sát Thần PK: 145 Cái\n- Tỷ lệ thành công: 45%<color>";
	end;
	
	if (nValue == 8) then
	local nThienGiaSkill = self.NhanCap_7;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>8<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 1500 Cái\n- Lệnh Bài Sát Thần PK: 165 Cái\n- Tỷ lệ thành công: 40%<color>";
	end;
	
	if (nValue == 9) then
	local nThienGiaSkill = self.NhanCap_8;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>9<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 1700 Cái\n- Lệnh Bài Sát Thần PK: 185 Cái\n- Tỷ lệ thành công: 35%<color>";
	end;

	if (nValue == 10) then
	local nThienGiaSkill = self.NhanCap_9;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>10<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 1900 Cái\n- Lệnh Bài Sát Thần PK: 205 Cái\n- Tỷ lệ thành công: 30%<color>";
	end;

	if (nValue == 11) then
	local nThienGiaSkill = self.NhanCap_10;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>11<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 2100 Cái\n- Lệnh Bài Sát Thần PK: 225 Cái\n- Tỷ lệ thành công: 25%<color>";
	end;
	
	if (nValue == 12) then
	local nThienGiaSkill = self.NhanCap_11;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>12<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 2300 Cái\n- Lệnh Bài Sát Thần PK: 245 Cái\n- Tỷ lệ thành công: 20%<color>";
	end;
	
	if (nValue == 13) then
	local nThienGiaSkill = self.NhanCap_12;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>13<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 2500 Cái\n- Lệnh Bài Sát Thần PK: 265 Cái\n- Tỷ lệ thành công: 15%<color>";
	end;
	
	if (nValue == 14) then
	local nThienGiaSkill = self.NhanCap_13;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>14<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 2700 Cái\n- Lệnh Bài Sát Thần PK: 285 Cái\n- Tỷ lệ thành công: 10%<color>";
	end;

	if (nValue == 15) then
	local nThienGiaSkill = self.NhanCap_14;
	if nLevel < nThienGiaSkill then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương chưa đạt cấp <color=cyan>"..nThienGiaSkill.."<color> không thể Tiến Cấp <color=red>"..(nThienGiaSkill+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Tiến Cấp <color=cyan>15<color>, <color=green>\nYêu cầu:\n*Cần Đặt vào:\n- Thần Binh Phổ: 2900 Cái\n- Lệnh Bài Sát Thần PK: 305 Cái\n- Tỷ lệ thành công: 6%<color>";
	end;



	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;


function tbThienGia_Kiem:OnOpenGiftOk(nValue, tbItemObj)
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
		Dialog:Say("\nSố lượng vật phẩm đặt vào không hợp lệ!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
---Phần thưởng---
--------------------	
	if (nValue == 1) then
	local nThienGiaSkill = self.NhanCap_1;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 100	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 2) then
	local nThienGiaSkill = self.NhanCap_2;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 70	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 3) then
	local nThienGiaSkill = self.NhanCap_3;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 68	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 4) then
	local nThienGiaSkill = self.NhanCap_4;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 66	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 5) then
	local nThienGiaSkill = self.NhanCap_5;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 64	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 6) then
	local nThienGiaSkill = self.NhanCap_6;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 50	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 7) then
	local nThienGiaSkill = self.NhanCap_7;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 45	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 8) then
	local nThienGiaSkill = self.NhanCap_8;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 40	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 9) then
	local nThienGiaSkill = self.NhanCap_9;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 35	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 10) then
	local nThienGiaSkill = self.NhanCap_10;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 30	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 11) then
	local nThienGiaSkill = self.NhanCap_11;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 25	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 12) then
	local nThienGiaSkill = self.NhanCap_12;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 20	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 13) then
	local nThienGiaSkill = self.NhanCap_13;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 15	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 14) then
	local nThienGiaSkill = self.NhanCap_14;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 10	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

--------------------	
	if (nValue == 15) then
	local nThienGiaSkill = self.NhanCap_15;
	
		local i = 0;
		local nAdd = 0;
		local nRand = 0;
		local nIndex = 0;
		nRand = MathRandom(1, 100);
		local nRate = 6	--Tỷ lệ thành công
		local nVRate = 100 - nRate
		local tbRate = {nRate,nVRate};
		for i = 1, 2 do
			nAdd = nAdd + tbRate[i];
			if nAdd >= nRand then
				nIndex = i;
				break;
			end
		end
		
	if nIndex == 1 then
	--Phần thưởng:

	me.AddFightSkill(self.nSkill,nThienGiaSkill);

	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=green>Tiếp cấp Thành Công<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

	else
	--Phần thưởng:		
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> <color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow><color=gray>Tiếp cấp Thất Bại<color> <color=cyan>Thiên Gia Thương "..nThienGiaSkill.."<color> với tỷ lệ thành công: <color=red>["..nRate.."/100]<color> !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	end;	

	
	



	
end;

function tbThienGia_Kiem:ChechItem(pItem, tbItemList, tbCountList)
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