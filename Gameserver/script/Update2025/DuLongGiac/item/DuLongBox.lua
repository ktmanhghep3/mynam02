local tbItemStorage = Item:GetClass("DuLongBox");

tbItemStorage.TASKID_GROUP = 4529;
tbItemStorage.ITEM_DATA = {
    [1] = {name = "Du Long: Trang bị Vô Cực", genre = 18, detail = 1, particular = 4039, level = 1},
    [2] = {name = "Du Long: Vũ khí Thanh Hạ", genre = 18, detail = 1, particular = 4039, level = 2},
    [3] = {name = "Du Long: Vũ khí Thương Phong", genre = 18, detail = 1, particular = 4039, level = 3},
    [4] = {name = "Du Long: Mặt Nạ Cao cấp", genre = 18, detail = 1, particular = 4039, level = 4},
    [5] = {name = "Du Long: Ngoại Trang Vip", genre = 18, detail = 1, particular = 4039, level = 5},
    [6] = {name = "Du Long: Phi Phong Cao Cấp", genre = 18, detail = 1, particular = 4039, level = 6},
    [7] = {name = "Du Long: Tuyệt kỹ Trấn Phái", genre = 18, detail = 1, particular = 4039, level = 7},
    [8] = {name = "Du Long: Bí kiếp Môn phái", genre = 18, detail = 1, particular = 4039, level = 8},
    [9] = {name = "Du Long: Ngựa Cao Cấp", genre = 18, detail = 1, particular = 4039, level = 9},
    [10] = {name = "Du Long: Đồng Hành Cao Cấp", genre = 18, detail = 1, particular = 4039, level = 10},
    [11] = {name = "Du Long: Tuyệt Thế Giang Hồ", genre = 18, detail = 1, particular = 4039, level = 11},
    [12] = {name = "Du Long: Nguyên Liệu Cao Cấp", genre = 18, detail = 1, particular = 4039, level = 12},
};

if MODULE_GAMESERVER then

function tbItemStorage:OnUse()
    local tbOpt = {
        {"<color=yellow>Gửi vật phẩm", self.TakeInItem, self},
        {"<color=cyan>Rút vật phẩm", self.TakeOutItem, self},
        {"Đóng"}
    };
    local szMsg = "Có thể Gửi và Rút vật phẩm thuộc Du Long:\n" .. self:GetTip() .. "";
    Dialog:Say(szMsg, tbOpt);
end;

function tbItemStorage:TakeInItem()
    Dialog:OpenGift("Đặt vật phẩm gửi vào", nil, {self.OnOpenGiftOk, self});
end;

function tbItemStorage:OnOpenGiftOk(tbItemObj)
    local tbItemList = {};
    if self:CheckItem(tbItemObj, tbItemList) == 0 then
        me.Msg("Vật phẩm không thích hợp!")
        return 0;
    end;

    for _, pItem in pairs(tbItemObj) do
        if me.DelItem(pItem[1]) ~= 1 then
            return 0;
        end
    end

    for nId, nCount in pairs(tbItemList) do
        local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
        nCurCount = nCurCount + nCount;
        me.SetTask(self.TASKID_GROUP, nId, nCurCount);
        me.Msg(string.format("Bạn đã gửi %s <color=yellow>%s<color>", nCount, self.ITEM_DATA[nId].name));
    end
    return 1;
end;

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
end;

function tbItemStorage:TakeOutItem(nNowPage)
    local tbOpt = {};
    if not nNowPage then
        nNowPage = 0;
    end
    local nPage = 6;
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
                table.insert(tbOpt, {tbItemData.name .. " (còn " .. nCurCount .. ")", self.SelectItem, self, nId});
            end
        end
    end

    if nCount > (nPage + 1) then
        table.insert(tbOpt, {"Trước", self.TakeOutItem, self, nNowPage - 1});
    end

    tbOpt[#tbOpt + 1] = {"Đóng"};
    local szMsg = "Xin chọn vật phẩm muốn rút";
    Dialog:Say(szMsg, tbOpt);
end;

function tbItemStorage:SelectItem(nId)
    local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
    Dialog:AskNumber("Nhập số lượng: ", nCurCount, self.OnUseTakeOut, self, nId);
end;

function tbItemStorage:OnUseTakeOut(nId, nCount)
    local nCurCount = me.GetTask(self.TASKID_GROUP, nId);
    if nCount <= 0 or nCount > nCurCount then
        me.Msg("Số lượng nhập không đúng!");
        return 0;
    end;
    --if me.CountFreeBagCell() < nCount then
        --Dialog:Say("Túi bạn không đủ chỗ.");
        --return 0;
    --end
    nCurCount = nCurCount - nCount;
    me.SetTask(self.TASKID_GROUP, nId, nCurCount);
    for i = 1, nCount do
        local pItem = me.AddItem(self.ITEM_DATA[nId].genre, self.ITEM_DATA[nId].detail, self.ITEM_DATA[nId].particular, self.ITEM_DATA[nId].level);
    end
end

function tbItemStorage:GetTip()
    local szTip = "";
    for nId, tbItemData in pairs(self.ITEM_DATA) do
        local nItemNum = me.GetTask(self.TASKID_GROUP, nId) or 0;
        local szColor = "white";
        if nItemNum <= 0 then 
            szColor = "gray";
        end
        local szMsg = string.format("<color=%s>", szColor);
        szTip = szTip .. Lib:StrFillL("", 5) .. szMsg .. Lib:StrFillL(tbItemData.name, 30) .. Lib:StrFillL(string.format(": %s", nItemNum), 2) .. "<color>\n";
    end
    return szTip;
end

end