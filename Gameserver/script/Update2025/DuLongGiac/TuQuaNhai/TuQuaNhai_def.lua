local tbTuQuaNhai = {};
Boss.TuQuaNhai = tbTuQuaNhai;

-- Cấu hình Task Tư Cách Anh Hùng
tbTuQuaNhai.TASK_GROUP_ID = 4537;		-- TaskGroup Tư Cách Anh Hùng
tbTuQuaNhai.TASK_USE_POINTS = 1;		-- TaskID Điểm Tư Cách Anh Hùng

-- Cấu hình tiêu hao điểm và kiểm tra
tbTuQuaNhai.MIN_REQUIRED_POINTS = 1;	-- Điểm Tư Cách Anh Hùng tối thiểu để tồn tại trong bản đồ
tbTuQuaNhai.POINTS_CONSUMED_INTERVAL = 2; -- Số giây tiêu hao 1 điểm

-- Vị trí truyền tống khi hết điểm
tbTuQuaNhai.REMOVE_MAP_ID = 775;		-- MapID truyền tống khi hết điểm
tbTuQuaNhai.REMOVE_POS_X = 1489;		-- Toạ độ X truyền tống
tbTuQuaNhai.REMOVE_POS_Y = 3385;		-- Toạ độ Y truyền tống

-- MapId chính của Tư Quá Nhai
tbTuQuaNhai.MAP_ID = 2115;				-- MapId của Tư Quá Nhai

-- Đường dẫn file danh sách vị trí ngẫu nhiên
tbTuQuaNhai.szListMapPath = "\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\map\\ListMap.txt"; -- Đường dẫn file ListMap

-- Danh sách các vị trí ngẫu nhiên (sẽ được load từ file)
tbTuQuaNhai.tbRandomPositions = {}; -- Danh sách các vị trí ngẫu nhiên

-- Danh sách người chơi trong bản đồ
tbTuQuaNhai.tbPlayerList = {}; 		

-- Hàm load danh sách vị trí từ file
function tbTuQuaNhai:LoadRandomPositions()
	local tbPositions = {};
	local tbFile = Lib:LoadTabFile(self.szListMapPath);

	if not tbFile then
		print("Không thể tải file: " .. self.szListMapPath);
		return tbPositions;
	end

	for _, tbRow in ipairs(tbFile) do
		local nMapId = tonumber(tbRow.MapId);
		local nX = tonumber(tbRow.ToaDoX);
		local nY = tonumber(tbRow.ToaDoY);

		if nMapId and nX and nY then
			table.insert(tbPositions, {nMapId, nX, nY});
		end
	end

	return tbPositions;
end

-- Hàm khởi tạo hệ thống
function tbTuQuaNhai:Init()
	self.tbRandomPositions = self:LoadRandomPositions(); -- Load danh sách vị trí ngẫu nhiên
end