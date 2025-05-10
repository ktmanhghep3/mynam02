local tbHuyChuong = Npc:GetClass("Update_HuyChuong");


tbHuyChuong.nSkill = 1440;				--Skill Huy Chương

tbHuyChuong.NhanCap_1 = 1;				--Cấp Skill nhận được 1
tbHuyChuong.NhanCap_2 = 2;				--Cấp Skill nhận được 2
tbHuyChuong.NhanCap_3 = 3;				--Cấp Skill nhận được 3
tbHuyChuong.NhanCap_4 = 4;				--Cấp Skill nhận được 4
tbHuyChuong.NhanCap_5 = 5;				--Cấp Skill nhận được 5
tbHuyChuong.NhanCap_6 = 6;				--Cấp Skill nhận được 6
tbHuyChuong.NhanCap_7 = 7;				--Cấp Skill nhận được 7
tbHuyChuong.NhanCap_8 = 8;				--Cấp Skill nhận được 8
tbHuyChuong.NhanCap_9 = 9;				--Cấp Skill nhận được 9
tbHuyChuong.NhanCap_10 = 10;				--Cấp Skill nhận được 10
tbHuyChuong.NhanCap_11 = 11;				--Cấp Skill nhận được 11
tbHuyChuong.NhanCap_12 = 12;				--Cấp Skill nhận được 12
tbHuyChuong.NhanCap_13 = 13;				--Cấp Skill nhận được 13
tbHuyChuong.NhanCap_14 = 14;				--Cấp Skill nhận được 14
tbHuyChuong.NhanCap_15 = 15;				--Cấp Skill nhận được 15
tbHuyChuong.NhanCap_16 = 16;				--Cấp Skill nhận được 16
tbHuyChuong.NhanCap_17 = 17;				--Cấp Skill nhận được 17
tbHuyChuong.NhanCap_18 = 18;				--Cấp Skill nhận được 18
tbHuyChuong.NhanCap_19 = 19;				--Cấp Skill nhận được 19
tbHuyChuong.NhanCap_20 = 20;				--Cấp Skill nhận được 20


tbHuyChuong.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbHuyChuong.TaskIDTT = 1;

local REQUIRE_ITEM = 
{ 
	[1] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 200},	--Chiến Tích Phù Văn
	},
	[2] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 500},	--Chiến Tích Phù Văn
	},
	[3] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 800},	--Chiến Tích Phù Văn
	},
	[4] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 1200},	--Chiến Tích Phù Văn
	},
	[5] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 1500},	--Chiến Tích Phù Văn
	},
	[6] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 1700},	--Chiến Tích Phù Văn
	},
	[7] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 2000},	--Chiến Tích Phù Văn
	},
	[8] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 2500},	--Chiến Tích Phù Văn
	},
	[9] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 3000},	--Chiến Tích Phù Văn
	},
	[10] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 3500},	--Chiến Tích Phù Văn
	},
	[11] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 4000},	--Chiến Tích Phù Văn
	},
	[12] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 4500},	--Chiến Tích Phù Văn
	},
	[13] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 5000},	--Chiến Tích Phù Văn
	},
	[14] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 5500},	--Chiến Tích Phù Văn
	},
	[15] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 6000},	--Chiến Tích Phù Văn
	},
	[16] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 6500},	--Chiến Tích Phù Văn
	},
	[17] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 7000},	--Chiến Tích Phù Văn
	},
	[18] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 7500},	--Chiến Tích Phù Văn
	},
	[19] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 8000},	--Chiến Tích Phù Văn
	},
	[20] = {
		{{string.format("%s,%s,%s,%s", 18,1,3006,2),}, 8500},	--Chiến Tích Phù Văn
	},




};


function tbHuyChuong:OnDialog()
local nLevel = me.GetSkillLevel(self.nSkill);
local szMsg = "<color=gold>[Hệ Thống Nhận Huy Chương]<color>";
if nLevel < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Cần Kích hoạt Huy Chương trước để Sử dụng tính năng này!<color>"));
return 0;
end

if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local tbOpt = {{"Kết thúc đối thoại..."},};
table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp <color=cyan>"..(nLevel+1).."<color><color>", self.LuaChon, self, nLevel+1});
	
	
Dialog:Say(szMsg, tbOpt);
end

function tbHuyChuong:KichHoat_HC()
local szMsg = "<color=gold>[Hệ Thống Nhận Huy Chương]<color>";
local tbOpt = {{"Kết thúc đối thoại..."},};
table.insert(tbOpt, 1, {"<color=yellow>Kích Hoạt Huy Chương Cấp <color=cyan>1<color><color>", self.KichHoatHC,self});	
Dialog:Say(szMsg, tbOpt);
end


function tbHuyChuong:KichHoatHC()
local nLevel = me.GetSkillLevel(self.nSkill);	--Huy chương
	if nLevel >= 1 then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương đã Kích hoạt!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

	local nCapHuyChuong = self.NhanCap_1;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> Kích hoạt thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Kích hoạt thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

end

function tbHuyChuong:LuaChon(nValue)
local szMsg = "<color=gold>[Hệ Thống Nhận Huy Chương]<color>";
local nLevel = me.GetSkillLevel(self.nSkill);	--Huy chương
	
	if (nValue == 1) then	
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n1)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 200 Cái<color>";
	end;
	
	if (nValue == 2) then
	local nCapHuyChuong = self.NhanCap_1;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 1<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 500 Cái<color>";
	end;
	
	if (nValue == 3) then
	local nCapHuyChuong = self.NhanCap_2;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 2<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 800 Cái<color>";
	end;
	
	if (nValue == 4) then
	local nCapHuyChuong = self.NhanCap_3;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 3<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 1200 Cái<color>";
	end;

	if (nValue == 5) then
	local nCapHuyChuong = self.NhanCap_4;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 4<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 1500 Cái<color>";
	end;

	if (nValue == 6) then
	local nCapHuyChuong = self.NhanCap_5;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 5<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 1700 Cái<color>";
	end;
	
	if (nValue == 7) then
	local nCapHuyChuong = self.NhanCap_6;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 6<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 2000 Cái<color>";
	end;
	
	if (nValue == 8) then
	local nCapHuyChuong = self.NhanCap_7;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 7<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 2500 Cái<color>";
	end;
	
	if (nValue == 9) then
	local nCapHuyChuong = self.NhanCap_8;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 8<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 3000 Cái<color>";
	end;

	if (nValue == 10) then
	local nCapHuyChuong = self.NhanCap_9;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 9<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 3500 Cái<color>";
	end;

	if (nValue == 11) then
	local nCapHuyChuong = self.NhanCap_10;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 10<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 4000 Cái<color>";
	end;
	
	if (nValue == 12) then
	local nCapHuyChuong = self.NhanCap_11;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 11<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 4500 Cái<color>";
	end;
	
	if (nValue == 13) then
	local nCapHuyChuong = self.NhanCap_12;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 12<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 5000 Cái<color>";
	end;
	
	if (nValue == 14) then
	local nCapHuyChuong = self.NhanCap_13;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 13<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 5500 Cái<color>";
	end;

	if (nValue == 15) then
	local nCapHuyChuong = self.NhanCap_14;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 14<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 6000 Cái<color>";
	end;

	if (nValue == 16) then
	local nCapHuyChuong = self.NhanCap_15;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 15<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 6500 Cái<color>";
	end;
	
	if (nValue == 17) then
	local nCapHuyChuong = self.NhanCap_16;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 16<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 7000 Cái<color>";
	end;
	
	if (nValue == 18) then
	local nCapHuyChuong = self.NhanCap_17;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 17<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 7500 Cái<color>";
	end;
	
	if (nValue == 19) then
	local nCapHuyChuong = self.NhanCap_18;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 18<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 8000 Cái<color>";
	end;

	if (nValue == 20) then
	local nCapHuyChuong = self.NhanCap_19;
	if nLevel < nCapHuyChuong then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Huy Chương chưa đạt cấp <color=cyan>"..nCapHuyChuong.."<color> không thể nhận Cấp <color=red>"..(nCapHuyChuong+1).."<color>!<color>"));
	return 0;
	end
	szMsg = "<color=yellow>Nhận Cấp <color=cyan>1<color>, <color=green>Yêu cầu:\n<color=pink>1)-Đã nhận Cấp 19<color=blue>\n2)-Cần Đặt vào:\n- Chiến Tích Phù Văn: 8500 Cái<color>";
	end;

	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;


function tbHuyChuong:OnOpenGiftOk(nValue, tbItemObj)
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
	if (nValue == 1) then
	local nCapHuyChuong = self.NhanCap_1;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 2) then
	local nCapHuyChuong = self.NhanCap_2;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 3) then
	local nCapHuyChuong = self.NhanCap_3;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 4) then
	local nCapHuyChuong = self.NhanCap_4;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	

	if (nValue == 5) then
	local nCapHuyChuong = self.NhanCap_5;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	if (nValue == 6) then
	local nCapHuyChuong = self.NhanCap_6;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 7) then
	local nCapHuyChuong = self.NhanCap_7;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 8) then
	local nCapHuyChuong = self.NhanCap_8;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 9) then
	local nCapHuyChuong = self.NhanCap_9;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 10) then
	local nCapHuyChuong = self.NhanCap_10;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 11) then
	local nCapHuyChuong = self.NhanCap_11;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 12) then
	local nCapHuyChuong = self.NhanCap_12;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 13) then
	local nCapHuyChuong = self.NhanCap_13;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 14) then
	local nCapHuyChuong = self.NhanCap_14;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 15) then
	local nCapHuyChuong = self.NhanCap_15;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 16) then
	local nCapHuyChuong = self.NhanCap_16;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;
	
	
	if (nValue == 17) then
	local nCapHuyChuong = self.NhanCap_17;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 18) then
	local nCapHuyChuong = self.NhanCap_18;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 19) then
	local nCapHuyChuong = self.NhanCap_19;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	if (nValue == 20) then
	local nCapHuyChuong = self.NhanCap_20;
	me.AddFightSkill(self.nSkill,nCapHuyChuong);
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công từ Hệ thống Nhận Huy Chương!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận thành công <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	
	end;

	
end;

function tbHuyChuong:ChechItem(pItem, tbItemList, tbCountList)
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