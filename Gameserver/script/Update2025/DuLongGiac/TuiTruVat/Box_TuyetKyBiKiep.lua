local tbItemStorage = Item:GetClass("Box_TuyetKyBiKiep");

tbItemStorage.TASKID_GROUP = 4535;
tbItemStorage.ITEM_DATA = {};  -- Dữ liệu vật phẩm
tbItemStorage.ITEM_CACHE = {}; -- Cache dữ liệu số lượng item
tbItemStorage.DATA_LOADED = false; -- Cờ kiểm tra dữ liệu đã được tải
tbItemStorage.DISPLAY_ITEM_LIST = 0;  -- 0 tắt, 1 bật
tbItemStorage.FILE_PATHS = {
    ITEM_DATA = "\\setting\\DuLong\\List_TuyetKyBiKiep.txt",
    LOG_BIG_GUI_VAT_PHAM = "\\setting\\DuLong\\Box_TuyetKyBiKiep_LogGui.txt",
    LOG_BIG_RUT_VAT_PHAM = "\\setting\\DuLong\\Box_TuyetKyBiKiep_LogRut.txt"
};

-- Tải dữ liệu vật phẩm một lần
local function LoadItemData()
    if tbItemStorage.DATA_LOADED then
        return; -- Nếu dữ liệu đã được tải, không tải lại
    end

    local szFilePath = tbItemStorage.FILE_PATHS.ITEM_DATA;
    local tbFile = Lib:LoadTabFile(szFilePath);
    if not tbFile then
        print("Không thể tải file: " .. szFilePath);
        return;
    end

    tbItemStorage.ITEM_DATA = {}; -- Reset dữ liệu trước khi tải
    for _, tbRow in ipairs(tbFile) do
        local nId = #tbItemStorage.ITEM_DATA + 1;
        tbItemStorage.ITEM_DATA[nId] = {
            name = tbRow.Name,
            genre = tonumber(tbRow.Genre),
            detail = tonumber(tbRow.DetailType),
            particular = tonumber(tbRow.ParticularType),
            level = tonumber(tbRow.Level),
        };
    end

    tbItemStorage.DATA_LOADED = true; -- Đánh dấu dữ liệu đã được tải
end

-- Ghi log
local function AppendLog(szFilePath, szContent)
    local bSuccess = KFile.AppendFile(szFilePath, szContent .. "\n");
    if not bSuccess then
        print("Không thể ghi log: " .. szFilePath);
    end
end

-- Lấy danh sách vật phẩm với cache
local function GetItemList()
    local tbItemList = {};
    local nIndex = 1;

    -- Kiểm tra cache
    if next(tbItemStorage.ITEM_CACHE) == nil then
        for nId, tbItemData in pairs(tbItemStorage.ITEM_DATA) do
            local nCurCount = me.GetTask(tbItemStorage.TASKID_GROUP, nId);
            if nCurCount > 0 then
                tbItemStorage.ITEM_CACHE[nId] = nCurCount; -- Cập nhật cache
            end
        end
    end

    -- Duyệt cache để tạo danh sách
    for nId, nCurCount in pairs(tbItemStorage.ITEM_CACHE) do
        if nCurCount > 0 then
            table.insert(tbItemList, string.format("%d. %s: %d", nIndex, tbItemStorage.ITEM_DATA[nId].name, nCurCount));
            nIndex = nIndex + 1;
        end
    end
    return tbItemList;
end

if MODULE_GAMESERVER then

function tbItemStorage:OnUse()
    LoadItemData(); -- Chỉ tải dữ liệu một lần
    local tbOpt = {
        {"<color=cyan>Gửi vật phẩm", self.TakeInItem, self},
        {"<color=cyan>Rút vật phẩm", self.TakeOutItem, self},
        {"Đóng"}
    };

    local szDialogMsg = "Vật phẩm thuộc Tuyệt kỹ-Bí kiếp Môn phái:";
    if tbItemStorage.DISPLAY_ITEM_LIST == 1 then
        local tbItemList = GetItemList();
        local szItemList = table.concat(tbItemList, "\n");
        szDialogMsg = szDialogMsg .. "\n" .. szItemList;
    end

    Dialog:Say(szDialogMsg, tbOpt);
end

function tbItemStorage:TakeInItem()
    Dialog:OpenGift("Đặt vật phẩm gửi vào", nil, {self.OnOpenGiftOk, self});
end

function tbItemStorage:OnOpenGiftOk(tbItemObj)
    local tbItemList = {};
    if self:CheckItem(tbItemObj, tbItemList) == 0 then
        me.Msg("Vật phẩm không thích hợp!");
        return 0;
    end

    for _, pItem in pairs(tbItemObj) do
        if me.DelItem(pItem[1]) ~= 1 then
            return 0;
        end
    end

    for nId, nCount in pairs(tbItemList) do
        local nCurCount = me.GetTask(self.TASKID_GROUP, nId) + nCount;
        me.SetTask(self.TASKID_GROUP, nId, nCurCount);
        tbItemStorage.ITEM_CACHE[nId] = nCurCount; -- Cập nhật cache
        me.Msg(string.format("Bạn đã gửi %s <color=yellow>%s<color>", nCount, self.ITEM_DATA[nId].name));
        
        -- Ghi log gửi vật phẩm
        local szLogFilePathGui = tbItemStorage.FILE_PATHS.LOG_BIG_GUI_VAT_PHAM;
        local szLogContent = string.format("%s\t%d\t%s\t%s", self.ITEM_DATA[nId].name, nCount, os.date("%Y-%m-%d %H:%M:%S"), me.szName);
        AppendLog(szLogFilePathGui, szLogContent);
    end
    return 1;
end

function tbItemStorage:CheckItem(tbItemObj, tbItemList)
    for _, pItem in pairs(tbItemObj) do
        local bFound = false;
        for nId, tbItemData in pairs(self.ITEM_DATA) do
            if pItem[1].nGenre == tbItemData.genre and pItem[1].nDetail == tbItemData.detail and 
               pItem[1].nParticular == tbItemData.particular and pItem[1].nLevel == tbItemData.level then
                tbItemList[nId] = (tbItemList[nId] or 0) + pItem[1].nCount;
                bFound = true;
                break;
            end
        end
        if not bFound then
            return 0;
        end
    end
    return 1;
end

function tbItemStorage:TakeOutItem(nNowPage)
    local tbOpt = {};
    nNowPage = nNowPage or 0;
    local nPage = 10; -- Hiển thị 10 dòng mỗi trang
    local nCount = nNowPage * nPage;
    local nSum = 0;
    
    for nId, tbItemData in pairs(self.ITEM_DATA) do
        local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
        if nCurCount > 0 then
            nSum = nSum + 1;
            if nSum > nCount then
                nCount = nCount + 1;
                if nCount > (nPage * (nNowPage + 1)) then
                    table.insert(tbOpt, {"Sau", self.TakeOutItem, self, nNowPage + 1});
                    break;
                end
                table.insert(tbOpt, {string.format("%d - %s: %d", nSum, tbItemData.name, nCurCount), self.SelectItem, self, nId});
            end
        end
    end

    if nCount > nPage then
        table.insert(tbOpt, {"Trước", self.TakeOutItem, self, nNowPage - 1});
    end

    table.insert(tbOpt, {"Đóng"});
    Dialog:Say("Xin chọn vật phẩm muốn rút", tbOpt);
end

function tbItemStorage:SelectItem(nId)
    local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
    Dialog:AskNumber("Nhập số lượng: ", nCurCount, self.OnUseTakeOut, self, nId);
end

function tbItemStorage:OnUseTakeOut(nId, nCount)
    local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
    if nCount <= 0 or nCount > nCurCount then
        me.Msg("Số lượng nhập không đúng!");
        return 0;
    end
    nCurCount = nCurCount - nCount;
    me.SetTask(self.TASKID_GROUP, nId, nCurCount);
    tbItemStorage.ITEM_CACHE[nId] = nCurCount; -- Cập nhật cache
    for i = 1, nCount do
        me.AddItem(self.ITEM_DATA[nId].genre, self.ITEM_DATA[nId].detail, self.ITEM_DATA[nId].particular, self.ITEM_DATA[nId].level);
    end

    -- Ghi log rút vật phẩm
    local szLogFilePathRut = tbItemStorage.FILE_PATHS.LOG_BIG_RUT_VAT_PHAM;
    local szLogContent = string.format("%s\t%d\t%s\t%s", self.ITEM_DATA[nId].name, nCount, os.date("%Y-%m-%d %H:%M:%S"), me.szName);
    AppendLog(szLogFilePathRut, szLogContent);
end

end