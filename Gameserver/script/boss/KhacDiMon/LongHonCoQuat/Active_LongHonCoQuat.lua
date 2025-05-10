local tbActive_LongHonCoQuat = {};
SpecialEvent.Active_LongHonCoQuat = tbActive_LongHonCoQuat;

tbActive_LongHonCoQuat.TaskGroup_Time = 4000;	--Task Thời Gian
tbActive_LongHonCoQuat.TaskID_Time = 1;			--Task Thời Gian

tbActive_LongHonCoQuat.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbActive_LongHonCoQuat.TaskIDTT = 1;


tbActive_LongHonCoQuat.DK_Level = 165;

tbActive_LongHonCoQuat.nMapId = 2106;
tbActive_LongHonCoQuat.MapPos_Random =
{
{tbActive_LongHonCoQuat.nMapId , 1605,3154},
{tbActive_LongHonCoQuat.nMapId , 1685,3229},
{tbActive_LongHonCoQuat.nMapId , 1658,3155},
};


function tbActive_LongHonCoQuat:OnDialog()
DoScript("\\script\\Update_2023\\NapThoiGian.lua");
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = "<color=blue>Chúc mừng ngươi đã tìm thấy lối vào sau vạn năm phong ấn! Hãy cẩn thận vào kẻ tiểu bối kia, 1 thần thức hơi thở của ta cũng đủ biến ngươi thành tro bụi!<color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

table.insert(tbOpt,{"<color=yellow>Ta muốn vào trong!<color>", self.Enter_KDM, self});
Dialog:Say(szMsg, tbOpt);
end

function tbActive_LongHonCoQuat:Enter_KDM()
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

	if Boss.LongHonCoQuat:_CheckState() ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Rất tiếc, hệ thống Long Hồn Cổ Quật tạm thời đóng cửa!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Rất tiếc, hệ thống Long Hồn Cổ Quật tạm thời đóng cửa!<color>"));
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
	
	local nUseTime = me.GetTask(Boss.LongHonCoQuat.TASK_GROUP_ID, Boss.LongHonCoQuat.TASK_USE_TIME);
	
	-- 剩余时间为0
	if nUseTime >= Boss.LongHonCoQuat.MAX_DAILY_TIME then
		Dialog:Say("Thời gian cấp phép để vào Long Hồn Cổ Quật hôm nay đã dùng hết, ngày mai hãy đến!", {"Ta biết rồi"});
		return;
	end
	
	me.SetFightState(1);
	--me.NewWorld(2106, 1605, 3153);--An toàn
	local nRand = MathRandom(1,#self.MapPos_Random)
	me.NewWorld(unpack(self.MapPos_Random[nRand]));
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chúc mừng ngươi đã tìm thấy ta, hãy trổ hết bản lĩnh ra đây!<color>"));

end
