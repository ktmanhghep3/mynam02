SpecialEvent = SpecialEvent or {}
SpecialEvent.DoiNgoaiTrang_Ao = {}
local tbEvent = SpecialEvent.DoiNgoaiTrang_Ao

-- Đường dẫn file dữ liệu
local szOldItemPath = "\\setting\\DuLong\\NgoaiTrang_Cu.txt"
local szNewItemPath = "\\setting\\DuLong\\NgoaiTrang_Moi.txt"

-- Danh sách vật phẩm
local ITEM_CU = {}
local ITEM_MOI = {}

-- Hàm load dữ liệu từ file .txt
local function LoadItemData(szFilePath)
    local tbItemData = {}
    local tbFile = Lib:LoadTabFile(szFilePath)

    if not tbFile then
        print("Không thể tải file: " .. szFilePath)
        return tbItemData
    end

    for _, tbRow in ipairs(tbFile) do
        local nId = #tbItemData + 1
        tbItemData[nId] = {
            genre = tonumber(tbRow.Genre),
            detail = tonumber(tbRow.DetailType),
            particular = tonumber(tbRow.ParticularType),
            level = tonumber(tbRow.Level),
        }
    end

    return tbItemData
end

-- Hàm kiểm tra vật phẩm
local function CheckItem(pItem, tbItemList)
    local szKeyItem = string.format("%s,%s,%s,%s", pItem.nGenre, pItem.nDetail, pItem.nParticular, pItem.nLevel)

    for nId, tbItemData in pairs(tbItemList) do
        local szKeyData = string.format("%s,%s,%s,%s", tbItemData.genre, tbItemData.detail, tbItemData.particular, tbItemData.level)
        if szKeyItem == szKeyData then
            return nId -- Trả về ID của vật phẩm nếu tìm thấy
        end
    end

    return nil -- Không tìm thấy vật phẩm
end

-- Load danh sách vật phẩm khi khởi tạo
ITEM_CU = LoadItemData(szOldItemPath)
ITEM_MOI = LoadItemData(szNewItemPath)

-- Hiển thị hộp thoại khi người chơi tương tác với NPC
function tbEvent:OnDialog()
    local szMsg = "<color=pink>Đổi Ngoại Trang: Vui lòng đặt vào một vật phẩm cũ để đổi lấy vật phẩm mới tương ứng.<color>"
    local tbOpt = {
        {"<color=yellow>Bắt đầu đổi Ngoại Trang<color>", self.StartExchange, self},
        {"Kết thúc đối thoại."},
    }
    Dialog:Say(szMsg, tbOpt)
end

-- Bắt đầu quá trình đổi vật phẩm
function tbEvent:StartExchange()
    local szMsg = "<color=gold>Hãy đặt vật phẩm cũ vào ô để đổi lấy vật phẩm mới tương ứng.<color>\nLưu ý: Chỉ đặt một vật phẩm cũ!"
    Dialog:OpenGift(szMsg, nil, {self.ProcessExchange, self})
end

-- Xử lý logic đổi vật phẩm
function tbEvent:ProcessExchange(tbItemObj)
    if not tbItemObj or #tbItemObj ~= 1 then
        Dialog:Say("Bạn chỉ được đặt một vật phẩm cũ để đổi!")
        return 0
    end

    local pItem = tbItemObj[1][1]
    local nIndex = CheckItem(pItem, ITEM_CU)

    if not nIndex then
        Dialog:Say("Vật phẩm của bạn không hợp lệ hoặc không được hỗ trợ!")
        return 0
    end

    local tbNewItem = ITEM_MOI[nIndex]
    if not tbNewItem then
        Dialog:Say("Không tìm thấy vật phẩm mới tương ứng!")
        return 0
    end

    -- Xóa vật phẩm cũ
    if me.DelItem(pItem) ~= 1 then
        Dialog:Say("Không thể xóa vật phẩm cũ. Vui lòng thử lại!")
        return 0
    end

    -- Thêm vật phẩm mới
    local pNewItem = me.AddItem(tbNewItem.genre, tbNewItem.detail, tbNewItem.particular, tbNewItem.level)
    if pNewItem then
        pNewItem.Bind(1) -- Gắn vật phẩm với tài khoản
        local szMsg = string.format("<color=yellow>Người chơi <color=cyan>%s<color> đã đổi thành công <color=green>%s<color>!<color>", me.szName, pNewItem.szName)
        Dialog:SendBlackBoardMsg(me, "Chúc mừng bạn đã đổi thành công: " .. pNewItem.szName)
        KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
        KDialog.MsgToGlobal(szMsg)
    else
        Dialog:Say("Có lỗi xảy ra khi thêm vật phẩm mới. Vui lòng thử lại!")
        return 0
    end
end