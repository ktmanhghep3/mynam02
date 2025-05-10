local tbItem = Item:GetClass("ThuongPhongDan_5000");

tbItem.Item_Ruong = {18,1,4048,4}; --Du Long Giác
tbItem.TaskGroup_DuLong = 4528;
tbItem.TaskID_DuLong = 1;
tbItem.SoLuong = 5000;

function tbItem:OnUse()

	me.AddStackItem(18,1,4010,1,{bForceBind=1,},self.SoLuong);		--item khoá
    Task:DelItem(me, self.Item_Ruong, 1);
    -- Thông báo
    me.Msg("Thương Phong Dẫn nhận được: "..self.SoLuong.." cái!");
end