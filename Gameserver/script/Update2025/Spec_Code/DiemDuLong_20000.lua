local tbItem = Item:GetClass("DiemDuLong_20000");

tbItem.Item_Ruong = {18,1,4048,3}; --Du Long Giác
tbItem.TaskGroup_DuLong = 4528;
tbItem.TaskID_DuLong = 1;
tbItem.Diem = 20000;

function tbItem:OnUse()
    local nDiemDuLong = me.GetTask(self.TaskGroup_DuLong, self.TaskID_DuLong);
    -- Phần thưởng cố định --

    me.SetTask(self.TaskGroup_DuLong, self.TaskID_DuLong, nDiemDuLong + self.Diem);
    Task:DelItem(me, self.Item_Ruong, 1);

    -- Thông báo
    local nTongSo = nDiemDuLong + self.Diem
    me.Msg("Điểm Du Long Giác nhận được: +"..self.Diem.."/" .. nTongSo.."");
end