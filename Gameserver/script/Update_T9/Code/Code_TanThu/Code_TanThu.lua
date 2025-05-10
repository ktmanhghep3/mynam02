local tbCode = Npc:GetClass("Code_TanThu");

tbCode.TaskGroup = 4030;--TaskGroup Code, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbCode.TaskID = 1;


function tbCode:OnDialog()	
	local tbOpt = 
	{
		{"<color=cyan>Nhập mã Code", self.GiftCode, self},
   		{"Kết thúc đối thoại"}
	}
	Dialog:Say("<color=green>Mã Code chỉ dùng 1 lần!<color>",tbOpt);
end


function tbCode:GiftCode()
	if me.CountFreeBagCell() < 10 then
		Dialog:Say("Cần 10 Ô hành trang, hãy sắp xếp!");
		return 0;
	end
	Dialog:AskString("<color=cyan>Nhập mã Code", 12, self.GiftCode_1, self);
end

function tbCode:GiftCode_1(szCode)
	local INPUT_FILE_PATH = "\\script\\Update_T9\\Code\\Code_TanThu\\CheckMaCode.txt";--	
	local OUPUT_FILE_PATH = "\\script\\FILE_LOG\\Log_CodeTanThu.txt";--
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

function tbCode:KTraPhatCode(szCode)
	local OUPUT_FILE_PATH = "\\script\\FILE_LOG\\Log_CodeTanThu.txt";--
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
	
--PHAN THUONG
me.AddLevel(180 - me.nLevel);
me.AddStackItem(18,1,3001,1,{bForceBind=1,},250);
me.AddStackItem(18,1,377,1,{bForceBind=1,},300);
me.AddStackItem(1,14,50,4,{bForceBind=1,},1);--Như Lai Quyết Cấp 1
me.AddStackItem(1,14,70,4,{bForceBind=1,},1);--Dương Gia Quyết Cấp 1
me.AddStackItem(1,14,90,4,{bForceBind=1,},1);--Đường Gia Quyết Cấp 1
me.AddStackItem(1,14,110,4,{bForceBind=1,},1);--Tây Vực Bí Chú Cấp 1
me.AddStackItem(1,14,130,4,{bForceBind=1,},1);--Thánh Hỏa Minh Tâm Cấp 1
me.AddStackItem(1,14,150,4,{bForceBind=1,},1);--Cửu Âm Thần Công Cấp 1
me.AddStackItem(1,14,170,4,{bForceBind=1,},1);--Băng Tâm Quyết Cấp 1
me.AddStackItem(1,14,190,4,{bForceBind=1,},1);--Đoàn Gia Tâm Quyết Cấp 1
me.AddStackItem(1,14,210,4,{bForceBind=1,},1);--Cuồng Long Quyết Cấp 1
me.AddStackItem(1,14,230,4,{bForceBind=1,},1);--Liệt Hỏa Tâm Pháp Cấp 1
me.AddStackItem(1,14,250,4,{bForceBind=1,},1);--Cửu Dương Thần Công Cấp 1
me.AddStackItem(1,14,270,4,{bForceBind=1,},1);--Trấn Lôi Liệt Quyết Cấp 1

		


		local szMsg = "<color=yellow>Chúc mừng <color=green>"..me.szName.."<color> đã nhận Code Tân Thủ thành công!<color>";
		--me.Msg("<color=gold>Ngươi đã Kích hoạt thành công! Hãy chọn vào: <color=green>Bắt đầu hành trình Bôn tẩu Giang hồ<color>!<color>")
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		return 0;
end
