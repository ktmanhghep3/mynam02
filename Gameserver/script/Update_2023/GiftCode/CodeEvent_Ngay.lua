local tbCodeEvent_Ngay = {};
SpecialEvent.CodeEvent_Ngay = tbCodeEvent_Ngay;

tbCodeEvent_Ngay.TaskGroup = 4011;
tbCodeEvent_Ngay.TaskID = 1;
tbCodeEvent_Ngay.TaskId_Day = 2;		--Task lưu ngày

tbCodeEvent_Ngay.TaskGroup_SuDungCode = 4019; --Tính lần Sử dụng Code Tháng 8 (Code Ngày)
tbCodeEvent_Ngay.TaskID_SuDungCode = 1;

function tbCodeEvent_Ngay:OnDialog()
DoScript("\\script\\Update_2023\\GiftCode\\CodeEvent_Ngay.lua");
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup, self.TaskId_Day) < nDate then
me.SetTask(self.TaskGroup, self.TaskId_Day, nDate);
me.SetTask(self.TaskGroup, self.TaskID, 0);
end 

	local tbOpt = 
	{
		{"<color=cyan>Nhập mã Code", self.GiftCode, self},
   		{"Kết thúc đối thoại"}
	}
	Dialog:Say("<color=green>Mã Kích hoạt chỉ sử dụng 1 mã/1 lần, hãy chú ý!<color>",tbOpt);
end


function tbCodeEvent_Ngay:GiftCode()
local nGioiHan = me.GetTask(self.TaskGroup, self.TaskID);
if nGioiHan >= 1 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>1 Ngày chỉ dùng 1 lần, ngày mai tham gia Event dùng Code mới!<color>"});
return 0; 
end

	if me.CountFreeBagCell() < 5 then
		Dialog:Say("Cần 5 Ô hành trang, hãy sắp xếp!");
		return 0;
	end
	Dialog:AskString("<color=cyan>Nhập mã Code", 12, self.GiftCode_1, self);
end

function tbCodeEvent_Ngay:GiftCode_1(szCode)
	local INPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\CodeEvent_Ngay.txt";	
	local OUPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\Log_CodeEvent_Ngay.txt";
	local KTra 	= 0;
	--[[if me.GetTask(self.TaskGroup, self.TaskID) > 0 then
		Dialog:Say("<color=yellow>Ngươi đã kích hoạt rồi!<color>");
		return;
	end]]
	
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

function tbCodeEvent_Ngay:KTraPhatCode(szCode)
	local OUPUT_FILE_PATH = "\\script\\Update_2023\\GiftCode\\Log_CodeEvent_Ngay.txt";
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
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},5);
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},1);
		
		local nSoLanDungCode = me.GetTask(self.TaskGroup_SuDungCode,self.TaskID_SuDungCode);	--Tính lần Sử dụng Code Tháng 8
		me.SetTask(self.TaskGroup_SuDungCode,self.TaskID_SuDungCode,nSoLanDungCode + 1);

		local szMsg = "<color=yellow>Chúc mừng <color=green>"..me.szName.."<color> đã nhận GiftCode Hằng ngày thành công!\Phần thưởng: <color=cyan>5 Ngôi Sao May Mắn\n1 Rương Tinh Thạch<color><color>";
		--me.Msg("<color=gold>Ngươi đã Kích hoạt thành công! Hãy chọn vào: <color=green>Bắt đầu hành trình Bôn tẩu Giang hồ<color>!<color>")
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		return 0;
end
