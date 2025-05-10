local tbThuongMoc_TraThanhSam = {};
SpecialEvent.ThuongMoc_TraThanhSam = tbThuongMoc_TraThanhSam;

tbThuongMoc_TraThanhSam.TaskGroup_Moc_TraThanhSam = 4202;		--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm
tbThuongMoc_TraThanhSam.TaskID_Moc_TraThanhSam = 1;			--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm

tbThuongMoc_TraThanhSam.TSKMoc_1 = 3;



function tbThuongMoc_TraThanhSam:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local CheckMoc_TraThanhSam = me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TaskID_Moc_TraThanhSam);	--Task Event Hè 2024  - Mốc SD Trà Thanh Sâm
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trà Thanh Sâm hiện tại: <color=cyan>"..CheckMoc_TraThanhSam.."<color>/500<color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if CheckMoc_TraThanhSam >= 500 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Trà Thanh Sâm 500<color>", self.MocTraThanhSam_500, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Trà Thanh Sâm 500<color>"});
	end


	Dialog:Say(szMsg, tbOpt);
end

--add Thưởng--
function tbThuongMoc_TraThanhSam:MocTraThanhSam_500()
if me.GetTask(self.TaskGroup_Moc_TraThanhSam,self.TSKMoc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddRepute(14,1,3000);--Điểm Danh Vọng Sát Thần PK
me.AddStackItem(18,1,3338,1,{bForceBind=1,},15);--Trăng Tròn
me.AddStackItem(18,1,3027,5,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn
me.AddStackItem(18,1,3036,1,{bForceBind=1,},2);--Thanh Uyển - Đồng hành 7 Kỹ năng



me.SetTask(self.TaskGroup_Moc_TraThanhSam,self.TSKMoc_1,1);
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc Trà Thanh Sâm 500<color> của Sự Kiện Hè 2024.\nGồm các phần thưởng:\n5000: Danh Vọng Sát Thần PK.\n15: Trăng Tròn Trung Thu.\n1: Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn.\n2: Thanh Uyển - Đồng hành 7 Kỹ năng<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

