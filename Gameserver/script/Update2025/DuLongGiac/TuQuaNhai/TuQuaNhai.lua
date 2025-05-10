Require("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai_def.lua");

local tbActive_TuQuaNhai = {};
SpecialEvent.Active_TuQuaNhai = tbActive_TuQuaNhai;

-- Khi người chơi đối thoại
function tbActive_TuQuaNhai:OnDialog()
	local szMsg = "Bạn muốn vào Tư Quá Nhai? Đây là một thử thách lớn, hãy chuẩn bị kỹ trước khi vào!";
	local tbOpt = {
		{"Ta muốn vào Tư Quá Nhai", self.EnterMap, self},
		{"Để ta suy nghĩ thêm"},
	};
	Dialog:Say(szMsg, tbOpt);
end

-- Khi người chơi chọn vào map
function tbActive_TuQuaNhai:EnterMap()
	local nCurrentPoints = me.GetTask(Boss.TuQuaNhai.TASK_GROUP_ID, Boss.TuQuaNhai.TASK_USE_POINTS);
	if nCurrentPoints < Boss.TuQuaNhai.MIN_REQUIRED_POINTS then
		Dialog:Say("Bạn không đủ Điểm Tư Cách Anh Hùng để vào Tư Quá Nhai!");
		return;
	end

	-- Chọn vị trí ngẫu nhiên từ danh sách
	if #Boss.TuQuaNhai.tbRandomPositions == 0 then
		Dialog:Say("Hiện tại không có vị trí nào khả dụng trong Tư Quá Nhai!");
		return;
	end

	local nRandomIndex = MathRandom(1, #Boss.TuQuaNhai.tbRandomPositions);
	local tbRandomPos = Boss.TuQuaNhai.tbRandomPositions[nRandomIndex];

	-- Truyền tống người chơi đến vị trí ngẫu nhiên
	me.NewWorld(tbRandomPos[1], tbRandomPos[2], tbRandomPos[3]);
	Dialog:SendBlackBoardMsg(me, "Chúc bạn may mắn trong Tư Quá Nhai!");

	-- Đánh dấu người chơi đã vào map
	Boss.TuQuaNhai.tbPlayerList[me.nId] = true;

	-- Hiển thị giao diện điểm
	Boss.TuQuaNhai:UpdateHeroPointsUI(me, nCurrentPoints);
end