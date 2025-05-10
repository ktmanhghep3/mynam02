local tbNpc = Npc:GetClass("NpcDuLong_DoiDap01")

-- Đường dẫn file câu hỏi
tbNpc.QUESTION_CONFIG = "\\script\\Update2025\\DuLongGiac\\TanThuyHoang\\Npc\\CauHoi_DapAn.txt"

-- Danh sách câu hỏi
tbNpc.tbQuestions = {}
tbNpc.tbPlayerLastAnswerTime = {} -- Lưu thời gian trả lời cuối cùng của từng người chơi

-- ID của item Trung Nghĩa Đảm
tbNpc.REQUIRED_ITEM = {18, 1, 4041, 12}

-- Thời gian chờ giữa mỗi câu hỏi (tính bằng giây)
tbNpc.TIME_LIMIT = 10

-- Hàm load câu hỏi từ file
function tbNpc:LoadQuestions()
    self.tbQuestions = {}
    local tbFile = Lib:LoadTabFile(self.QUESTION_CONFIG)
    if not tbFile then
        print("Không thể tải file câu hỏi: " .. self.QUESTION_CONFIG)
        return
    end

    for nRowIndex, tbRow in ipairs(tbFile) do
        local szQuestion = tbRow.Question
        local szAnswer1 = tbRow.Answer1
        local szAnswer2 = tbRow.Answer2
        local szAnswer3 = tbRow.Answer3
        local nCorrect = tonumber(tbRow.Result)

        -- Kiểm tra tính hợp lệ của dữ liệu
        if szQuestion and szAnswer1 and szAnswer2 and szAnswer3 and nCorrect then
            local nId = #self.tbQuestions + 1
            self.tbQuestions[nId] = {
                szQuestion = szQuestion,
                tbAnswers = {szAnswer1, szAnswer2, szAnswer3},
                nCorrect = nCorrect,
            }
        else
            print(string.format("Dữ liệu không hợp lệ tại dòng %d", nRowIndex))
        end
    end
end

-- Hàm kiểm tra item yêu cầu
function tbNpc:HasRequiredItem()
    local nCount = me.GetItemCountInBags(unpack(self.REQUIRED_ITEM))
    return nCount > 0
end

-- Hàm trừ item yêu cầu
function tbNpc:ConsumeRequiredItem()
    me.ConsumeItemInBags(1, unpack(self.REQUIRED_ITEM))
end

-- Hàm kiểm tra thời gian chờ
function tbNpc:CanAnswerQuestion()
    local nCurrentTime = GetTime()
    local nLastTime = self.tbPlayerLastAnswerTime[me.nId] or 0
    return (nCurrentTime - nLastTime) >= self.TIME_LIMIT
end

-- Hàm cập nhật thời gian trả lời
function tbNpc:UpdateLastAnswerTime()
    self.tbPlayerLastAnswerTime[me.nId] = GetTime()
end

-- Hàm hiển thị lời thoại khởi đầu
function tbNpc:OnDialog()
    -- Kiểm tra người chơi có item yêu cầu không
    if not self:HasRequiredItem() then
        Dialog:Say("Ngươi cần có <color=yellow>1 Trung Nghĩa Đảm<color> để đối chất với ta!")
        return
    end

    -- Kiểm tra thời gian chờ
    if not self:CanAnswerQuestion() then
        local nRemainingTime = self.TIME_LIMIT - (GetTime() - (self.tbPlayerLastAnswerTime[me.nId] or 0))
        Dialog:Say(string.format("Ngươi cần chờ thêm <color=yellow>%d giây<color> trước khi đối chất tiếp theo!", nRemainingTime))
        return
    end

    -- Hiển thị lời thoại khởi đầu
    Dialog:Say("Ngươi đã sẵn sàng đối chất với ta chưa?", {
        {"Ta đã sẵn sàng!", self.ShowQuestion, self}, -- Gọi hàm hiển thị câu hỏi
        {"Để ta suy nghĩ thêm."},
    })
end

-- Hàm hiển thị câu hỏi
function tbNpc:ShowQuestion()
    if #self.tbQuestions == 0 then
        self:LoadQuestions()
    end

    if #self.tbQuestions == 0 then
        Dialog:Say("Hiện tại không có câu hỏi nào khả dụng. Vui lòng thử lại sau!")
        return
    end

    -- Chọn ngẫu nhiên một câu hỏi
    local nRandomIndex = MathRandom(1, #self.tbQuestions)
    local tbQuestion = self.tbQuestions[nRandomIndex]

    -- Trừ đi 1 Trung Nghĩa Đảm ngay khi hiển thị câu hỏi
    self:ConsumeRequiredItem()

    -- Ngẫu nhiên hóa thứ tự đáp án
    local tbOptions = {
        {"<color=red>" .. tbQuestion.tbAnswers[1] .. "<color>", self.CheckAnswer, self, nRandomIndex, 1},
        {"<color=green>" .. tbQuestion.tbAnswers[2] .. "<color>", self.CheckAnswer, self, nRandomIndex, 2},
        {"<color=blue>" .. tbQuestion.tbAnswers[3] .. "<color>", self.CheckAnswer, self, nRandomIndex, 3},
    }
    tbOptions = self:ShuffleOptions(tbOptions)

    -- Hiển thị câu hỏi
    local szDisplay = string.format("Câu hỏi: %s", tbQuestion.szQuestion)
    Dialog:Say(szDisplay, tbOptions)
end

-- Hàm kiểm tra đáp án
function tbNpc:CheckAnswer(nQuestionIndex, nAnswerIndex)
    local tbQuestion = self.tbQuestions[nQuestionIndex]
    if not tbQuestion then
        Dialog:Say("Không tìm thấy câu hỏi hiện tại!")
        return
    end

    -- Cập nhật thời gian trả lời
    self:UpdateLastAnswerTime()

    if nAnswerIndex == tbQuestion.nCorrect then
        -- Trả lời đúng
        local nRandQuantity = MathRandom(0, 20) -- Số lượng ngẫu nhiên từ 0 đến 20
        if nRandQuantity > 0 then
            me.AddStackItem(18, 1, 4038, 1, nil, nRandQuantity) -- Thưởng vật phẩm
        end

        -- Hiển thị thông báo trên màn hình
        local szMsg = string.format(
            "<color=yellow>%s Trả lời đúng câu hỏi từ Thiên Cổ Tần Vương Tần Thủy Hoàng\n<color=violet>❉ Nhận được %d Du Long Giác!<color><color>",
            me.szName, nRandQuantity
        )
        KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)

        -- Hiển thị hộp thoại thông báo với màu sặc sỡ
        local szCorrectMessage = string.format(
            "<color=yellow>Chúc mừng!<color>\n<color=green>Ngươi đã trả lời đúng!<color>\n<color=cyan>Phần thưởng ngẫu nhiên:<color>\n<color=violet>%d Du Long Giác<color>!",
            nRandQuantity
        )
        Dialog:Say(szCorrectMessage)
    else
        -- Trả lời sai
        local szCorrectAnswer = tbQuestion.tbAnswers[tbQuestion.nCorrect]
        Dialog:Say(string.format("Rất tiếc! Ngươi đã trả lời sai.\n\nĐáp án đúng là: %s", szCorrectAnswer))
    end
end

-- Hàm ngẫu nhiên hóa thứ tự đáp án
function tbNpc:ShuffleOptions(tbOptions)
    for i = #tbOptions, 2, -1 do
        local j = MathRandom(i)
        tbOptions[i], tbOptions[j] = tbOptions[j], tbOptions[i]
    end
    return tbOptions
end