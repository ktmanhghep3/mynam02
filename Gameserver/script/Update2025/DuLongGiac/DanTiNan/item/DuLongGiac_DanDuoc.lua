-- Định nghĩa lớp vật phẩm Du Long Giác
local tbItem = Item:GetClass("DuLongGiac_DanDuoc")

-- Định nghĩa ID của NPC Dân tị nạn và Map ID
local nNpcId = 8180 -- ID của NPC Dân tị nạn
local nMapId = 2105 -- ID của bản đồ

-- Định nghĩa ID của vật phẩm Du Long Giác
local nItemId = {18, 1, 4038, 1} -- ID của vật phẩm Du Long Giác: (18,1,4038,1)

-- Tạo bảng xác suất tbRate từ 0 đến 10
-- 0-5: dễ ra nhất
-- 6-10: cực kỳ khó ra
local tbRate = {}
for i = 0, 10 do
    if i <= 5 then
        tbRate[i] = 95 -- Xác suất rất cao cho 0-5
    else
        tbRate[i] = 5 -- Xác suất rất thấp cho 6-10
    end
end

-- Hàm kiểm tra xem nhân vật có ở gần NPC Dân tị nạn trong bản đồ hợp lệ hay không
function tbItem:CheckProximity()
    local nCurMapId, nX, nY = me.GetWorldPos() -- Lấy vị trí hiện tại của nhân vật
    if nCurMapId ~= nMapId then
        return false, "Bạn không ở trong bản đồ hợp lệ." -- Kiểm tra xem nhân vật có ở đúng bản đồ không
    end

    -- Lấy danh sách các NPC xung quanh nhân vật trong bán kính 50 đơn vị
    local tbNpcList = KNpc.GetAroundNpcList(me, 15)
    for _, pNpc in ipairs(tbNpcList) do
        if pNpc.nTemplateId == nNpcId then
            return true -- Nếu tìm thấy NPC Dân tị nạn, trả về true
        end
    end
    return false, "Bạn phải ở gần Dân Tị Nạn mới có thể sử dụng vật phẩm này!" -- Nếu không tìm thấy NPC
end

-- Hàm sử dụng vật phẩm
function tbItem:OnUse()
    -- Kiểm tra vị trí
    local bProximity, szMsg = self:CheckProximity()
    if not bProximity then
        me.Msg(szMsg) -- Hiển thị thông báo nếu không ở gần NPC
        return 0 -- Không tiêu tốn vật phẩm
    end

    -- Xác định số lượng Du Long Giác sẽ nhận được
    local nTotalRate = 0
    local tbCumulativeRate = {}

    -- Tính xác suất cộng dồn
    for nQuantity, nRate in pairs(tbRate) do
        nTotalRate = nTotalRate + nRate
        tbCumulativeRate[nQuantity] = nTotalRate
    end

    -- Lấy giá trị ngẫu nhiên và xác định số lượng dựa trên xác suất
    local nRandom = MathRandom(1, nTotalRate)
    local nSelectedQuantity = 0

    for nQuantity, nCumulativeRate in pairs(tbCumulativeRate) do
        if nRandom <= nCumulativeRate then
            nSelectedQuantity = nQuantity
            break
        end
    end

    -- Thưởng vật phẩm cho người chơi
    if nSelectedQuantity > 0 then
        me.AddStackItem(nItemId[1], nItemId[2], nItemId[3], nItemId[4], nil, nSelectedQuantity)
        me.Msg(string.format("Bạn đã nhận được %d Du Long Giác!", nSelectedQuantity)) -- Hiển thị thông báo số lượng nhận được
    else
        me.Msg("Bạn không nhận được gì từ vật phẩm này.") -- Thông báo nếu không nhận được gì
    end

    return 1 -- Tiêu tốn vật phẩm
end