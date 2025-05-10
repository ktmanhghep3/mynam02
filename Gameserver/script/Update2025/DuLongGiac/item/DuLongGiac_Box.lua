local tbItem = Item:GetClass("DuLongGiac_Box");

tbItem.Item_Ruong = {18,1,4038,1}; --Du Long Giác
tbItem.TaskGroup_DuLong = 4528;
tbItem.TaskID_DuLong = 1;
tbItem.Diem = 1;

function tbItem:OnUse()
    local nDiemDuLong = me.GetTask(self.TaskGroup_DuLong, self.TaskID_DuLong);
    -- Phần thưởng cố định --

    me.SetTask(self.TaskGroup_DuLong, self.TaskID_DuLong, nDiemDuLong + self.Diem);
    Task:DelItem(me, self.Item_Ruong, 1);

    -- Thông báo
    local nTongSo = nDiemDuLong + self.Diem
    me.Msg("Điểm Du Long Giác nhận được: +"..self.Diem.."/" .. nTongSo.."");
    local tbRandomItem = Item:GetClass("randomitem");
    tbRandomItem:SureOnUse(262);
end