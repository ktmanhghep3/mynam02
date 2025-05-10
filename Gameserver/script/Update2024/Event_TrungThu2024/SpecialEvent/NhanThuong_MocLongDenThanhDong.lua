local tbNhanThuong_MocLongDenThanhDong = {};
SpecialEvent.NhanThuong_MocLongDenThanhDong = tbNhanThuong_MocLongDenThanhDong;

tbNhanThuong_MocLongDenThanhDong.TaskGroup_Moc_LongDenThanhDong = 4231;		--Mốc Lồng Đèn Thanh Đồng
tbNhanThuong_MocLongDenThanhDong.TaskID_Moc_LongDenThanhDong = 1;				--Mốc Lồng Đèn Thanh Đồng

tbNhanThuong_MocLongDenThanhDong.TSKMoc_1 = 2;



function tbNhanThuong_MocLongDenThanhDong:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local Moc_LongDenThanhDong = me.GetTask(self.TaskGroup_Moc_LongDenThanhDong,self.TaskID_Moc_LongDenThanhDong);

	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Lồng Đèn Thanh Đồng hiện tại: <color=cyan>"..Moc_LongDenThanhDong.."<color>/200<color>";
	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if Moc_LongDenThanhDong >= 200 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Lồng Đèn Thanh Đồng 200<color>", self.Moc_200, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Lồng Đèn Thanh Đồng 200<color>"});
	end


	Dialog:Say(szMsg, tbOpt);
end

--add Thưởng--
function tbNhanThuong_MocLongDenThanhDong:Moc_200()
if me.GetTask(self.TaskGroup_Moc_LongDenThanhDong,self.TSKMoc_1) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3001,1,{bForceBind=1,},3000);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3027,15,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn
me.AddStackItem(18,1,3036,1,{bForceBind=1,},2);--Thanh Uyển - Đồng hành 7 Kỹ năng


me.SetTask(self.TaskGroup_Moc_LongDenThanhDong,self.TSKMoc_1,1);
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc Lồng Đèn Thanh Đồng 200<color> của Sự Kiện Trung Thu 2024.\nGồm các phần thưởng:\n2000: Danh Vọng Sát Thần PK.\n15: Trăng Tròn Trung Thu.\n1: Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn.\n2: Thanh Uyển - Đồng hành 7 Kỹ năng<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

