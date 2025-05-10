local tbActive_PhuDoCoThanh_TanThu = {};
SpecialEvent.Active_PhuDoCoThanh_TanThu = tbActive_PhuDoCoThanh_TanThu;

tbActive_PhuDoCoThanh_TanThu.TaskGroup_Time = 4000;	--Task Thời Gian
tbActive_PhuDoCoThanh_TanThu.TaskID_Time = 1;			--Task Thời Gian

tbActive_PhuDoCoThanh_TanThu.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbActive_PhuDoCoThanh_TanThu.TaskIDTT = 1;


tbActive_PhuDoCoThanh_TanThu.DK_Level = 165;

tbActive_PhuDoCoThanh_TanThu.nMapId = 2109;
tbActive_PhuDoCoThanh_TanThu.MapPos_Random =
{
{tbActive_PhuDoCoThanh_TanThu.nMapId , 1833,3443},
{tbActive_PhuDoCoThanh_TanThu.nMapId , 1766,3340},
{tbActive_PhuDoCoThanh_TanThu.nMapId , 1615,3225},
{tbActive_PhuDoCoThanh_TanThu.nMapId , 1873,3664},
{tbActive_PhuDoCoThanh_TanThu.nMapId , 1924,3202},
};


function tbActive_PhuDoCoThanh_TanThu:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
	local szMsg = [[
<color=red>Phù Đồ Cổ Thành_Tân Thủ<color>
<color=yellow>Giới hạn/Yêu cầu:<color>
<color=green>- Đã dùng Code Tân thủ
- Cấp Danh vọng Sát Thần dưới 7
- Đã có môn phái<color>
<color=yellow>Thời gian hoạt động<color>
<color=green>- 1 ngày có: 120 phút trong bản đồ<color>
]];

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

table.insert(tbOpt,{"<color=yellow>Ta muốn đến đó!<color>", self.Enter_KDM, self});
table.insert(tbOpt,{"Ta suy nghĩ lại!", self.Cancel_KDM, self});
Dialog:Say(szMsg, tbOpt);
end

function tbActive_PhuDoCoThanh_TanThu:Enter_KDM()
	if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
		me.NewWorld(2000, 1626, 3187);
		Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return;
	end;

	if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
		return; 
	end

	if Boss.PhuDoCoThanh_TanThu:_CheckState() ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Rất tiếc, hệ thống Phù Đồ Cổ Thành_Tân Thủ tạm thời đóng cửa!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Rất tiếc, hệ thống Phù Đồ Cổ Thành_Tân Thủ tạm thời đóng cửa!<color>"));
		return;
	end
	
--GIỚI HẠN ACC CAO THỦ VÀO HĐ TÂN THỦ:
	local GioiHanCaoThu = 8;
	local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
		if nLevel_DanhVongST >= GioiHanCaoThu then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Tân thủ Cấp Danh vọng Sát Thần dưới 7, không thể tham gia!<color>"));
		Dialog:Say("<color=yellow>Hoạt động Tân thủ giới hạn Cấp Danh vọng Sát Thần từ 1-7,\n<color=red>Ngươi đang cấp: "..(nLevel_DanhVongST-1).."<color>, Không thể tham gia!<color>", {"Ta biết rồi"});
		return 0;
	end

	if me.nFaction <= 0 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"));
		return;
	end
	
	local nUseTime = me.GetTask(Boss.PhuDoCoThanh_TanThu.TASK_GROUP_ID, Boss.PhuDoCoThanh_TanThu.TASK_USE_TIME);
	
	-- 剩余时间为0
	if nUseTime >= Boss.PhuDoCoThanh_TanThu.MAX_DAILY_TIME then
		Dialog:Say("Thời gian cấp phép để vào Phù Đồ Cổ Thành_Tân Thủ hôm nay đã dùng hết, ngày mai hãy đến!", {"Ta biết rồi"});
		return;
	end
	
	me.SetFightState(1);
	--me.NewWorld(2109, 1605, 3153);--An toàn
	local nRand = MathRandom(1,#self.MapPos_Random)
	me.NewWorld(unpack(self.MapPos_Random[nRand]));
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn đã vào khu vực Hoạt động của Tân thủ, hãy cẩn thận nguy hiểm!<color>"));

end
