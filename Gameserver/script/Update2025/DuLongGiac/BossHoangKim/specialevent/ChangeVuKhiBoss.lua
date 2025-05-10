SpecialEvent = SpecialEvent or {}
SpecialEvent.ChangeVuKhiBoss = {}
local tbEvent = SpecialEvent.ChangeVuKhiBoss

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

-- Hàm kiểm tra vũ khí
local function CheckWeapon(pItem, tbWeaponList)
    local szKeyItem = string.format("%s,%s,%s,%s", pItem.nGenre, pItem.nDetail, pItem.nParticular, pItem.nLevel)

    for _, tbWeaponData in pairs(tbWeaponList) do
        local szKeyData = string.format("%s,%s,%s,%s", tbWeaponData.genre, tbWeaponData.detail, tbWeaponData.particular, tbWeaponData.level)
        if szKeyItem == szKeyData then
            return tbWeaponData -- Trả về dữ liệu của vũ khí nếu tìm thấy
        end
    end

    return nil -- Không tìm thấy vũ khí
end

-- Load danh sách vũ khí khi khởi tạo
WEAPON_LIST = LoadWeaponData(szWeaponListPath)

-- Hiển thị hộp thoại khi người chơi tương tác với NPC
function tbEvent:OnDialog()
    local szMsg = "<color=yellow>Ngươi có mang theo món ta cần?<color>"
    local tbOpt = {
        {"<bclr=0,0,200><color=white>Ta đồng ý đổi Vũ khí", self.StartExchange, self},
        {"Ta chưa chuẩn bị gì!"},
    }
    Dialog:Say(szMsg, tbOpt)
end

-- Bắt đầu quá trình đổi vũ khí
function tbEvent:StartExchange()
    local szMsg = "<color=gold>Hãy đặt vũ khí vào ô để kiểm tra.<color>\nLưu ý: Có thể đặt nhiều vũ khí cùng lúc!"
    Dialog:OpenGift(szMsg, nil, {self.ProcessExchange, self})
end

-- Xử lý logic đổi vũ khí
function tbEvent:ProcessExchange(tbItemObj)
    if not tbItemObj or #tbItemObj == 0 then
        Dialog:Say("Ngươi chưa đặt vật phẩm nào!")
        return 0
    end

    local nTotalCount = 0
    local nTotalRewards = 0
    local tbInvalidItems = {}

    for _, tbItem in ipairs(tbItemObj) do
        local pItem = tbItem[1]
        local tbWeaponData = CheckWeapon(pItem, WEAPON_LIST)

        if tbWeaponData then
            -- Lấy thông tin tên item
            local szItemName = pItem.szName

            -- Xóa vũ khí cũ
            if me.DelItem(pItem) ~= 1 then
                Dialog:Say(string.format("Không thể xóa vật phẩm: %s. Vui lòng thử lại!", szItemName))
                return 0
            end

            -- Xử lý phần thưởng
            local nRandomCount = 0
            if tbWeaponData.value == 1 then
                nRandomCount = MathRandom(0, 20)
            elseif tbWeaponData.value == 2 then
                nRandomCount = MathRandom(0, 50)
            end

            -- Cộng dồn tổng số lượng phần thưởng
            nTotalRewards = nTotalRewards + nRandomCount

            -- Thêm phần thưởng
            if nRandomCount > 0 then
                me.AddStackItem(18, 1, 4038, 1, nil, nRandomCount) -- Thêm phần thưởng dạng stack
            end

            -- Thông báo chi tiết từng vũ khí đổi được
            me.Msg(string.format("<color=yellow>Đổi Thành công <color=cyan>%s<color> lấy <color=green>%d<color> Du Long Giác", szItemName, nRandomCount))

            nTotalCount = nTotalCount + 1
        else
            -- Thêm vào danh sách vật phẩm không hợp lệ
            table.insert(tbInvalidItems, pItem.szName)
        end
    end

    -- Tạo thông báo tổng kết
    local szDialogMsg = string.format("Đổi thành công: <color=yellow>%d<color> Vũ khí ta cần.\nTổng thưởng của ngươi: <color=yellow>%d<color> Du Long Giác.\n", nTotalCount, nTotalRewards)
    if #tbInvalidItems > 0 then
        szDialogMsg = szDialogMsg .. "<color=cyan>Những vật phẩm ta không cần:<color>\n"
        for i, szName in ipairs(tbInvalidItems) do
            szDialogMsg = szDialogMsg .. string.format("%d- %s\n", i, szName)
        end
    end

    -- Hiển thị thông báo dạng hộp thoại
    Dialog:Say(szDialogMsg)
end