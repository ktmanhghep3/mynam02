local tbHuyDongQuy = {};
SpecialEvent.Donate_HuyDongQuy = tbHuyDongQuy;

-- **Thông báo (có thể chỉnh sửa nhanh chóng)**
tbHuyDongQuy.MessageSuccess = "<bclr=0,0,200><color=white>Người chơi: [%s] đã nhận thành công quà huy động quỹ:\n%s";
tbHuyDongQuy.MessageAlreadyClaimed = "<bclr=0,0,200><color=red>Phần thưởng này bạn đã nhận rồi! Hãy kiểm tra lại!<color>";
tbHuyDongQuy.MessageFileError = "<bclr=0,0,200><color=red>Không thể tải danh sách phần thưởng! Vui lòng kiểm tra file cấu hình!<color>";

-- **Danh sách tài khoản hợp lệ**
tbHuyDongQuy.AccountList = {
    "TaiKhoan_01", "TaiKhoan_02", "TaiKhoan_03", 
    "TaiKhoan_04", "TaiKhoan_05", "TaiKhoan_06",
    "TaiKhoan_07", "TaiKhoan_08", "TaiKhoan_09",
}

-- **Task variables**
tbHuyDongQuy.TaskGroup_Nhan = 4536;
tbHuyDongQuy.TaskID_Nhan = 1;

-- **Log file path**
tbHuyDongQuy.LogFilePath = "\\script\\FILE_LOG\\Log_HuyDongQuy.txt";

-- **Path to the reward list file**
tbHuyDongQuy.RewardFilePath = "\\script\\Update2025\\Spec_Code\\ListQua_HuyDongQuy.txt";

-- **Hàm kiểm tra tài khoản có hợp lệ**
function tbHuyDongQuy:IsEligible(account)
    for _, acc in ipairs(self.AccountList) do
        if acc == account then
            return true;
        end
    end
    return false;
end

-- **Hàm load danh sách phần thưởng từ file .txt**
local function LoadRewardList(szFilePath)
    local tbRewardList = {};
    local tbFile = Lib:LoadTabFile(szFilePath);

    if not tbFile then
        print("Không thể tải file: " .. szFilePath);
        return nil;
    end

    for _, tbRow in ipairs(tbFile) do
        table.insert(tbRewardList, {
            Name = tbRow.Name,
            Genre = tonumber(tbRow.Genre),
            DetailType = tonumber(tbRow.DetailType),
            ParticularType = tonumber(tbRow.ParticularType),
            Level = tonumber(tbRow.Level),
            Quantity = tonumber(tbRow.SoLuong) or 1, -- Mặc định số lượng là 1 nếu không có giá trị
        });
    end

    return tbRewardList;
end

-- **Hàm mở dialog và hiển thị thông tin**
function tbHuyDongQuy:OnDialog()
    local szIp = me.GetPlayerIpAddress();
    local Time = os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
    local szMsg = string.format(
        "<bclr=0,0,200><color=white>- Thời gian: <color=cyan>%s<color>\n".. 
        "<bclr=0,0,200><color=white>- Tên nhân vật: <color=cyan>%s<color>\n".. 
        "<bclr=0,0,200><color=white>- Tài khoản Game: <color=cyan>%s<color>\n".. 
        "<bclr=0,0,200><color=white>- IP: <color=yellow>%s<color>\n",
        Time, me.szName, me.szAccount, szIp
    );

    local tbOpt = {};
    if self:IsEligible(me.szAccount) then
        table.insert(tbOpt, {"<bclr=0,0,200><color=white>Nhận Thưởng 2<color>", self.NhanQua_Donate, self});
    end

    Dialog:Say(szMsg, tbOpt);
end

-- **Hàm nhận thưởng**
function tbHuyDongQuy:NhanQua_Donate()
    local CheckNhan = me.GetTask(self.TaskGroup_Nhan, self.TaskID_Nhan);
    if CheckNhan ~= 0 then
        me.CallClientScript({"UiManager:OpenWindow", "UI_INFOBOARD", self.MessageAlreadyClaimed});
        return;
    end

    local rewardList = LoadRewardList(self.RewardFilePath);
    if not rewardList then
        me.CallClientScript({"UiManager:OpenWindow", "UI_INFOBOARD", self.MessageFileError});
        return;
    end

    local rewardDetails = "";
    local logEntry = string.format("\n%s\t%s\t%s\n", me.szAccount, me.szName, os.date("%Y-%m-%d %H:%M:%S", GetTime()));

    for _, item in ipairs(rewardList) do
        me.AddStackItem(item.Genre, item.DetailType, item.ParticularType, item.Level, nil, item.Quantity);
        rewardDetails = rewardDetails .. string.format("✬ %d %s\n", item.Quantity, item.Name);
        logEntry = logEntry .. string.format("%s\t%d\n", item.Name, item.Quantity);
    end

    KFile.AppendFile(self.LogFilePath, logEntry);
    me.SetTask(self.TaskGroup_Nhan, self.TaskID_Nhan, 1);

    local szMsg = string.format(self.MessageSuccess, me.szName, rewardDetails);
    KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
    KDialog.MsgToGlobal(szMsg);
end