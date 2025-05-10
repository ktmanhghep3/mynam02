local tbItem = Item:GetClass("DuLongGiac_RuongTieuDao")

local nItemId = {18, 1, 4041, 11}

local tbRate = {
    [0] = 30, -- 30% chance of getting 0 items
    [1] = 25, -- 25% chance of getting 1 item
    [2] = 15, -- 15% chance of getting 2 items
    [3] = 10, -- 10% chance of getting 3 items
    [4] = 7,  -- 7% chance of getting 4 items
    [5] = 5,  -- 5% chance of getting 5 items
    [6] = 4,  -- 4% chance of getting 6 items
    [7] = 2,  -- 2% chance of getting 7 items
    [8] = 1,  -- 1% chance of getting 8 items
    [9] = 0.5,-- 0.5% chance of getting 9 items
    [10] = 0.5-- 0.5% chance of getting 10 items
}

-- Function to open the item
function tbItem:OnUse()
    local nTotalRate = 0
    local tbCumulativeRate = {}

    -- Calculate cumulative probabilities
    for nQuantity, nRate in pairs(tbRate) do
        nTotalRate = nTotalRate + nRate
        tbCumulativeRate[nQuantity] = nTotalRate
    end

    -- Generate a random number to determine the quantity
    local nRandom = MathRandom(1, nTotalRate)
    local nSelectedQuantity = 0

    for nQuantity, nCumulativeRate in pairs(tbCumulativeRate) do
        if nRandom <= nCumulativeRate then
            nSelectedQuantity = nQuantity
            break
        end
    end

    -- If the quantity is greater than 0, award the items
    if nSelectedQuantity > 0 then
        me.AddStackItem(nItemId[1], nItemId[2], nItemId[3], nItemId[4], nil, nSelectedQuantity)
        me.Msg(string.format("Bạn đã nhận được %d Tiêu Dao Đan Dược!", nSelectedQuantity))
    else
        me.Msg("Bạn không nhận được gì từ rương này!")
    end

    return 1 -- Consume the item
end