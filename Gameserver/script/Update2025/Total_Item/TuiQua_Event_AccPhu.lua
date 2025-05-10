local tbTuiQuaEvent_AccPhu = Item:GetClass("Box_QuaEventAccPhu");

tbTuiQuaEvent_AccPhu.TaskGroup = 4524;			--Check Quà Event Cho Acc Phụ
tbTuiQuaEvent_AccPhu.TaskID = 10;				--Check Quà Event Cho Acc Phụ
tbTuiQuaEvent_AccPhu.Item_Ruong = {18,1,4036,1};

function tbTuiQuaEvent_AccPhu:OnUse()
DoScript("\\script\\Update2025\\Total_Item\\TuiQua_Event_AccPhu.lua");

local szMsg = "<color=red>✬ Lưu ý:\n<color>"..
"<color=cyan>✪ Nhận phần thưởng đã đăng ký trước đó.\n"..
"<color=cyan>✪ Phần thưởng chỉ nhận đúng Tài khoản đã đăng ký.\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	table.insert(tbOpt,{"<bclr=100,50,1000><color=cyan>Nhận Phần Thưởng", self.NhanPhanThuong, self});
	table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
	Dialog:Say(szMsg, tbOpt);
end

function tbTuiQuaEvent_AccPhu:NhanPhanThuong()
local CheckNhan = me.GetTask(self.TaskGroup,self.TaskID);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


--Phần Thưởng--
if (me.szAccount == "neverjungle") then
--Phần Thưởng--
me.AddItem(2,1,4099,10,2,16);--Lv.8-Hiệu ứng Mộc Thủ Nội 10

me.AddItem(4,9,3013,10,2,16);--Nón Cấp 2- Nữ - Mộc
me.AddItem(4,3,3013,10,3,16);--Áo Cấp 2- Nữ - Mộc
me.AddItem(4,8,3013,10,1,16);--Lưng Cấp 2- Nữ - Mộc
me.AddItem(4,10,3013,10,5,16);--Tay Cấp 2- Nữ - Mộc
me.AddItem(4,7,3013,10,4,16);--Giày Cấp 2- Nữ - Mộc
me.AddItem(4,5,3013,10,3,16);--Liên Cấp 2- Nữ - Mộc
me.AddItem(4,4,3013,10,1,16);--Nhẫn Cấp 2- Nữ - Mộc
me.AddItem(4,11,3013,10,5,16);--Bội Cấp 2- Nữ - Mộc
me.AddItem(4,6,3013,10,4,16);--Phù Cấp 2- Nữ - Mộc

me.AddItem(4,9,3015,10,3,16);--Nón Cấp 2- Nữ - Thủy
me.AddItem(4,3,3015,10,1,16);--Áo Cấp 2- Nữ - Thủy
me.AddItem(4,8,3015,10,5,16);--Lưng Cấp 2- Nữ - Thủy
me.AddItem(4,10,3015,10,4,16);--Tay Cấp 2- Nữ - Thủy
me.AddItem(4,7,3015,10,2,16);--Giày Cấp 2- Nữ - Thủy
me.AddItem(4,5,3015,10,1,16);--Liên Cấp 2- Nữ - Thủy
me.AddItem(4,4,3015,10,5,16);--Nhẫn Cấp 2- Nữ - Thủy
me.AddItem(4,11,3015,10,4,16);--Bội Cấp 2- Nữ - Thủy
me.AddItem(4,6,3015,10,2,16);--Phù Cấp 2- Nữ - Thủy

Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup,self.TaskID,1);--Task Tính lần đã nhận
local szMsg = "<bclr=0,0,200><color=white>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thành công Quà Tri Ân Đồng Hành !!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
end
