local tbDiem_Doi_Ruong = {};
SpecialEvent.Diem_Doi_Ruong = tbDiem_Doi_Ruong;

tbDiem_Doi_Ruong.TaskGroup_MoRuong_VoCuc = 4120;	--Task Điếm số lần mở Rương Vô Cực
tbDiem_Doi_Ruong.TaskID_MoRuong_VoCuc = 1;
tbDiem_Doi_Ruong.DiemTuyetMy = 100;

function tbDiem_Doi_Ruong:OnDialog()
local nDiemTuyetMy = me.GetTask(self.TaskGroup_MoRuong_VoCuc, self.TaskID_MoRuong_VoCuc);
local nDiemTuyetMy2 = ((me.GetTask(self.TaskGroup_MoRuong_VoCuc, self.TaskID_MoRuong_VoCuc))/self.DiemTuyetMy)*5;
local szMsg = 
"<color=pink>Thông tin:<color>\n"..
"<color=yellow>Điểm Tuyệt Mỹ: <color=cyan>["..nDiemTuyetMy.."]<color>\n<color>"..
"<color=yellow>Số Rương có thể nhận: <color=cyan>["..nDiemTuyetMy2.."]<color>\n<color>"..
"<color=red>Mở rương thành công = 1 Điểm Tuyệt Mỹ\n<color>"..
"<color=red>100 Điểm Tuyệt Mỹ = 5 Rương Vô Cực\n<color>"

local tbOpt = 
{
	{"<color=gold>Đổi 100 Điểm Lấy 5 Rương", self.Ruong_5, self,};
	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbDiem_Doi_Ruong:Ruong_5()
local nDiemTuyetMy = me.GetTask(self.TaskGroup_MoRuong_VoCuc, self.TaskID_MoRuong_VoCuc);

if nDiemTuyetMy < self.DiemTuyetMy then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Tuyệt Mỹ dưới "..self.DiemTuyetMy.." Điểm, Không thể đổi Rương!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Tuyệt Mỹ dưới "..self.DiemTuyetMy.." Điểm, Không thể đổi Rương!<color>"));
return
end

--Phần thưởng--
me.AddStackItem(18,1,3100,1,{bForceBind=1,},5);	--Rương Vô Cực-Sơ Thành

me.SetTask(self.TaskGroup_MoRuong_VoCuc, self.TaskID_MoRuong_VoCuc, nDiemTuyetMy - self.DiemTuyetMy);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Nhận được <color=cyan>5<color> Rương Vô Cực-Sơ Thành, từ tích lũy mở rương trước đó!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
