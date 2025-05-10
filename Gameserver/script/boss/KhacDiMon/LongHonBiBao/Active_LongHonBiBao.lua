local tbActive_LongHonBiBao = {};
SpecialEvent.Active_LongHonBiBao = tbActive_LongHonBiBao;

tbActive_LongHonBiBao.TaskGroup_Time = 4000;	--Task Thời Gian
tbActive_LongHonBiBao.TaskID_Time = 1;			--Task Thời Gian

tbActive_LongHonBiBao.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbActive_LongHonBiBao.TaskIDTT = 1;


tbActive_LongHonBiBao.DK_Level = 165;

tbActive_LongHonBiBao.nMapId = 2107;
tbActive_LongHonBiBao.MapPos_Random =
{
{tbActive_LongHonBiBao.nMapId , 1628,3334},
{tbActive_LongHonBiBao.nMapId , 1679,3723},
{tbActive_LongHonBiBao.nMapId , 1806,3784},
{tbActive_LongHonBiBao.nMapId , 1999,3504},
};


function tbActive_LongHonBiBao:OnDialog()
DoScript("\\script\\Update_2023\\NapThoiGian.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = "<color=blue>Kẻ hữu duyên, ngươi có vận khí may mắn tìm thấy cửa vào Bí Bảo Long Hồn, vận khí phát tài hay bị chính những kẻ sĩ giang hồ ám toán, tùy vào vận số của ngươi! Ngươi có bản lĩnh tiến vào không?<color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

table.insert(tbOpt,{"<color=yellow>Ta muốn đến Bí Bảo!<color>", self.EnterGoMap, self});
Dialog:Say(szMsg, tbOpt);
end

function tbActive_LongHonBiBao:EnterGoMap()
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

	if Boss.LongHonBiBao:_CheckState() ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Rất tiếc, hệ thống Long Hồn Bí Bảo tạm thời đóng cửa!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Rất tiếc, hệ thống Long Hồn Bí Bảo tạm thời đóng cửa!<color>"));
		return;
	end
		

	if me.nLevel < self.DK_Level then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Đẳng cấp này mà ngươi muốn đi sao! Đạt "..self.DK_Level.." trở lên rồi gặp ta!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Đẳng cấp này mà ngươi muốn đi sao! Đạt "..self.DK_Level.." trở lên rồi gặp ta!<color>"));
		return;
	end
	

	if me.nFaction <= 0 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"));
		return;
	end
	
	local nUseTime = me.GetTask(Boss.LongHonBiBao.TASK_GROUP_ID, Boss.LongHonBiBao.TASK_USE_TIME);
	
	-- 剩余时间为0
	if nUseTime >= Boss.LongHonBiBao.MAX_DAILY_TIME then
		Dialog:Say("Thời gian cấp phép để vào Long Hồn Bí Bảo hôm nay đã dùng hết, ngày mai hãy đến!", {"Ta biết rồi"});
		return;
	end
	
	me.SetFightState(1);
	--me.NewWorld(2106, 1605, 3153);--An toàn
	local nRand = MathRandom(1,#self.MapPos_Random)
	me.NewWorld(unpack(self.MapPos_Random[nRand]));
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Hãy nhanh chóng tìm thấy Bảo vật trước khi bị tiêu diệt!<color>"));

end
