local tbCodeThang7 = {};
SpecialEvent.Code_Thang7 = tbCodeThang7;

tbCodeThang7.TaskGroup = 4007;--TaskGroup Code, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbCodeThang7.TaskID = 1;

tbCodeThang7.TaskGroup_Time = 4000;	--Task Thời Gian
tbCodeThang7.TaskID_Time = 1;			--Task Thời Gian

function tbCodeThang7:OnDialog()	
	local tbOpt = 
	{
		{"<color=cyan>Nhập mã Code", self.GiftCode, self},
   		{"Kết thúc đối thoại"}
	}
	Dialog:Say("<color=green>Mã Kích hoạt chỉ sử dụng 1 mã/1 accout/1 lần duy nhất, hãy chú ý!<color>",tbOpt);
end


function tbCodeThang7:GiftCode()
	if me.CountFreeBagCell() < 10 then
		Dialog:Say("Cần 10 Ô hành trang, hãy sắp xếp!");
		return 0;
	end
	Dialog:AskString("<color=cyan>Nhập mã Code", 12, self.GiftCode_1, self);
end

function tbCodeThang7:GiftCode_1(szCode)
	local INPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\MaCodeThang7.txt";	
	local OUPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\Log_CodeT7DaKichHoat.txt";
	local KTra 	= 0;
	if me.GetTask(self.TaskGroup, self.TaskID) > 0 then
		Dialog:Say("<color=yellow>Ngươi đã kích hoạt rồi!<color>");
		return;
	end
	
	if szCode == "" then
		me.Msg("Nhập mã kích hoạt!");
		return;
	end

	local tbFile = Lib:LoadTabFile(INPUT_FILE_PATH);
	if not tbFile then
		Dialog:Say("Hiện tại không phát mã kích hoạt!");
		return;
	end
		for _, tbRow in pairs(tbFile) do
			local szMaCode 	 	 = tbRow["MaCoDe"] or "";
			if szMaCode == szCode then
				self:KTraPhatCode(szCode);
				KTra = 1;	--CO TIM THAY MA CODE
				return;
			end
		end
	if KTra == 0 then
		Dialog:Say("<color=yellow>Mã Kích hoạt không đúng hoặc không tồn tại!<color>");
	end
end 

function tbCodeThang7:KTraPhatCode(szCode)
	local OUPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\Log_CodeT7DaKichHoat.txt";
	local tbFile2 = Lib:LoadTabFile(OUPUT_FILE_PATH);
	local STT = 1;
	if not tbFile2 then
		me.Msg("Kiểm tra mã Kích hoạt thất bại, vui lòng liên hệ GM!");
		return;
	end
	if szCode == "" then
		me.Msg("Nhập mã kích hoạt!");
		return;
	end
		for _, tbRow in pairs(tbFile2) do
			local szMaCode 	 	 = tbRow["MaCoDe"] or "";
			if szMaCode == szCode then
				Dialog:Say("<color=red>Mã kích hoạt này đã được sử dụng!<color>");
				return;
			end
			STT = STT + 1;
		end
	local szTime	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local nHardWareId = me.dwHardWareId;
	local szOut = STT.."\t" .. szCode .. "\t" .. me.szName .. "\t" .. me.szAccount .. "\t" .. szTime .. "\t" .. szIp .. "\t" .. nHardWareId .. "\n";
	KFile.AppendFile(OUPUT_FILE_PATH, szOut);
	me.SetTask(self.TaskGroup, self.TaskID, 1);
	local tbItemInfo = {bForceBind = 1};
		--PHAN THUONG
		--me.AddLevel(150 - me.nLevel);
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},400);
		
		local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
		me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + 1);


		local szMsg = "<color=yellow>Chúc mừng <color=green>"..me.szName.."<color> đã nhận GiftCode Tháng 7 thành công, nhận phần thưởng:<color=red>/n- Full Danh vọng Sát Thần Cấp 3 (400 Lệnh bài = 2000 điểm Danh vọng Sát Thần PK)\n- Cộng thêm 1 Ngày Online miễn phí<color>!<color>";
		--me.Msg("<color=gold>Ngươi đã Kích hoạt thành công! Hãy chọn vào: <color=green>Bắt đầu hành trình Bôn tẩu Giang hồ<color>!<color>")
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		return 0;
end
