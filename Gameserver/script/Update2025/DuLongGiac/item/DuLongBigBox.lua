local tbItemStorage = Item:GetClass("DuLongBigBox");

tbItemStorage.TASKID_GROUP = 4531;
tbItemStorage.ITEM_DATA = {};

local function LoadItemData()
    local szFilePath = "\\setting\\DuLong\\ListBigItem.txt";
    local tbFile = Lib:LoadTabFile(szFilePath);
    if not tbFile then
        print("Không thể tải file: " .. szFilePath);
        return;
    end
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
end

local function AppendLog(szFilePath, szContent)
    KFile.AppendFile(szFilePath, szContent .. "\n");
end

if MODULE_GAMESERVER then

function tbItemStorage:OnUse()
    LoadItemData();
    local tbOpt = {
        {"<color=cyan>Gửi vật phẩm", self.TakeInItem, self},
        {"<color=cyan>Rút vật phẩm", self.TakeOutItem, self},
        {"Đóng"}
    };
    Dialog:Say("<color=yellow>Có thể Gửi và Rút Tất cả vật phẩm thuộc Du Long Giác", tbOpt);
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
        me.Msg(string.format("Bạn đã gửi %s <color=yellow>%s<color>", nCount, self.ITEM_DATA[nId].name));
        
        -- Ghi log gửi vật phẩm
        local szLogFilePathGui = "\\setting\\DuLong\\Log_BigGuiVatPham.txt";
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
    local nPage = 10; -- Đã cập nhật để hiển thị 10 dòng tùy chọn
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
                table.insert(tbOpt, {string.format("%d - %s (còn %d)", nCount, tbItemData.name, nCurCount), self.SelectItem, self, nId});
            end
        end
    end

    if nCount > (nPage + 1) then
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
    for i = 1, nCount do
        me.AddItem(self.ITEM_DATA[nId].genre, self.ITEM_DATA[nId].detail, self.ITEM_DATA[nId].particular, self.ITEM_DATA[nId].level);
    end

    -- Ghi log rút vật phẩm
    local szLogFilePathRut = "\\setting\\DuLong\\Log_BigRutVatPham.txt";
    local szLogContent = string.format("%s\t%d\t%s\t%s", self.ITEM_DATA[nId].name, nCount, os.date("%Y-%m-%d %H:%M:%S"), me.szName);
    AppendLog(szLogFilePathRut, szLogContent);
end

end