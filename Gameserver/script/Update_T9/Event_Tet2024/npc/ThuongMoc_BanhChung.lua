local tbThuongMoc_BanhChung = {};
SpecialEvent.ThuongMoc_BanhChung = tbThuongMoc_BanhChung;

tbThuongMoc_BanhChung.TaskGroup_GioiHan_Ngay = 4097;		--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbThuongMoc_BanhChung.TaskID_GioiHan_CaSuKien = 1;			--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện

tbThuongMoc_BanhChung.TSKMoc_1 = 2;



function tbThuongMoc_BanhChung:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local CheckMoc_BanhChung = me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_CaSuKien);	--Điểm Tích lũy Phúc lợi
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Bánh Chưng hiện tại: <color=cyan>"..CheckMoc_BanhChung.."<color><color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if CheckMoc_BanhChung >= 500 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Bánh Chưng 500<color>", self.MocBanhChung_500, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Bánh Chưng 500<color>"});
	end


	Dialog:Say(szMsg, tbOpt);
end

--add Thưởng--
function tbThuongMoc_BanhChung:MocBanhChung_500()
if me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TSKMoc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddRepute(14,1,2500);
me.AddStackItem(18,1,3019,1,{bForceBind=1,},2);
me.AddStackItem(18,1,3338,1,{bForceBind=1,},10);

me.SetTask(self.TaskGroup_GioiHan_Ngay,self.TSKMoc_1,1);
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc Bánh Chưng 500<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

