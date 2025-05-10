local tbItem = Item:GetClass("DuLongGiac_TuiVuKhiBoss")

-- Đường dẫn file dữ liệu
local szWeaponListPath = "\\setting\\DuLong\\ListVuKhiBoss_Change.txt"

-- Danh sách vũ khí
local WEAPON_LIST = {}

-- Hàm load dữ liệu từ file .txt
local function LoadWeaponData(szFilePath)
    local tbWeaponData = {}
    local tbFile = Lib:LoadTabFile(szFilePath)

    if not tbFile then
        print("Không thể tải file: " .. szFilePath)
        return tbWeaponData
    end

    for _, tbRow in ipairs(tbFile) do
        local nId = #tbWeaponData + 1
        tbWeaponData[nId] = {
            genre = tonumber(tbRow.Genre),
            detail = tonumber(tbRow.DetailType),
            particular = tonumber(tbRow.ParticularType),
            level = tonumber(tbRow.Level),
            value = tonumber(tbRow.Value),
        }
    end

    return tbWeaponData
end

-- Kiểm tra ô trống hành trang
local function CheckFreeBagCells(nRequiredCells)
    if me.CountFreeBagCell() < nRequiredCells then
        Dialog:Say(string.format("Hãy chú ý sắp xếp hành trang có đủ %d ô trống", nRequiredCells))
        return false
    end
    return true
end

-- Tải danh sách vũ khí
WEAPON_LIST = LoadWeaponData(szWeaponListPath)

-- Hàm mở túi quà
function tbItem:OnUse()
    -- Kiểm tra hành trang phải có ít nhất 10 ô trống
    if not CheckFreeBagCells(10) then
        return 0
    end

    if not WEAPON_LIST or #WEAPON_LIST == 0 then
        me.Msg("Danh sách vũ khí rỗng hoặc không thể tải.")
        return 0
    end

    -- Xác định số lượng vật phẩm ngẫu nhiên
    local nRandom = MathRandom(1, 100)
    local nItemCount = 0

    -- Tỷ lệ mở ra số lượng vật phẩm
    if nRandom <= 50 then
        nItemCount = MathRandom(0, 3)  -- 50% cơ hội mở ra từ 0 đến 3 vật phẩm
    elseif nRandom <= 85 then
        nItemCount = MathRandom(4, 7)  -- 35% cơ hội mở ra từ 4 đến 7 vật phẩm
    else
        nItemCount = MathRandom(8, 10) -- 15% cơ hội mở ra từ 8 đến 10 vật phẩm
    end

    local tbRewards = {}

    for _ = 1, nItemCount do
        local nRandomItem = MathRandom(1, 100) -- Xác định tỷ lệ random vật phẩm
        local tbFilteredItems = {}

        -- Lọc item theo Value
        for _, tbWeapon in ipairs(WEAPON_LIST) do
            if tbWeapon.value == 1 and nRandomItem <= 80 then
                table.insert(tbFilteredItems, tbWeapon)
            elseif tbWeapon.value == 2 and nRandomItem > 80 then
                table.insert(tbFilteredItems, tbWeapon)
            end
        end

        -- Chọn ngẫu nhiên từ danh sách đã lọc
        if #tbFilteredItems > 0 then
            local nIndex = MathRandom(1, #tbFilteredItems)
            local tbSelectedItem = tbFilteredItems[nIndex]
            table.insert(tbRewards, tbSelectedItem)
        end
    end

    -- Hiển thị kết quả
    if #tbRewards == 0 then
        me.Msg("Bạn không nhận được vật phẩm nào từ túi quà.")
        return 1
    end

    local szMsg = string.format("Ngươi may mắn nhận <color=cyan>%d<color> Vũ khí sau:\n", #tbRewards)
    for i, tbItemData in ipairs(tbRewards) do
        -- Thêm item vào túi của người chơi
        local pItem = me.AddItem(tbItemData.genre, tbItemData.detail, tbItemData.particular, tbItemData.level)
        if pItem then
            local szColor = "<color=green>" -- Mặc định là màu cho Tốt
            local szType = "[Tốt]"          -- Mặc định là Tốt
            if tbItemData.value == 2 then
                szColor = "<color=yellow>" -- Màu cho Hiếm
                szType = "[Hiếm]"         -- Hiển thị Hiếm
            end
            szMsg = szMsg .. string.format("%s%d- %s %s<color>\n", szColor, i, pItem.szName, szType)
        else
            me.Msg(string.format("Không thể thêm vật phẩm: Genre=%d, Detail=%d, Particular=%d, Level=%d", 
                tbItemData.genre, tbItemData.detail, tbItemData.particular, tbItemData.level))
        end
    end

    me.Msg(szMsg)
    return 1
end