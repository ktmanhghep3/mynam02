
local tbNpc = Npc:GetClass("ctcchefu");
--script\CTC\npc\chefu.lua
tbNpc.nSoLuongOTrong = 10;-- so luong o trong trong tui
tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

function tbNpc:OnDialog(nCheck)
if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
	me.NewWorld(2000, 1626, 3187);
	Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
end

	if CTC:CheckTime() == false then
		Dialog:Say("Hoạt động chưa bắt đầu, vui lòng quay lại sau");
		return;
	end
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if me.GetTask(CTC.nTask_Group, CTC.nTaskId_Day) < nDate then
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Day, nDate);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count, 0);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, 0);
	end 
		local tbOpt = {	
				--{"Báo danh Thiết Phù Thành",self.Register,self},
				{"Truyền tống Thiết Phù Thành",self.chuansong,self},
				{"Kết thúc đối thoại"};
	
			};
						--Jie add
			local nTime = GetTime();
			local nWeekDay = tonumber(os.date("%w", nTime))
			local nCurTime = tonumber(os.date("%H%M", nTime))
			--if nCurTime >= CTC.START_TIME_GS and nCurTime < CTC.END_TIME_GS then
			if CTC.Show_Line_BD == 1 then
				table.insert(tbOpt,1, {"Báo danh Thiết Phù Thành",self.Register,self});
			end
			if CTC.Show_Line_NT == 1  and nCurTime >= CTC.ENDTIME then
				table.insert(tbOpt,3, {"Nhận Thưởng <color=yellow>(Thành Viên)<color>",self.NhanThuongTV,self});
				--table.insert(tbOpt,4, {"Nhận Thưởng <color=yellow>(Bang Chủ)<color>",self.NhanThuongBC,self});
			end
Dialog:Say("Ngươi muốn đến Thiết Phù Thành chứ?",tbOpt)
end
function tbNpc:NhanThuongBC()
	local pTong = KTong.GetTong(me.dwTongId);
	if not pTong then
		Dialog:Say("Bạn không trong bang hội, không thể sử dụng chức năng này")
		return 0;
	end	
	local szTongName = pTong.GetName();
	local szFile = CTC.Folder..CTC.List.."";
	local nCheck = 0 ;
	local nRank = 0;
	local nCount = me.GetTask(CTC.nTask_Group, CTC.nTaskId_Count);
	local nTime = GetTime();
	local nWeekDay = tonumber(os.date("%w", nTime))
	-- if nWeekDay ~= CTC.WEEKDAY then
	if CTC.WEEKDAY[nWeekDay] ~= 1 then
		Dialog:Say("Chỉ đươc nhận thưởng trong ngày diễn ra sự kiện");
		return 0;
	end
	if nCount > 0 then
		Dialog:Say("Mỗi người chỉ có thể nhận 1 lần");
		return 0;
	end	
	if me.CountFreeBagCell() < self.nSoLuongOTrong then
		Dialog:Say("Hành trang ít nhất "..self.nSoLuongOTrong.." ô trống !!",tbOpt);
		return 0;	
	end;
	local nCheck_BC = 0;
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	if Tong:CheckPresidentRight(me.dwTongId, nSelfKinId, nSelfMemberId) ~= 1 then
		Dialog:Say("Chỉ có bang chủ mới có thể thao tác.");
		nCheck_BC = 1 ; --1 la member
		return 0;
	end	
	
	if szFile then 
		local tbFile =  Lib:LoadTabFile(szFile);
			for nIndex, tbRow  in ipairs(tbFile) do
				if szTongName == tbRow.szTongName and me.szName == tbRow.szName then						
					nRank = tonumber(tbRow.Rank);
				end
			end
	end	
	if nRank ~= 1 then
		Dialog:Say("Không có xếp hạng lần trước không thể nhận");
		return 0;
	end


	
	
	--[[if nRank == 1 then
		me.AddStackItem(18,1,3080,1,nil,1);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
	elseif nRank == 2 then
		me.AddStackItem(18,1,3080,2,nil,1);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
	elseif nRank == 3 then
		me.AddStackItem(18,1,3080,3,nil,1);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
	elseif nRank == 4 then
		me.AddStackItem(18,1,3080,4,nil,1);
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
	end]]

	--[[
	for szThuong, tbUseRateItem in pairs(CTC.PhanThuong_BC[nRank]) do
		if szThuong == "Item1" then
			local tbItemInfo = {bForceBind = 1};
			me.AddStackItem(tbUseRateItem[1][1], tbUseRateItem[1][2], tbUseRateItem[1][3], tbUseRateItem[1][4], tbItemInfo, tbUseRateItem[2]);
		elseif szThuong == "BacThuong" then	
			me.Earn(tbUseRateItem,0);
		elseif szThuong == "DanhHieu" then	
			me.AddTitle(tbUseRateItem[1], tbUseRateItem[2], tbUseRateItem[3], tbUseRateItem[4]);
			me.SetCurTitle(tbUseRateItem[1], tbUseRateItem[2], tbUseRateItem[3], tbUseRateItem[4]);	
		elseif szThuong == "KinhNghiem" then	
			me.AddExp(tbUseRateItem);
		end	
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count, nCount + 1);
	end
	]]
	
end
function tbNpc:NhanThuongTV()
	local pTong = KTong.GetTong(me.dwTongId);
	if not pTong then
		Dialog:Say("Bạn không trong bang hội, không thể sử dụng chức năng này")
		return 0;
	end	
	local szTongName = pTong.GetName();
	local szFile = CTC.Folder..CTC.List.."";
	local nRank = 0;
	local nCount = me.GetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV);
	local nTime = GetTime();
	local nWeekDay = tonumber(os.date("%w", nTime))
	-- if nWeekDay ~= CTC.WEEKDAY then
	if CTC.WEEKDAY[nWeekDay] ~= 1 then
		Dialog:Say("Chỉ đươc nhận thưởng trong ngày diễn ra sự kiện");
		return 0;
	end
	if nCount > 0 then
		Dialog:Say("Mỗi người chỉ có thể nhận 1 lần");
		return 0;
	end
	if me.CountFreeBagCell() < self.nSoLuongOTrong then
		Dialog:Say("Hành trang ít nhất "..self.nSoLuongOTrong.." ô trống !!",tbOpt);
		return 0;	
	end;	
	if szFile then 
		local tbFile =  Lib:LoadTabFile(szFile);
			for nIndex, tbRow  in ipairs(tbFile) do
				if szTongName == tbRow.szTongName and me.szName == tbRow.szName then						
					nRank = tonumber(tbRow.Rank);
				end
			end
	end
	local nCheck_BC = 0;
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	if Tong:CheckPresidentRight(me.dwTongId, nSelfKinId, nSelfMemberId) ~= 1 then
		--Dialog:Say("Chỉ có bang chủ mới có thể thao tác.");
		nCheck_BC = 1 ; --1 la member
		--return 0;
	end	
	if nRank == 0 then
		Dialog:Say("Không có trong Danh sách Xếp hạng, không thể nhận!");
		return 0;
	end
	
	--if nCheck_BC == 0 and nRank == 1 then
		--Dialog:Say("Bang chủ TOP 1 không thể thao tác nhận thưởng Thành Viên");
		--return 0;	
	--end

	-- Add Phan Thuong
	if nRank == 1 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},25);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},3);--Rương Tinh Thạch
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},2500);--Bí Ẩn Sát Thần
		me.AddStackItem(18,1,3101,1,{bForceBind=1,},5);--Túi Thẻ Hoạt Động
		me.AddStackItem(18,1,3941,3,nil,20);--Mảnh Hiệp Khách (Chưa Giám Định)
		
		--me.AddStackItem(18,1,4018,1,{bForceBind=1,},2);--Túi Quà: Lì Xì Thần Tài
	--------------------------------------
	elseif nRank == 2 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},1000);--Bí Ẩn Sát Thần
		me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
		
		--me.AddStackItem(18,1,4018,1,{bForceBind=1,},1);--Túi Quà: Lì Xì Thần Tài
	--------------------------------------

	elseif nRank == 3 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},10);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},1);--Rương Tinh Thạch
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
		me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
	elseif nRank == 4 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},5);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},1);--Rương Tinh Thạch
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
		me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
	end
--[[
	for szThuong, tbUseRateItem in pairs(CTC.PhanThuong_TV[nRank]) do
		if szThuong == "Item1" then
			local tbItemInfo = {bForceBind = 1};
			me.AddStackItem(tbUseRateItem[1][1], tbUseRateItem[1][2], tbUseRateItem[1][3], tbUseRateItem[1][4], tbItemInfo, tbUseRateItem[2]);
		elseif szThuong == "BacThuong" then	
			me.Earn(tbUseRateItem,0);
		elseif szThuong == "DanhHieu" then	
			me.AddTitle(tbUseRateItem[1], tbUseRateItem[2], tbUseRateItem[3], tbUseRateItem[4]);
			me.SetCurTitle(tbUseRateItem[1], tbUseRateItem[2], tbUseRateItem[3], tbUseRateItem[4]);	
		elseif szThuong == "KinhNghiem" then	
			me.AddExp(tbUseRateItem);
		end	
		me.SetTask(CTC.nTask_Group, CTC.nTaskId_Count_TV, nCount + 1);
	end
	]]
	
end
function tbNpc:QuayVe()
	me.NewWorld(29,1657,3935);
end
function tbNpc:chuansong()
	Dialog:Say("Ngươi muốn đến Thiết Phù Thành chứ?",
			{

				{"Đồng ý", self.OnTransTotiefucheng, self},
				{"Để suy nghĩ lại đã"},	
			}
		);
end

function tbNpc:Register()
	local nSelfKinId, nSelfMemberId = me.GetKinMember();
	if Tong:CheckPresidentRight(me.dwTongId, nSelfKinId, nSelfMemberId) ~= 1 then
		Dialog:Say("Chỉ có bang chủ mới có thể đăng ký.");
		return 0;
	end
	if #CTC.TongList >= CTC.MAXTONG then
		Dialog:Say("Hiện tại đã đủ "..CTC.MAXTONG.." Bang hội tham gia. Vui lòng quay lại sau.");
		return 0;
	end
	--local cTong = KTong.GetTong(me.dwTongId);
	for i = 1,#CTC.TongList do
		if CTC.TongList[i] == me.dwTongId then
		Dialog:Say("Bang hội của bạn đã đăng ký");
		return;
		end
	end
	
	table.insert(CTC.TongList,me.dwTongId);
	table.insert(CTC.Result,{me.dwTongId,0});
	Dialog:Say("Báo danh thành công");
	Player:SendMsgToKinOrTong(me, " đăng ký thành công CTC", 1);
	KTong.Msg2Tong(me.dwTongId, "Bang chủ "..me.szName.. " báo danh thành công Công Thành Chiến");
	--print(#CTC.TongList);
	
end
--script\CTC\npc\chefu.lua

function tbNpc:OnTransTotiefucheng()
	if CTC:Check()== false then
	return;
	end

	--Jie add HWID
	local szFile_HWID = CTC.Folder..CTC.List_HWID.."";
	local nCheck_HWID = 0;
	local nCount_HWID = 0;
	local nHardWareId = me.dwHardWareId;
	local nNum = 0;
	if szFile_HWID then 
		local tbFile =  Lib:LoadTabFile(szFile_HWID);
			for nIndex, tbRow  in ipairs(tbFile) do
				if (nHardWareId == tonumber(tbRow.nHWID)) and (tonumber(tbRow.nNum) >= CTC.Max_HWID)  then	--khac name va vuot qua hwid
					if me.szName ~= tbRow.szName then
					--	nCheck_HWID = 1;				
					end
			--[[	elseif (nHardWareId == tonumber(tbRow.nHWID)) and (tonumber(tbRow.nNum) < 2) then -- truong hop trung hwid va khac name
					nCount_HWID = tonumber(tbRow.nNum);
					if me.szName ~= tbRow.szName then
						nCheck_HWID = 2;
					end ]]
				end
				
			end
	end	
	--me.Msg("nCheck_HWID " ..nCheck_HWID.." - "..nNum.."");
	if nCheck_HWID == 1 then
		Dialog:Say("Giới hạn đã được mở chỉ có thể vào tối đa "..CTC.Max_HWID.." nhân vật");
		return;
	end

	if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
		me.NewWorld(2000, 1626, 3187);
		Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return;
	end
	
	if nCheck_HWID == 0 then
		CTC:WriteFile_HWID(me,0,0);--me: truyen bien player,0: nCount ,0: ghi mới or 1: update thông tin có trước
--	elseif nCheck_HWID == 2 then
	--	CTC:WriteFile_HWID(me,nCount_HWID,0);-- ghi thong tin ng thu 2
	--	CTC:WriteFile_HWID(me,nCount_HWID,1); -- update thong tin ng thu 1
	end

	-------------------------------------
	table.insert(CTC.PlayerList,me.nId);
	for i = 1,#CTC.TongList do
		if me.dwTongId == CTC.TongList[i] then
			me.SetTmpDeathPos(unpack(CTC.MapPos_Prepare[i]));-- set diem luu chet tam
			me.SetFightState(0);-- tat pk
			me.SetCurCamp(i);--set cam
			me.NewWorld(unpack(CTC.MapPos_Prepare[i]));-- move ra ngoai--
		end
	end

	--Jie add---------
	local szFile = CTC.Folder..CTC.List.."";
	local nCheck = 0 ;
	if szFile then 
		local tbFile =  Lib:LoadTabFile(szFile);
			for nIndex, tbRow  in ipairs(tbFile) do
				if me.szName == tbRow.szName then						
					nCheck = 1;
				end
			end
	end	
	if nCheck < 1 then
		CTC:WriteFile(me,0,0);--me: truyen bien player,0: xep hang rank ,0: ghi mới or 1: update thông tin có trước
	end
	-----------------------------------
	--script\CTC\npc\chefu.lua
	--ClearMapNpc(CTC.MapID);
end

